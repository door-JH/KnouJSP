<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<html>
<head>

<title>Insert title here</title>
</head>
<body>

<a href ="http://localhost:8080/TestServlet"> URL로 실행 </a>

<br/>
<br/>

<form action="TestServlet", method = "GET">
	<input type="text" name="name"/>
	<br/>
	<input type="submit" value="form의 method를 GET으로 지정하여 실행"/>
</form>

<br/>

<form action="TestServlet", method = "POST">
	<input type="text" name="name"/>
	<br/>
	<input type="submit" value="form의 method를 POST으로 지정하여 실행"/>
</form>

</body>
</html>