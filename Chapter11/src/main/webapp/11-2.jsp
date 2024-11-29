<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<html>
<head>
<title>11-2</title>
</head>
<body>
<%
	Class.forName("org.mariadb.jdbc.Driver");

	//String url, user, pw;	
	
	Connection con = null;
	
	try {
		con = DriverManager.getConnection(url,user,pw);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from MEMBER ");
		
		while(rs.next()){
			 out.print("<tr><td>" +rs.getInt("id")+"</td> ");
			 out.print("<td>"+ rs.getString("pass")+"</td> ");
			 out.print("<td>"+ rs.getString("name")+"</td> ");
			 out.print("<td>"+ rs.getString("phone")+"</td> ");
			 out.print("<td>"+ rs.getString("address") +"</td> </tr>");
			 out.print("<br/>");
		}
		
	} catch (Exception e){
		out.println(e);
	} finally {
		
		
	}
		
%>
</body>
</html>