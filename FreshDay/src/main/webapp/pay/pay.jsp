<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="vo.UserVO,dao.UserDao,java.util.ArrayList"%>
    <%
    String sid = (String)session.getAttribute("sid");
    UserDao dao = new UserDao();
    ArrayList<UserVO> list = dao.pay_select(sid);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>FreshDay 결제창</title>
<link href="http://localhost:9000/FreshDay/css/freshday.css" rel="stylesheet">
<link href="http://localhost:9000/FreshDay/css/bootstrap.css" rel="stylesheet">
<script defer src="http://localhost:9000/FreshDay/js/freshday.js"></script>
</head>
<body>
<iframe src="http://localhost:9000/FreshDay/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>
<%for(UserVO vo : list) { %>
<section class="pay">
<form name="payform" action="pay_proc.jsp" method="post">
    <div class="hr">
        <hr>
        <h4>구매자 정보</h4>
        <hr>
    </div>
	<div class="mb-3">
	  <label for="formGroupExampleInput" class="form-label">구매자</label>
	  <input type="text" class="form-control" id="name" value="<%=vo.getName()%>" onblur="nameCheck();wordCount_name(this,2);">
	  <p class="error" id="nameerror"></p>
	  
	</div>
	<div class="mb-3">
      <label for="formGroupExampleInput" class="form-label">핸드폰 번호</label>
      <input type="text" name="hp1" class="form-control" id="hp1" value="<%=vo.getHp1()%>" readonly/>
      - <input type="text" name="hp2" class="form-control" id="hp2" value="<%=vo.getHp2()%>"oninput="numberMax(this,4)" placeholder="4자리 숫자">
      - <input type="text" name="hp3" class="form-control" id="hp3" value="<%=vo.getHp3()%>"onblur="hpCheck()" oninput="numberMax(this,4)" placeholder="4자리 숫자">
      <p class="error" id="hperror"></p>
    </div>
	<div class="hr">
        <hr>
        <h4>배송 정보
        <small class="text-muted">배송 휴무일 : 일요일</small>
        </h4>
        <hr>
    </div>
	<div class="mb-3">
	  <label for="formGroupExampleInput2" class="form-label">배송지</label>
	  <input type="text" class="form-control" id="addr1" value="<%=vo.getAdd1()%>" onblur="addrCheck1()">
	  <br>
	  <input type="text" class="form-control" id="addr2" value="<%=vo.getAdd2()%>" onblur="addrCheck2()">
	  <p class="error" id="adr_error"></p>
	</div>
	<div class="hr">
        <hr>
        <h4>결제</h4>
        <hr>
    </div>
    <div class="mb-3">
      <label for="formGroupExampleInput2" class="form-label">카드 번호</label>
      <select id= "select-card" class="form-select" aria-label="Default select example">
		<option id="hyundae" value="hyundae">현대카드</option>
		<option id="shinhan"value="shinhan">신한카드</option>
		<option id="kb" value="kb">KB국민카드</option>
		</select>
      <input type="number" name="card1" class="form-control" id="card1" onblur="cardCheck()" oninput="numberMax(this,4)" placeholder="4자리 숫자">
        - <input type="number" name="card2" class="form-control" id="card2" onblur="cardCheck()" oninput="numberMax(this,4)" placeholder="4자리 숫자">
        - <input type="number" name="card3" class="form-control" id="card3" onblur="cardCheck()" oninput="numberMax(this,4)" placeholder="4자리 숫자">
        - <input type="number" name="card4" class="form-control" id="card4" onblur="cardCheck()" oninput="numberMax(this,4)" placeholder="4자리 숫자">
        <p class="error" id="carderror"></p>
    </div>
    <div>
        <a href="">
        <button type="button" class="btn btn-secondary">취소</button>
        </a>
        <button type="button" class="btn btn-success" onclick="payFormCheck()">결제하기</button>
    </div>
</form>
</section>
<% } %>
<iframe src="http://localhost:9000/FreshDay/footer.jsp"  scrolling="no" frameborder="0" width="100%" height="200px"></iframe>
</body>
</html>