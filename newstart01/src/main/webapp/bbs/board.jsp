<%@page import="board.BoardDTO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 보드 </title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<h1>보드</h1>
	<a href="../main.jsp"> 상위로 </a>
	<!-- 상위 폴더에 있는 파일은 ../ -->
	<!-- 2개의 상위 폴더로 가려면 ../../main.jsp -->
	<!-- jar넣고, db연결하고 데이터 불러오고 화면에 찍어주고 -->
	<%
	Connection conn = null; // 접속정보를 갖고 있을 객체
	PreparedStatement pstmt = null;
	Statement stmt = null;// sql 정보를 갖고 있을 객체
	//DB가 있는 경로
	String url = "jdbc:mariadb://wisejia.iptime.org:3306/poseidon";
	String id = "poseidon";
	String pw = "01234567";
	String sql = "SELECT * FROM boardview LIMIT 0, 10"; //최신글 10개만 보이게
	
	Class.forName("org.mariadb.jdbc.Driver");
	conn = DriverManager.getConnection(url, id, pw); //접속정보 저장
	
	stmt = conn.createStatement(); //conn 의 접속 정보를 가져와서 stmt 로 설정
	ResultSet rs= stmt.executeQuery(sql); //DB작업끝
	
	//내용을 담을 리스트를 만들기
	ArrayList<Map<String, String>> list = new ArrayList<Map<String, String>> ();	
	
	
/*	while(rs.next()){
		Map<String, String> map = new HashMap<String, String> ();
		//DTO = map
		
		map.put("bno", rs.getString(1));
		map.put("btitle", rs.getString("btitle"));
		map.put("bdate", rs.getString(3));
		map.put("lno", rs.getString(4));
		map.put("bcount", rs.getString(5));
		map.put("lname", rs.getString(6));
		list.add(map); //하나하나 저장한 것을 리스트에 넣어주기
	} */
	
	ArrayList<BoardDTO> list2 = new ArrayList<BoardDTO>();
	while(rs.next()){
		BoardDTO dto = new BoardDTO(rs.getString("bno"),rs.getString("btitle"),rs.getString("bdate"),
				rs.getString("bcount"),rs.getString("lno"),rs.getString("lname"));
		 /* 순서에 맞게 써줘야함
		dto.setBno(rs.getString("bno"));
		//DB(rs)에서 가져온 bno컬럼의 값을 dto의bno에 넣음
		dto.setBtitle(rs.getString("btitle"));
		dto.setBdate(rs.getString("bdate"));
		dto.setBcount(rs.getString("bcount"));
		*/
		list2.add(dto);
	}
	%>
	<table class="table table-striped table-hover">
		<tr>
		<th>번호</th>
		<th>제목</th>
		<th>날짜</th>
		<th>쓴사람</th>
		<th>조회수</th>
		</tr>
	<% for(int i = 0; i < list2.size(); i++) {%>
		<tr>
			<td><%=list2.get(i).getBno() %></td>
			<td><%=list2.get(i).getBtitle() %></td>
			<td><%=list2.get(i).getBdate() %></td>
			<td><%=list2.get(i).getLname() %></td>
			<td><%=list2.get(i).getBcount() %></td>
	<br>
	<% } %>
	</table>
</body>
</html>