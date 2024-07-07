<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
   <div id="chatBar">
      <button id="chatButton" type="button" onclick="location.href='chatbot.html'" class="collapsible">Start chat!
          <i id="chatIcon" style="color: #fff;" class="fa fa-fw fa-comments-o"></i>
      </button>
  </div>
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
   <div id="chatBar">
      <button id="chatButton" type="button" onclick="location.href='chatbot.html'" class="collapsible">Start chat!
          <i id="chatIcon" style="color: #fff;" class="fa fa-fw fa-comments-o"></i>
      </button>
  </div>
  </div>
  <%} %>
  <div id="mongpic">
  	<img src="./dogcatdictionay/멍멍냥냥.jpg" width=600 height=400 >
  </div>
  

 </body>
</html>