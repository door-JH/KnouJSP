<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<html>
<head>
<title>11-3</title>
</head>
<body>
 <form action="11-4.jsp" method="post">
 	<table border=1>
 		<tr><th>아이디</th><td> <input type="text" name="id"> </td></tr>
 		<tr><th>비밀번호</th><td> <input type="password" name="pass"> </td></tr>
 		<tr><th>이름</th><td> <input type="text" name="name"> </td></tr>
 		<tr><th>전화번호</th><td> <input type="text" name="phone"> </td></tr>
 		<tr><th>주소</th><td> <input type="text" name="address"> </td></tr>
 		<tr><td colspan=2 align=center> <input type="submit" value="확인">
 		<input type="reset" value="취소"></td></tr>
 </table>
 </form>
</body>
</html>