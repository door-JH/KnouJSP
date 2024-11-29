<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>9-4</title>
</head>
<body>
<h3> 세션 아이디: <%= session.getId() %></h3>
<%-- 여긴 왜 세미콜론 붙여야함? --%>
<% session.invalidate(); %>
세션이 삭제되었습니다. <br/>
<a href = "9-3.jsp">여기</a>를 클릭하면 세션조회가 가능합니다.
</body>
</html>