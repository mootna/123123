<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
	<h1> main </h1>
	<%=request.getParameter("name") %><br>
	<!-- 보내주는쪽.읽을 파리미터이름("이름") -->
	요청들어옴 name 이라는 이름을 찾음
	${param.name }
	<!-- $ : EL표기법 (자바코드는 아니지만 값 하나만 출력)-->
	
	
	
	<%
	String text = "";
	for(int a=0; a < 5; a++) {
		text += "<h1>안녕하세요</h1>"; }
	%>
		<% //자바열기 %> html 에서 자바코드를 사용할 때
	<%=text %> <!-- html에서 자바 값 하나 출력하기 / 변수 하나 -->
	jsp = java server page
	php = 
	asp = .net c#
	js = 
	
	<% for(int i = 0; i < 5; i++) {%>
	<h1>여긴 HTML</h1>
	<% } %>
	<button onclick="location.href='./bbs/board.jsp'"> 보드 </button>
	<a href="./bbs/board.jsp">보드</a> 
	<!-- 하위 폴더에 있는 board 파일을 찾음 -->
</body>
</html>