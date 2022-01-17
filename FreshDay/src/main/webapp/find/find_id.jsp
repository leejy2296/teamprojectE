<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>아이디 찾기</title>
<link href="http://localhost:9000/FreshDay/css/freshday.css" rel="stylesheet">
<link href="http://localhost:9000/FreshDay/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<iframe src="http://localhost:9000/FreshDay/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>
<form name="findForm" action="find_id_check.jsp" method="post">
	<div class="mb-3">
    <h1>아이디 찾기</h1>
	  <label for="formGroupExampleInput" class="form-label">이름</label>
	  <input type="text" class="form-control" id="name" placeholder="이름을 입력해주세요" onblur="nameCheck();wordCount_name(this,2);">
	  <p class="error" id="nameerror"></p>
	</div>
	<div class="mb-3">
	  <label for="formGroupExampleInput2" class="form-label">핸드폰번호</label>
        <input type="number" name="hp2" class="form-control" id="hp1" value="010" readonly/>
        - <input type="number" name="hp2" class="form-control" id="hp2" oninput="numberMax(this,4)" placeholder="4자리 숫자">
        - <input type="number" name="hp3" class="form-control" id="hp3" onblur="hpCheck()" oninput="numberMax(this,4)" placeholder="4자리 숫자">
        <p class="error" id="hperror"></p>
        <button type="button" class="btn btn-secondary" onclick="find_id()">아이디 찾기</button>
	</div>
	</form>
<iframe src="http://localhost:9000/FreshDay/footer.jsp"  scrolling="no" frameborder="0" width="100%" height="200px"></iframe>
<script src="http://localhost:9000/FreshDay/js/freshday.js"></script>
</body>
</html>