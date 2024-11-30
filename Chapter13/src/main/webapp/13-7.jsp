<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "com.school.Score" %>
<html>
<head>
<title>13-7</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8"); 
	Score score = new Score();
	score.setName("doorJH");
	score.setKor(90);
	score.setEng(90);
	score.setMath(100);
%>
이름: <%=score.getName()%><br/>
국어: <%=score.getKor()%><br/>
영어: <%=score.getEng()%><br/>
수학: <%=score.getMath()%><br/>

</body>
</html>