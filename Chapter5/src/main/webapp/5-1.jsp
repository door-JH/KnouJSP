<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<html>
<head>
<title>5-1</title>
</head>
<body>

<ul>
<li> 클라이언트 주소: <%= request.getRemoteAddr() %></li>
<li> 요청 정보 길이: <%= request.getContentLength() %></li> 
<li> 인코딩: <%= request.getCharacterEncoding() %> </li>
<!-- JSP에는 이클립스가 제일 좋다며 왜 에러 뜨는데 잘 됨?  -->
<li> 문서 타입: <%= request.getContentType() %> </li>
<li> 프로토콜: <%= request.getProtocol() %></li>
<li> 전송방식: <%= request.getMethod() %></li>
<li> 요청 URI: <%= request.getRequestURI() %></li>

</ul>


</body>
</html>