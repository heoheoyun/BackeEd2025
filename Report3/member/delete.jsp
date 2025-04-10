<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"  %>
    
<%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");

    Class.forName("org.mariadb.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3307/backend", "hy", "1111");

    String sql = "DELETE FROM member WHERE id = ?";
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, id);

    int i = pstmt.executeUpdate();

    pstmt.close();
    con.close();
%>
	
<script>
		let ans = alert("삭제되었습니다!");
		if (!ans){
			location.href='list.jsp';
		}
</script>
