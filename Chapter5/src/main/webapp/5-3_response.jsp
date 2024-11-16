<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import ="java.util.Enumeration, java.util.Map" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<title>5-3_response</title>
</head>
<body>
<b> getParamter(), getParameterValues() 메서드 사용</b>
<br/>
이름: <%= request.getParameter("name") %> <br/>
전화번호: <%= request.getParameter("phone") %> <br/>
성별: <%= request.getParameter("gender") %> <br/>
좋아하는 운동:
<%
String[] sports = request.getParameterValues("sports");
if(sports != null){
	for(int i = 0; i < sports.length; i++){
		out.print(sports[i] + " ");
	}
}
%>
가장 좋아하는 계절: <%= request.getParameter("season") %>


</body>
</html>