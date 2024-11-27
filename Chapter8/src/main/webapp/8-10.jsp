<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>8-10</title>
</head>
<body>
<%
	Cookie[] cks = request.getCookies();
	boolean isLogin = false;
	for(Cookie c : cks){
		if(c.getName().equals("ID") && c.getValue().equals("ADMIN")){
			isLogin = true;
			break;
		}
	}
	
	if(isLogin){
		out.print("<h3> 로그인 한 상태입니다. </h3>");
		out.print("<h3> <a href = 8-11.jsp> 로그아웃 </a> </h3> ");
	} else {
		out.print("<h3> 로그인 안한 상태입니다. </h3>");
		out.print("<h3> <a href = 8-8.jsp> 로그인 </a> </h3> ");
	}
%>

</body>
</html>