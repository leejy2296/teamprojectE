<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    String join_result = request.getParameter("join_result");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>회원가입 - 판매자</title>
<link href="http://localhost:9000/FreshDay/css/freshday.css" rel="stylesheet">
<link href="http://localhost:9000/FreshDay/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<iframe src="http://localhost:9000/FreshDay/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>
   <section class="join">
    <form name="joinForm" action="joinSeller_proc.jsp" method="post">
        <h1>판매자 회원가입</h1>
        <h5> * 표시는 필수입력 사항입니다. </h5>
        <ul>
            <li>
                <label>성명 *</label>
                <input type="text" name="name" class="form-control" id="name" placeholder="2글자 이상, 한글" onblur="nameCheck();wordCount_name(this,2);">
                <p class="error" id="nameerror"></p>
            </li>
            <li>
                <label>아이디 *</label>
                <input type="text" name="id" class="form-control" id="id" placeholder="5~20자, 영어와 숫자" onblur="idCheck();wordCount_id(this,5,20);">
                <button type="button" class="btn btn-secondary" onclick="id_sameCheck()">중복확인</button>
                <p class="error" id="iderror"></p>
            </li>
            <li>
                <label>비밀번호 *</label>
                <input type="password" name="pass" class="form-control" id="password" placeholder="6~12자, 영어와 숫자" onblur="passCheck();wordCount_pass(this,6,12);">
                <p class="error" id="passerror"></p>
            </li>
            <li>
                <label>비밀번호 확인 *</label>
                <input type="password" name="passcheck" class="form-control" id="passwordcheck" placeholder="비밀번호를 재입력해주세요" onblur="sameCheck()">
                <p class="error" id="passcheckerror"></p>
            </li>
            <li>
                <label>사업자등록번호 *</label>
                <span>
                    <input type="number" name="snumber1" class="form-control" id="sellno1" oninput ="numberMax(this, 3)" placeholder="3자리 숫자">
                    <input type="number" name="snumber2" class="form-control" id="sellno2" oninput ="numberMax(this, 2)" placeholder="2자리 숫자">
                    <input type="number" name="snumber3" class="form-control" id="sellno3" oninput ="numberMax(this, 5)" placeholder="5자리 숫자">
                </span>
                <button type="button" class="btn btn-secondary" onclick="sellerCheck();sell_sameCheck();">중복확인</button>
                <p class="error" id="sell_error"></p>
            </li> 
            <li>
                <label>휴대폰 *</label>
                <span>
                      <input type="text" name="hp1" class="form-control" id="hp1" value="010" readonly/>
                    - <input type="text" name="hp2" class="form-control" id="hp2" oninput="numberMax(this,4)" placeholder="4자리 숫자">
                    - <input type="text" name="hp3" class="form-control" id="hp3" onblur="hpCheck()" oninput="numberMax(this,4)" placeholder="4자리 숫자">
                </span>
                <p class="error" id="hperror"></p>
            </li>   
            <li>
                <label>이메일 *</label>
                <input type="text" name="eid" class="form-control" id="email1" placeholder="이메일을 입력해주세요"> @
                <input type="text" name="domain" class="form-control" id="email2" onblur="eCheck()">
                <select class="form-select" id="email3" aria-label="Default select example" onchange="emailCheck()">
                    <option value="self">직접입력</option>
                    <option value="naver.com">네이버</option>
                    <option value="google.com">구글</option>
                    <option value="hanmail.net">다음/한메일</option>
</select>
                <p class="error" id="email_error"></p>
            </li>
            <li>
                <label>주소 *</label>
                <input type="text" name="add1" class="form-control" id="addr1" onblur="addrCheck1()">
            </li>
            <li>
                <label>상세주소 *</label>
                <input type="text" name="add2" class="form-control" id="addr2" onblur="addrCheck2()">
                <p class="error" id="adr_error"></p>
            </li>
        </ul>
            <ul class="list-inline">
            <li class="list-inline-item"><button type="submit" class="btn btn-secondary">회원가입</button></li>
            <li class="list-inline-item"><button type="reset" class="btn btn-secondary">다시쓰기</button></li>
            <li class="list-inline-item"><a href="http://localhost:9000/FreshDay/join/joinSelect.jsp" target="_parent"><button type="button" class="btn btn-secondary">이전화면</button></a></li>
            </ul>
     </form>
  </section>
<iframe src="http://localhost:9000/FreshDay/footer.jsp"  scrolling="no" frameborder="0" width="100%" height="200px"></iframe>
<script src="http://localhost:9000/FreshDay/js/freshday.js"></script>

</body>
</html>