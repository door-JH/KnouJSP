<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<html>
<head>

<title>7-5</title>
</head>
<body>
<h3> ---------- 7-5.jsp ---------- </h3>
이름 : <%= request.getParameter("name") %>
<br/>
전화번호 : <%=request.getParameter("phone") %>
<h3> ---------- 7-5.jsp ---------- </h3>

</body>
</html>