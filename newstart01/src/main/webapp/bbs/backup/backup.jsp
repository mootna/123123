<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 백업 </title>
</head>
<body>
	<a href="../../main.jsp"> 메인 </a>
	<!-- 2개의 상위폴더를 올라감 -->
	<a href="/main.jsp"> 최상단 </a>
	<!-- 프로젝트보다 더 위 localhost까지 올라가서 파일명을 찾음 -->
	<a href="./main.jsp"> 현재 내 위치 폴더에서 찾음 </a>
	${pageContext.request.contextPath } 프로젝트명 호출
	<a href="${pageContext.request.contextPath }/main.jsp"> 최상단</a>
	
</body>
</html>