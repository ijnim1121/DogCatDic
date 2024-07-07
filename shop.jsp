<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
    <link rel="stylesheet" type="text/css" href="shop.css"/>
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
   <div id="shopP">
    <h2>[멍냥 쇼핑몰 추천]</h2><br>
    <p>반려동물 용품 쇼핑몰 <p1>Best3</p1></p><br>
    <p2>(사진을 클릭하면 쇼핑몰로 이동합니다.)</p2>
    <div id="storebom">
        <a href="https://store.bom.co.kr/"><img src="./dogcatdictionay/스토어봄.png" width="350" height="70"/>스토어봄</a>
     </div>
     <div id="doctordog">
        <a href="https://www.okdoctordog.com/"><img src="./dogcatdictionay/닥터독.jpg" width="300" height="50"/>닥터독</a>
     </div>
     <div id="petwho">
        <a href="https://pethooh.com/"><img src="./dogcatdictionay/펫후.png" width="250" height="50"/>펫후</a>
     </div>

   </div>
    </body>
</html>