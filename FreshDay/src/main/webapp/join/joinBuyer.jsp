<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>회원가입 - 구매자</title>
<link href="http://localhost:9000/FreshDay/css/freshday.css" rel="stylesheet">
<link href="http://localhost:9000/FreshDay/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<iframe src="http://localhost:9000/FreshDay/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>
   <section class="join">
    <form name="joinForm" action="joinBuyer_proc.jsp" method="post">
        <h1>구매자 회원가입</h1>
        <h5> * 표시는 필수입력 사항입니다. </h5>
        <ul>
            <li>
                <label>성명 *</label>
                <input type="text" name="name" class="input1" id="name" placeholder="2글자 이상, 한글" onblur="nameCheck();wordCount_name(this,2);">
                <p class="error" id="nameerror"></p>
            </li>
            <li>
                <label>아이디 *</label>
                <input type="text" name="id" class="input1" id="id" placeholder="5~20자, 영어와 숫자" onblur="idCheck();wordCount_id(this,5,20);">
                <button type="button" class="btn btn-secondary">중복확인</button>
                <span class="btn_span" id="btn_span">123</span>
                <p class="error" id="iderror"></p>
            </li>
            <li>
                <label>비밀번호 *</label>
                <input type="password" name="pass" class="input1" id="password" placeholder="6~12자, 영어와 숫자" onblur="passCheck();wordCount_pass(this,6,12);">
                <p class="error" id="passerror"></p>
            </li>
            <li>
                <label>비밀번호 확인 *</label>
                <input type="password" name="passcheck" class="input1" id="passwordcheck" placeholder="비밀번호를 재입력해주세요" onblur="sameCheck()">
                <p class="error" id="passcheckerror"></p>
            </li> 
            <li>
                <label>휴대폰 *</label>
                <span>
                      <input type="text" name="hp2" class="input3" id="hp1" value="010" readonly/>
                    - <input type="text" name="hp2" class="input3" id="hp2" oninput="numberMax(this,4)" placeholder="4자리 숫자">
                    - <input type="text" name="hp3" class="input3" id="hp3" onblur="hpCheck()" oninput="numberMax(this,4)" placeholder="4자리 숫자">
                </span>
                <p class="error" id="hperror"></p>
            </li>   
            <li>
                <label>이메일 *</label>
                <input type="text" name="email1" class="input1" id="email1" placeholder="이메일을 입력해주세요"> @
                <input type="text" name="email2" class="input1" id="email2" onblur="eCheck()">
                <select class="email" id="email3" onchange="emailCheck()">
                    <option value="self">직접입력</option>
                    <option value="naver.com">네이버</option>
                    <option value="google.com">구글</option>
                    <option value="hanmail.net">다음</option>
                </select>
                <p class="error" id="email_error"></p>
            </li>
            <li>
                <label>주소 *</label>
                <input type="text" name="addr1" class="input4" id="addr1" onblur="addrCheck1()">
            </li>
            <li>
                <label>상세주소 *</label>
                <input type="text" name="addr2" class="input4" id="addr2" onblur="addrCheck2()">
                <p class="error" id="adr_error"></p>
            </li>
        </ul>
            <ul class="list-inline">
            <li class="list-inline-item"><button type="submit" class="btn btn-secondary">회원가입</button></li>
            <li class="list-inline-item"><button type="reset" class="btn btn-secondary">다시쓰기</button></li>
            <li class="list-inline-item"><button type="button" class="btn btn-secondary">이전화면</button></li>
            </ul>
     </form>
  </section>
<iframe src="http://localhost:9000/FreshDay/footer.jsp"  scrolling="no" frameborder="0" width="100%" height="200px"></iframe>
<script src="http://localhost:9000/FreshDay/js/freshday.js"></script>
</body>
</html>