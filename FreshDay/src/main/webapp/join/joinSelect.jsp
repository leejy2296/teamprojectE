<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>회원가입선택</title>
<link href="http://localhost:9000/FreshDay/css/freshday.css" rel="stylesheet">
<link href="http://localhost:9000/FreshDay/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<iframe src="http://localhost:9000/FreshDay/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>
    <div class="join_select">
        <a href="http://localhost:9000/FreshDay/join/joinSeller.jsp" target="_parent">
        <button type="button" class="btn btn-secondary">판매자<br>회원가입</button>
        </a>
        <a href="http://localhost:9000/FreshDay/join/joinBuyer.jsp" target="_parent">
        <button type="button" class="btn btn-success" >구매자<br>회원가입</button>
        </a>
    </div>
<iframe src="http://localhost:9000/FreshDay/footer.jsp"  scrolling="no" frameborder="0" width="100%" height="200px"></iframe>
<script src="http://localhost:9000/FreshDay/js/freshday.js"></script>
</body>
</html>