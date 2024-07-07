<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager" %> 
<%@ page import = "java.sql. Connection" %> 
<%@ page import = "java. sql. PreparedStatement" %> 
<%@ page import = "java. sql. ResultSet" %> 
<%@ page import = "java.sql.SQLException" %> 
<% 
String email = request.getParameter("email"); 
String password = request.getParameter("password"); 

Connection conn = null; 
PreparedStatement pstmt = null; 
ResultSet rs = null; 
Class.forName("com.mysql.jdbc.Driver"); 

String jdbcDriver = "jdbc:mysql://127.0.0.1:3306/signupdb"; 
String dbUser = "root"; 
String dbPass = "tmfdk0915A!"; 

conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass); 
pstmt = conn.prepareStatement("SELECT*FROM member WHERE email = ?"); 
pstmt.setString(1, email); 
rs = pstmt.executeQuery(); 

if(rs.next()){ 
	if(password.equals(rs.getString("password"))){ 
		session.setAttribute("name", rs.getString("name")); 
		session.setAttribute("email",rs.getString("email"));
		
	}
}

%> 
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<%
Object name = session.getAttribute("name");
String name1=(String)name;
%>
<a><%=name%>님 환영합니다.</a>
<a href="<%= request.getContextPath() %>/logout.jsp">로그아웃</a><br>
<a href="<%= request.getContextPath() %>/mainpg.jsp">메인페이지 이동</a>

</body>
</html>
<% 
rs.close(); 
pstmt.close(); 
conn.close(); 
%>

