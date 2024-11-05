<%-- 지시어 --%>

<%-- [page] 페이지에 대한 정보를 지정 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%-- [include] 페이지에 대한 정보를 지정 --%>
<%@ include file = "/Chapter3.jsp" %>

<%-- [taglib] 페이지에서 사용할 태극 라이브러리 선언 --%>


<html>
<head>
<title>Insert title here</title>
</head>
<body>

<%-- 스크립트릿 --%>
<%
	String a = "Hello, JSP";
%>

<%-- 표현식 --%>
<%= a %>


<%-- 선언 --%>
<%!
	public String printing(String a)
	{	
		return a;
	}
%>

<%-- 액션태그 --%>
<jsp:include page="Chapter3.jsp"/>




</body>
</html>