<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import = "java.io.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.lang.*" %>
<%@ page import = "javax.servlet.*" %>
    
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC ��-//W3C//DTD HTML 4.01 Transitional//EN�� ��http://www.w3.org/TR/html4/loose.dtd��>
<%
request.setCharacterEncoding("euc-kr");

Object name = request.getParameter("������");
Object type   = request.getParameter("��������");
Object are   = request.getParameter("��������");
Object addr = request.getParameter("���������θ��ּ�");
Object inst = request.getParameter("��Ÿ�ü�");


Class.forName("com.mysql.jdbc.Driver");

Connection conn = null;
Statement  stmt = null;
ResultSet rs = null;

String url = "jdbc:mysql://127.0.0.1:3306/parsingdb";
String userid = "root";
String passwd = "tmfdk0915A!"; 


conn = DriverManager.getConnection(url,userid,passwd);
stmt = conn.createStatement();
String sql = "SELECT * FROM park";
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
  <h1>�۳� �������</h1>
  <%
   String email = null;
   String username =null;
   if(session.getAttribute("email") != null){
      email = (String)session.getAttribute("email");
      username=(String)session.getAttribute("name");
      out.print(username+"�����");
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
      <li><a href="#">�۳����� �غ񸮽�Ʈ</a>
         <ul>
            <li><a href="mongmong.jsp">�۸۴�</a></li>
            <li><a href="nangnang.jsp">�ɳɴ�</a></li>
         </ul>
      </li>
      <li><a href="#">�۳�������� ������</a>
         <ul>
            <li><a href="hoteldb.jsp">�ݷ����� ��Ź��ü</a></li>
            <li><a href="parkdb.jsp">��å�� ��õ</a></li>
         </ul>
      </li>
      <li><a href="#">�츮���� ��������</a>
         <ul>
            <li><a href="hospitaldb.jsp">��ó ��������ã��</a></li>
            <li><a href="pharmacydb.jsp">��ó �����౹ ã��</a></li>
         </ul>
      </li>
      <li><a href="#">�ǽð�1:1���</a>
         <ul>
            <li><a href="chatbot.html">ê�� ����</a></li>
            
         </ul>
      </li>
      <li><a href="shop.jsp">�۳� ���θ� ��õ</a>
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
      <li><a href="#">�۳����� �غ񸮽�Ʈ</a>
         <ul>
            <li><a href="mongmong.jsp">�۸۴�</a></li>
            <li><a href="nangnang.jsp">�ɳɴ�</a></li>
         </ul>
      </li>
      <li><a href="#">�۳�������� ������</a>
         <ul>
            <li><a href="hoteldb.jsp">�ݷ����� ��Ź��ü</a></li>
            <li><a href="parkdb.jsp">��å�� ��õ</a></li>
         </ul>
      </li>
      <li><a href="#">�츮���� ��������</a>
         <ul>
            <li><a href="hospitaldb.jsp">��ó ��������ã��</a></li>
            <li><a href="pharmacydb.jsp">��ó �����౹ ã��</a></li>
         </ul>
      </li>
      <li><a href="#">�ǽð�1:1���</a>
         <ul>
            <li><a href="chatbot.html">ê�� ����</a></li>
            html
         </ul>
      </li>
      <li><a href="shop.html">�۳� ���θ� ��õ</a>
      </li>
   </ul>
   
  </div>
  <%} %>
   <%

while(rs.next()) {
   String name1list = rs.getString("������");
   String typelist = rs.getString("��������");
   String arealist = rs.getString("��������");
   String addrlist = rs.getString("���������θ��ּ�");
   String instlist = rs.getString("��Ÿ�ü�");
   out.print(name1list+"\t"+typelist+"\t"+arealist+"\t"+addrlist+"\t"+instlist+"<br>");
}

stmt.close();
conn.close();
%>

</body>
</html>