<%@page import="member.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% //여긴 자바 
	String name = "홍길동";
%>
	<h1> 인덱스입니다 </h1>
	<a href="./main.jsp?name=<%=name %>">메인으로</a> <!-- 인덱스랑 같은 위치에 있어서 ./ 를 사용 -->
	파라미터 파일명?이름=값&이름2=값2 <!-- 변수이름은 name 그 안에 hong을 입력함 -->
	<br>
	이름은 : <%=name %>	<!-- 한개의 변수를 불러올 때 퍼센트= -->
	/Test 에서 보낸 메세지 입니다 : <%=request.getAttribute("page") %>



</body>
</html>