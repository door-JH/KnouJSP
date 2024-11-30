<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "com.member.db.*" %>
<html>
<head>
<title>11-5</title>
</head>
<body>
<table border = 1>
<%	

	ArrayList<MemberDTO> mbList = new MemberDAO().selectAll();
	
	for(MemberDTO mb : mbList){
		
		 out.print("<tr><td>" + mb.getId() + "</td>");
		 out.print("<td>" + mb.getPass() + "</td>");
		 out.print("<td>" + mb.getName() + "</td>");
		 out.print("<td>" + mb.getPhone() + "</td>");
		 out.print("<td>" + mb.getAddress() + "</td>");
		 String update = String.format("<a href='11-6.jsp?id=%s'>수정</a>",mb.getId());
		 out.print("<td>" + update);
		 String delete = String.format("<a href='11-8.jsp?id=%s'>삭제</a>",mb.getId());
		 out.print(delete + "</td></tr>");
		
		
	}
		
%>
</table>
<h3><a href ="11-3.jsp"> 레코드 입력하기</a></h3>
</body>
</html>