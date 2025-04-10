
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%	
	request.setCharacterEncoding("utf-8");

	//1. DB 연동 드라이버 로드
	Class.forName("org.mariadb.jdbc.Driver");

	//2. 연결 객체 생성
	Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3307/backend", "hy", "1111");

	//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
	String sql = "SELECT * FROM member3";
	Statement st = con.createStatement();

	//4. SQL 실행
	ResultSet rs = st.executeQuery(sql);

	//5. 메모리에서 해지 (하단에서 처리)
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 목록</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container"><br>	
	<h1 class="text-center font-weight-bold">사용자 정보</h1>
	<br>
	<table class="table table-hover">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>비밀번호</th>
		</tr>
<% 
	//5. 결과집합 처리 
	while(rs.next()){
		String id = rs.getString("id");
		String name = rs.getString("name");
		String pwd = rs.getString("pwd");
%>	
		<tr>
			<td><a href="updateForm.jsp?id=<%=id%>"><%=id %></a></td>
			<td><%=name %></td>
			<td><%=pwd %></td>
		</tr>
<%} 
	//6. 연결 해제
	rs.close();
	st.close();
	con.close();
%>
	</table>
	</div>	
</body>
</html>
