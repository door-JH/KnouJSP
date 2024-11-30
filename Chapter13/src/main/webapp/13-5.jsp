<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>13-5</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<form method="post">
이름: <input type="text"size=20 name="name"value="${param['name']}"><br>
나이: <input type="text"size=20 name="age"value="${param['age']}"><br>
주소: <input type="text"size=20 name="address" value="${param['address']}"><br>
 <input type="submit" value="확인">
 </form>
이름: ${param.name}<br/>
나이: ${param.age}<br/>
주소: ${param.address}
</form>
</body>
</html>