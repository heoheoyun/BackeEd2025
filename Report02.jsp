<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("UTF-8");
			String name = request.getParameter("name");
			int kor = Integer.parseInt(request.getParameter("korean"));
			int eng = Integer.parseInt(request.getParameter("english"));
			int math = Integer.parseInt(request.getParameter("math"));
		%>
		이름 : <%= name %> <br>
		국어 : <%= kor %> <br>
		영어 : <%= eng %> <br>
		수학 : <%= math %> <br>
		합계 : <%= eng + math + kor %> <br>
	</body>
</html>