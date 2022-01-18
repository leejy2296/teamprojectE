<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>임시 메인</title>
<link href="http://localhost:9000/FreshDay/css/freshday.css" rel="stylesheet">
<link href="http://localhost:9000/FreshDay/css/bootstrap.css" rel="stylesheet">
<script defer src="http://localhost:9000/FreshDay/js/freshday.js"></script>
</head>
<body>
<iframe src="http://localhost:9000/FreshDay/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>
    <h1>임시 메인</h1>
    <a href="http://localhost:9000/FreshDay/pay/pay.jsp" target="_parent"><button>결제창 바로가기</button></a>
    <br>
    <a href="" target="_parent"><button></button></a>
    <br>
    <a href="" target="_parent"><button></button></a>
    <br>
    <a href="" target="_parent"><button></button></a>
    
<%
    String login_result = request.getParameter("login_result");
    String join_result = request.getParameter("join_result");
%>
<script>
    /* 회원가입 성공 메시지 출력 */
    if('<%=join_result%>' == 'succ'){
        alert("회원가입에 성공하셨습니다. 로그인 페이지로 이동합니다.");
    }else if('<%=join_result%>' == 'fail'){
        alert("회원가입에 실패했습니다.")
    }else{
    /* 로그인 성공 메시지 출력 */
    }
    if('<%=login_result%>' == 'true'){
        alert("로그인이 완료되었습니다.");
    }else if('<%=login_result%>' == 'fail'){
        alert("로그인이 실패했습니다.")
    }
</script>
</body>
</html>