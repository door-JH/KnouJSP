<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<html>
<head>
<title>11-5</title>
</head>
<body>
<%
	Class.forName("org.mariadb.jdbc.Driver");

	//String url, user, pw;	

	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try {
		con = DriverManager.getConnection(url, user, pw);
		stmt = con.createStatement();
		rs = stmt.executeQuery("select * from MEMBER");
	} catch(Exception e){
		out.print(e);
	} finally {
		out.print("<table>");
		 while(rs.next()){
			 
			 out.print("<tr><td>" + rs.getInt("id")+"</td>");
			 out.print("<td>" + rs.getString("pass")+ "</td>");
			 out.print("<td>" + rs.getString("name")+ "</td>");
			 out.print("<td>" + rs.getString("phone")+"</td>");
			 out.print("<td>" + rs.getString("address")+"</td>");
			 String update = String.format("<a href='11-6.jsp?id=%s'>수정</a>",rs.getInt("id"));
			 out.print("<td>" + update);
			 String delete = String.format("<a href='11-8.jsp?id=%s'>삭제</a>",rs.getInt("id"));
			 out.print(delete + "</td></tr>");
			 }
		 out.print("</table>");
	}
%>
<h3><a href ="11-3.jsp"> 레코드 입력하기</a></h3>
</body>
</html>