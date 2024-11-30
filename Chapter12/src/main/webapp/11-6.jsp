<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "com.member.db.*" %>;
<html>
<head>
<title>11-6</title>
</head>
<body>
<form action="11-7.jsp" method="post">
 <table border =1>
 <%
 	request.setCharacterEncoding("UTF-8");
 	String id = request.getParameter("id");
 	MemberDTO mb = new MemberDAO().selectOne(Integer.parseInt(id));
 %>
 <tr><th>아이디</th><td><input type="text" name="id"value=" <%=mb.getId()%>"></td></tr>
 <th>비밀번호</th><td><input type="text" name="pass"value="<%=mb.getPass()%>"></td></tr>
 <th>이름</th><td><input type="text" name="name"value="<%=mb.getName()%>"></td></tr>
 <th>전화번호</th><td><input type="text" name="phone"value="<%=mb.getPhone()%>"></td></tr>
 <th>주소</th><td><input type="text" name="address"value="<%=mb.getAddress()%>"></td></tr>
 <tr><td colspan=2 align=center><input type="submit" value="확인">
 <input type="reset" value="취소"></td></tr>
 </table>
</body>
</html>