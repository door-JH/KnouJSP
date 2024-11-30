<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="com.member.Member" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>14-1</title>
</head>
<body>

<c:set var="name1" value="Jimmy" />
name1 변수의 값 : ${name1} <br/>
<c:set var="name2"> doorJH </c:set>
name2 변수의 값 : ${name2} <br/>

<%
	Member m = new Member();
	m.setName("James");
	m.setAge(32);
	m.setAddress("Goyang-Si");
	request.setAttribute("m", m);
%>
	
<c:set var = "name3" value = "<%=m.getName() %>" scope ="request" />
name3 변수의 값 : ${name3} <br/>
<c:set var = "age" value="<%=m.getAge() %>" scope ="request" />
age 변수의 값: ${age} <br/>
<c:set var="address" value="${m.address}"/>
address 변수의 값:${address} <br/>
<c:set target="${m}" property="name" value="김희천"/>
자바 빈 객체 m의 name속성의 값: ${m.name}<br>
<c:set target="<%=m%>" property="name" value="홍길동"/>
자바 빈 객체 m의 name속성의 값: <%=m.getName()%><br/>
<c:set var="bestMember1" value="${m.name}"/>
<c:set var="bestMember2" value="#{m.name}"/>
bestMember1 변수의 값: ${bestMember1}<br/>
bestMember2 변수의 값: ${bestMember2}<br/>
<c:set target="${m}" property="name" value="김희천"/>
bestMember1 변수의 값: ${bestMember1}<br>
bestMember2 변수의 값: ${bestMember2}<br>
<c:set var="member" value="<%=m%>" />
${member.name} <br/>
${member.age} <br/>
${member.address} <br/>


</body>
</html>