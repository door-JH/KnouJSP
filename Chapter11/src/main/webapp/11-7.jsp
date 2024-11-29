<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<html>
<head>
<title>11-7</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	Class.forName("org.mariadb.jdbc.Driver");
	
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	//String url, user, pw;	
	
	Connection con = null;
	Statement stmt = null;
	int res = 0;
	
	try {
		String sql = String.format("update MEMBER set id = %s, pass = '%s', name = '%s', phone = '%s', address = '%s' where id = %s",
									id, pass, name, phone, address, id);
		con = DriverManager.getConnection(url, user, pw);
		stmt = con.createStatement();
		res = stmt.executeUpdate(sql);
	} catch(Exception e){
		out.print(e);
	} finally {
		if(res == 1) out.print("레코드 UPDATE 성공");
	}
%>
<h3><a href = "11-5.jsp">초기화면</a></h3>
</body>
</html>