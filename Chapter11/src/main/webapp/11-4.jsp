<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<html>
<head>
<title>11-4</title>
</head>
<body>
<%	
	Class.forName("org.mariadb.jdbc.Driver");
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	//String url, user, pw;	
	
	Connection con = null;
	Statement stmt = null;
	
	try{
		con = DriverManager.getConnection(url, user, pw);
		stmt = con.createStatement();	
	} catch(Exception e){
		out.print(e);
	} finally {
		String sql = String.format("insert into MEMBER values('%s', '%s', '%s', '%s', '%s')",
									id, pass, name, phone, address);
		int res = stmt.executeUpdate(sql);
		
		if(res == 1) out.print("레코드 insert 성공");
	 
	}
%>
</body>
</html>