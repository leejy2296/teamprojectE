<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String login_result = request.getParameter("login_result");
    String join_result = request.getParameter("join_result");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>FRESH DAY - LOGIN</title>
<link href="http://localhost:9000/FreshDay/css/freshday.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script defer src="http://localhost:9000/FreshDay/js/freshday.js"></script>
</head>
<body>
    <%-- 헤더 --%>
    <iframe src="http://localhost:9000/FreshDay/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>
    
    <%-- 로그인 폼 --%>
    <form name="loginForm" action="login_proc.jsp" method="post">
    
    <%-- 로그인 페이지 --%>
    <div class="login_page">
        <h1>로그인</h1>
        <div class="id">
          <img src="http://localhost:9000/FreshDay/images/person.png">
          <input name= "id" id="id" type="text" placeholder=" 아이디를 입력해주세요 " onblur="idCheck()">
          <span id="iderror"></span>
        </div>
        <div class="pass">
	        <img src="http://localhost:9000/FreshDay/images/key.png">
	        <input name = "pass" id="password" type="password" placeholder=" 비밀번호를 입력해주세요 " onblur="passCheck()">
	        <span id="passerror"></span>
        </div>
        <button type="button" onclick="loginFormCheck()">로그인</button>
        <div class="hyperlink">
	        <ul>
	           <li><a href="http://localhost:9000/FreshDay/join/joinSelect.jsp" target="_parent">회원가입</a></li>
	           <li><a href="http://localhost:9000/FreshDay/find/find_id.jsp" target="_parent">아이디 찾기</a></li>
	           <li><a href="http://localhost:9000/FreshDay/find/find_pass.jsp" target="_parent">비밀번호 찾기</a></li>
	        </ul>
        </div>
    </div>
    </form> 
    
    <%-- 푸터 --%>
    <iframe src="http://localhost:9000/FreshDay/footer.jsp"  scrolling="no" frameborder="0" width="100%" height="200px"></iframe>
   <script>
    if('<%=login_result%>' == 'fail'){
        alert("아이디 또는 패스워드가 다릅니다. 확인 후 다시 진행해주세요");
    }
    
    /* 회원가입 성공 메시지 출력 */
    if('<%=join_result%>' == 'succ'){
        alert("회원가입에 성공하셨습니다. 로그인 페이지로 이동합니다.");
    }
</script>
</body>
</html>