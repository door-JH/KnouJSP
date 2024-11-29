<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
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
 	String pass = "";
 	String name = "";
 	String phone = "";
 	String address = "";
 	Class.forName("org.mariadb.jdbc.Driver");

 	//String url, user, pw;	

	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
 try {
	String sql = String.format("select * from MEMBER where id = %s", id);
	con = DriverManager.getConnection(url, user, pw);
	stmt = con.createStatement();
	rs = stmt.executeQuery(sql); 
 } catch(Exception e){
	 out.print(e);
 } finally {
	if(rs.next()){
		pass = rs.getString("pass"); 
		name = rs.getString("name");
		phone = rs.getString("phone"); 
		address = rs.getString("address");
	}	
 }
 %>
 <tr><th>아이디</th><td><input type="text" name="id"value="<%=id%>"></td></tr>
 <th>비밀번호</th><td><input type="text" name="pass"value="<%=pass%>"></td></tr>
 <th>이름</th><td><input type="text" name="name"value="<%=name%>"></td></tr>
 <th>전화번호</th><td><input type="text" name="phone"value="<%=phone%>"></td></tr>
 <th>주소</th><td><input type="text" name="address"value="<%=address%>"></td></tr>
 <tr><td colspan=2 align=center><input type="submit" value="확인">
 <input type="reset" value="취소"></td></tr>
 </table>
</body>
</html>