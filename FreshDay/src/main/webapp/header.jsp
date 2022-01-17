<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
    String sid = (String)session.getAttribute("sid");
  %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>header</title>
<link href="http://localhost:9000/FreshDay/css/freshday.css" rel="stylesheet">
</head>
<body>
    <header>
        <div class="header_menu">
        <% if(sid == null){ %>
            <div class="header_menu_list">
                     <ul>
                        <li><a href="http://localhost:9000/FreshDay/join/joinSelect.jsp" target="_parent">회원가입</a></li>
                        <li><a href="http://localhost:9000/FreshDay/login/login.jsp" target="_parent">LOGIN</a></li>
                        <li><a href="">장바구니</a></li>
                        <li><a href="">MyPage</a></li>
                     </ul>
                 </div>
                 <% }else{ %>
                  <div class="header_menu_list">
                     <ul>
  <!--                  <li><a href="http://localhost:9000/FreshDay/join/joinSelect.jsp" target="_parent">회원가입</a></li>
                        <li><a href="http://localhost:9000/FreshDay/login/login.jsp" target="_parent">LOGIN</a></li> -->
                        <li><a href="http://localhost:9000/FreshDay/login/logout.jsp" target="_parent">LOGOUT</a></li>
                        <li><a href="">장바구니</a></li>
                        <li><a href="">MyPage</a></li>
                     </ul>
                 </div>
                 <% } %>
            <div class="header_menu_logo">
                <h1 class="logo_title">FRESH DAY</h1>
                <img src="http://localhost:9000/FreshDay/images/logo_color.png">
            </div>
        </div>
    </header>
</body>
</html>