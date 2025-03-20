<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>성적부여</title>
	</head>
	<body>
		<form action="report02.jsp" method="post">
			학색명: <input type="text" name="name"> <br>
			국어: <input type="text" name="korean"> <br>
			영어: <input type="text" name="english"> <br>
			수학: <input type="text" name="math"> <br>

			<input type="submit" value="확인">
		</form>
	</body>
</html>