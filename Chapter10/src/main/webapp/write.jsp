<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="boardData" class="com.board.BoardData" scope="request" />
<jsp:setProperty name ="boardData" property="*" />
<jsp:forward page="view.jsp" />
<html>
<head>
<title>write</title>
</head>
<body>
<jsp:setProperty property="title" param="title" name="boardData"/>
<jsp:setProperty property="writer" param="writer" name="boardData"/>
<jsp:setProperty property="text" param="text" name="boardData"/>
<jsp:setProperty property="pass" param="pass" name="boardData"/>

<%
	boardData.setTitle(request.getParameter("title"));
	boardData.setWriter(request.getParameter("writer"));
	boardData.setText(request.getParameter("text"));
	boardData.setPass(request.getParameter("pass"));
%>

</body>
</html>