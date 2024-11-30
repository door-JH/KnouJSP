<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "com.school.Score" %>

 <jsp:useBean id="score" class= "com.school.Score" scope="page" />
 <jsp:setProperty name="score" property="name" value="Jimmy"/>
 <jsp:setProperty name="score" property="kor" value="90" />
 <jsp:setProperty name="score" property="eng" value="85" />
 <jsp:setProperty name="score" property="math" value="95" />

<html>
<head>
<title>13-8</title>
</head>
<body>
<h3>액션태그로 생성된 자바 빈 객체 </h3>
이름:${score.name} <br/>
국어:${score.kor} <br/>
영어:${score.eng} <br/>
수학:${score.math} <br/> <br/>

<h3>스크립트로 생성된 자바 빈 객체 </h3>

<% 
	request.setCharacterEncoding("UTF-8"); 
	Score score1 = new Score();
	score1.setName("doorJH");
	score1.setKor(90);
	score1.setEng(90);
	score1.setMath(100);
	request.setAttribute("score2", score1);
%>
이름:${score2.name}<br>
국어:${score2.kor}<br>
영어:${score2.eng}<br>
수학:${score2.math}


</body>
</html>