<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<html>
<head>
<title>11-8</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	Class.forName("org.mariadb.jdbc.Driver");
	
	String id = request.getParameter("id");
	String sql = String.format("delete from MEMBER where id= %s ",id);
	
	//String url, user, pw;	
	
	Connection con = null;
	Statement stmt = null;
	int res = 0;
	
	try {
		con = DriverManager.getConnection(url, user, pw);
		stmt = con.createStatement();
		res = stmt.executeUpdate(sql);	
	} catch(Exception e){
		out.print(e);
	} finally {
		
		if(res == 1){
			out.print("레코드 Delete 성공");
		} else {
			out.print("레코드 Delete 실패");
		}
		
	}
%>
<h3><a href = "11-5.jsp">초기화면</a></h3>
</body>
</html>