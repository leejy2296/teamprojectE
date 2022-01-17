<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>FRESH DAY - LOGIN</title>
<link href="http://localhost:9000/FreshDay/css/freshday.css" rel="stylesheet">
<script src="http://localhost:9000/FreshDay/js/freshday.js"></script>
</head>
<body>
    <iframe src="http://localhost:9000/FreshDay/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>
    <form name="loginForm" action="login_proc.jsp" method="post">
    <div class="login_page">
        <h1>로그인</h1>
        <div class="id">
          <img src="http://localhost:9000/FreshDay/images/person.png">
          <input id="id" type="text" placeholder=" 아이디를 입력해주세요 " onblur="idCheck()">
          <span id="iderror"></span>
        </div>
        <div class="pass">
	        <img src="http://localhost:9000/FreshDay/images/key.png">
	        <input id="password" type="password" placeholder=" 비밀번호를 입력해주세요 " onblur="passCheck()">
	        <span id="passerror"></span>
        </div>
        <button type="submit">로그인</button>
        <div class="hyperlink">
	        <ul>
	           <li><a href="http://localhost:9000/FreshDay/join/joinSelect.jsp" target="_parent">회원가입</a></li>
	           <li><a href="http://localhost:9000/FreshDay/find/find_id.jsp" target="_parent">아이디 찾기</a></li>
	           <li><a href="http://localhost:9000/FreshDay/find/find_pass.jsp" target="_parent">비밀번호 찾기</a></li>
	        </ul>
        </div>
    </div>
    </form>
    <iframe src="http://localhost:9000/FreshDay/footer.jsp"  scrolling="no" frameborder="0" width="100%" height="200px"></iframe>
</body>
</html>