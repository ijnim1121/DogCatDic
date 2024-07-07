<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import = "java.io.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.lang.*" %>
<%@ page import = "javax.servlet.*" %>
    
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC “-//W3C//DTD HTML 4.01 Transitional//EN” “http://www.w3.org/TR/html4/loose.dtd”>
<%
request.setCharacterEncoding("euc-kr");

Object id   = request.getParameter("연번");
Object name = request.getParameter("기관명");
Object addr = request.getParameter("도로명주소");
Object pnumber = request.getParameter("전화번호");


Class.forName("com.mysql.jdbc.Driver");

Connection conn = null;
Statement  stmt = null;
ResultSet rs = null;

String url = "jdbc:mysql://127.0.0.1:3306/parsingdb";
String userid = "root";
String passwd = "tmfdk0915A!"; 


conn = DriverManager.getConnection(url,userid,passwd);
stmt = conn.createStatement();
String sql = "SELECT * FROM pharmacy";
rs = stmt.executeQuery(sql);
System.out.print(sql);


%>

<html>
 <head>
    <link rel="stylesheet" type="text/css" href="projectEx.css"/>
    <meta charset="utf-8" />
    <title>dropdownmenu</title>
 </head>
 <body>
  <h1>멍냥 백과사전</h1>
  <%
   String email = null;
   String username =null;
   if(session.getAttribute("email") != null){
      email = (String)session.getAttribute("email");
      username=(String)session.getAttribute("name");
      out.print(username+"집사님");
   }
%>
<%
   if(email == null){
         %>
   <div id="icon">
   <div id ="login">
      <a href="loginpage.jsp"><img src="./dogcatdictionay/loginImage.png"  width="25" height="25"/>Login</a>
      <a href="signup.html"><img src="./dogcatdictionay/signup.png" width="25" height="25"/>Sign up</a>
   </div>
  </div>
  <div id="menu">
   <ul>
      <li><a href="#">멍냥집사 준비리스트</a>
         <ul>
            <li><a href="mongmong.jsp">멍멍님</a></li>
            <li><a href="nangnang.jsp">냥냥님</a></li>
         </ul>
      </li>
      <li><a href="#">멍냥집사들의 나들이</a>
         <ul>
            <li><a href="hoteldb.jsp">반려동물 위탁업체</a></li>
            <li><a href="parkdb.jsp">산책로 추천</a></li>
         </ul>
      </li>
      <li><a href="#">우리동네 동물병원</a>
         <ul>
            <li><a href="hospitaldb.jsp">근처 동물병원찾기</a></li>
            <li><a href="pharmacydb.jsp">근처 동물약국 찾기</a></li>
         </ul>
      </li>
      <li><a href="#">실시간1:1상담</a>
         <ul>
            <li><a href="chatbot.html">챗봇 서비스</a></li>
            
         </ul>
      </li>
      <li><a href="shop.jsp">멍냥 쇼핑몰 추천</a>
      </li>
   </ul>
   
  </div>
   <%
   }else{
   %>
      <div id="icon">
         <div id ="logout">
            <a href="logout.jsp"><img src="./dogcatdictionay/logoutImage.png"  width="25" height="25"/>Logout</a>
         </div>
        </div>
        <div id="menu">
   <ul>
      <li><a href="#">멍냥집사 준비리스트</a>
         <ul>
            <li><a href="mongmong.jsp">멍멍님</a></li>
            <li><a href="nangnang.jsp">냥냥님</a></li>
         </ul>
      </li>
      <li><a href="#">멍냥집사들의 나들이</a>
         <ul>
            <li><a href="hoteldb.jsp">반려동물 위탁업체</a></li>
            <li><a href="parkdb.jsp">산책로 추천</a></li>
         </ul>
      </li>
      <li><a href="#">우리동네 동물병원</a>
         <ul>
            <li><a href="hospitaldb.jsp">근처 동물병원찾기</a></li>
            <li><a href="pharmacydb.jsp">근처 동물약국 찾기</a></li>
         </ul>
      </li>
      <li><a href="#">실시간1:1상담</a>
         <ul>
            <li><a href="chatbot.html">챗봇 서비스</a></li>
            
         </ul>
      </li>
      <li><a href="shop.jsp">멍냥 쇼핑몰 추천</a>
      </li>
   </ul>
   
  </div>
  <%} %>
   <%

while(rs.next()) {
   String idlist = rs.getString("연번");
   String namelist = rs.getString("기관명");
   String addrlist = rs.getString("도로명주소");
   String pnumberlist = rs.getString("전화번호");
   out.print(idlist+"\t"+namelist+"\t"+addrlist+"\t"+pnumberlist+"<br>");
}

stmt.close();
conn.close();
%>

</body>
</html>