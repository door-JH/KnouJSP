<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>8-9</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals("admin") && pw.equals("pass")){
		Cookie ck = new Cookie("ID", "ADMIN");
		response.addCookie(ck);
		out.print("<h3> 로그인 성공 </h3> ");
	} else {
		out.print("<h3> 로그인 실패 </h3> ");
	}
%>
<h3> <a href ="8-10.jsp">로그인 확인</a></h3>
</body>
</html>