<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>14-4</title>
</head>
<body>

<c:set var="arr" value="<%= new int[] {1,2,3,4,5} %>" />
<table border = 1>
<tr><th>배열원소</th> <th>반복횟수</th> <th>배열첨자</th></tr>
<c:forEach var = "a" items = "${arr}" begin ="0" end = "4" varStatus="status">
	<tr> <td>${a}(${status.current})</td> <td>${status.count}</td> <td>${status.index}</td> </tr>
</c:forEach>
</table>
</body>
</html>