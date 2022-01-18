 /**
    회원가입 - 글자수제한 (커서 이동시 빨간글씨)
  */
 function wordCount_id(el, minlength, maxlength){
    let idmsg;
    idmsg = document.getElementById("iderror");
    if(el.value != "" && el.value.length < minlength || el.value.length > maxlength){
        idmsg.innerHTML = "5~20자리로 입력해주세요"
        idmsg.style.color = "red";
        idmsg.style.fontSize = "3pt";
        return false;
    }
}
function wordCount_pass(el, minlength, maxlength){
    let passmsg;
    passmsg = document.getElementById("passerror");
    if(el.value != "" && el.value.length < minlength || el.value.length > maxlength){
        passmsg.innerHTML = "6~12자리로 입력해주세요"
        passmsg.style.color = "red";
        passmsg.style.fontSize = "3pt";
        return false;
    }
}
function wordCount_name(el, minlength){
    let namemsg;
    namemsg = document.getElementById("nameerror");
    if(el.value != "" && el.value.length < minlength){
        namemsg.innerHTML = "2글자 이상 입력해주세요"
        namemsg.style.color = "red";
        namemsg.style.fontSize = "3pt";
        return false;
    }
}
function numberMax(el, maxlength){
     if(el.value.length > maxlength)  {
     el.value = el.value.substr(0, maxlength);
  }
}
/**
 * 회원가입 - 공란 체크 (커서 이동시 빨간글씨)
 */
 function idCheck(){
    let id, idmsg;
    id = document.getElementById("id");
    idmsg = document.getElementById("iderror");
    var chk_num = id.value.search(/[0-9]/g);
    var chk_eng = id.value.search(/[a-z]/ig);

    if(id.value != ""){
            idmsg.innerHTML = "";
      }else{
            idmsg.innerHTML = "아이디를 입력해주세요";
            idmsg.style.color = "red";
            idmsg.style.fontSize = "3pt";
            return false;
        }
        
    if(chk_num < 0 || chk_eng < 0) {
        idmsg.innerHTML = "영어소문자와 숫자로 입력해주세요"
        idmsg.style.color = "red";
        idmsg.style.fontSize = "3pt";
        return false;
    }else {
        idmsg.innerHTML = "";
        return true
    }
}

 function passCheck(){
    let pass, passmsg;
    pass = document.getElementById("password");
    passmsg = document.getElementById("passerror");
    var chk_num = pass.value.search(/[0-9]/g);
    var chk_eng = pass.value.search(/[a-z]/ig);
    
    if(pass.value != ""){
            passmsg.innerHTML = "";
      }else{
            passmsg.innerHTML = "비밀번호를 입력해주세요";
            passmsg.style.color = "red";
            passmsg.style.fontSize = "3pt";
            return false;
        }
    if(chk_num < 0 || chk_eng < 0){
        passmsg.innerHTML = "영어소문자와 숫자로 입력해주세요"
        passmsg.style.color = "red";
        passmsg.style.fontSize = "3pt";
        }else {
            passmsg.innerHTML("");
            return true;
        }
    } 

 function nameCheck(){
    let name, namemsg;
    var pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
    name = document.getElementById("name");
    namemsg = document.getElementById("nameerror");
    
    if(name.value != ""){
            namemsg.innerHTML = "";
      }else{
            namemsg.innerHTML = "이름을 입력해주세요";
            namemsg.style.color = "red";
            namemsg.style.fontSize = "3pt";
            return false;
        }
    if((pattern_kor.test(name.value))){
        return true;
    }else {
        namemsg.innerHTML = "한글만 입력이 가능합니다."
        namemsg.style.color = "red";
        namemsg.style.fontSize = "3pt";
        return false;
    }
  }

function sellerCheck(){
    let no1,no2,no3,sellmsg;
    no1 = document.getElementById("sellno1");
    no2 = document.getElementById("sellno2");
    no3 = document.getElementById("sellno3");
    sellmsg = document.getElementById("sell_error");
    
    if(no1.value != "" && no2.value != "" && no3.value != ""){
        if(no1.value.length != 3 || no2.value.length != 2 || no3.value.length != 5){
            sellmsg.innerHTML = "사업자 등록 번호가 올바르지않습니다.";
            sellmsg.style.color = "red";
            sellmsg.style.fontSize = "3pt";
            no1.focus();
            return false;
        }
        sellmsg.innerHTML = "";
        //중복체크 검사 진행
        return true;
    }else {
        sellmsg.innerHTML = "사업자 등록 번호가 올바르지않습니다.";
        sellmsg.style.color = "red";
        sellmsg.style.fontSize = "3pt";
        no1.focus();
        return false;
    }
}
function hpCheck(){
    let hp1, hp2, hpmsg;
    hp1 = document.getElementById("hp2");
    hp2 = document.getElementById("hp3");
    hpmsg = document.getElementById("hperror");
    
    if(hp1.value != "" && hp2.value != ""){
        if(hp1.value.length != 4 || hp2.value.length != 4){
            hpmsg.innerHTML = "핸드폰 번호 자리수가 잘못되었습니다.";
            hpmsg.style.color = "red";
            hpmsg.style.fontSize = "3pt";
            return false;
        }
        hpmsg.innerHTML = "";
        return true;
    }else {
        hpmsg.innerHTML = "핸드폰 번호를 입력해주세요.";
        hpmsg.style.color = "red";
        hpmsg.style.fontSize = "3pt";
        return false;
    }
}    
function cardCheck(){
    let card1, card2, card3, card4, cardmsg;
    card1 = document.getElementById("card1");
    card2 = document.getElementById("card2");
    card3 = document.getElementById("card3");
    card4 = document.getElementById("card4");
    cardmsg = document.getElementById("carderror");
    
    if(card1.value != "" && card2.value != "" && card3.value != "" && card4.value != ""){
        if(card1.value.length != 4 || card2.value.length != 4 || card3.value.length != 4 || card4.value.length != 4){
            cardmsg.innerHTML = "카드번호가 잘못되었습니다.";
            cardmsg.style.color = "red";
            cardmsg.style.fontSize = "3pt";
            return false;
        }
        cardmsg.innerHTML = "";
        return true;
    }else {
        cardmsg.innerHTML = "카드번호를 입력해주세요.";
        cardmsg.style.color = "red";
        cardmsg.style.fontSize = "3pt";
        return false;
    }
}  
function eCheck(){
    let email1, email2, emsg;
    email1 = document.getElementById("email1");
    email2 = document.getElementById("email2");
    emsg = document.getElementById("email_error");
    
    if(email1.value != "" && email2.value != ""){
        emsg.innerHTML = "";
        return true;
    }else {
        emsg.innerHTML = "이메일을 입력해주세요.";
        emsg.style.color = "red";
        emsg.style.fontSize = "3pt";
        return false;
    }
}
 function addrCheck1(){
    let addr, addrmsg;
    addr = document.getElementById("addr1");
    addrmsg = document.getElementById("adr_error");
    
    if(addr.value != ""){
            addrmsg.innerHTML = "";
            return true;
      }else{
            addrmsg.innerHTML = "주소를 입력해주세요";
            addrmsg.style.color = "red";
            addrmsg.style.fontSize = "3pt";
            return false;
        }       
    }
function addrCheck2(){
    let addr, addrmsg;
    addr = document.getElementById("addr2");
    addrmsg = document.getElementById("adr_error");
    
    if(addr.value != ""){
            addrmsg.innerHTML = "";
            return true;
      }else{
            addrmsg.innerHTML = "상세주소를 입력해주세요";
            addrmsg.style.color = "red";
            addrmsg.style.fontSize = "3pt";
            return false;
        }       
    } 
/*
* 회원가입 - 버튼클릭 폼 체크
*/ 
function joinFormCheck(){
    let name, id, pass, passchk, sellno1, sellno2, sellno3, hp2, hp3,
    email1, email2, addr1, addr2;
    name = document.getElementById("name");
    id = document.getElementById("id");
    pass = document.getElementById("password");
    passchk = document.getElementById("passwordcheck");
    sellno1 = document.getElementById("sellno1");
    sellno2 = document.getElementById("sellno2");
    sellno3 = document.getElementById("sellno3");
    hp2 = document.getElementById("hp2");
    hp3 = document.getElementById("hp3");
    email1 = document.getElementById("email1");
    email2 = document.getElementById("email2");
    addr1 = document.getElementById("addr1");
    addr2 = document.getElementById("addr2");
    if(name.value == ""){
        alert("이름을 입력해주세요.");
        name.focus();
        return false;
    }else if(id.value == ""){
        alert("아이디를 입력해주세요.");
        id.focus();
        return false;
    }else if(pass.value == ""){
        alert("비밀번호를 입력해주세요.");
        pass.focus();
        return false;
    }else if(passchk.value == ""){
        alert("비밀번호 확인을 입력해주세요.");
        passchk.focus();
        return false;
    }else if(sellno1.value == ""){
        alert("사업자번호 앞자리를 입력해주세요.");
        sellno1.focus();
        return false;
    }else if(sellno2.value == ""){
        alert("사업자번호 가운데자리를 입력해주세요.");
        sellno2.focus();
        return false;
    }else if(sellno3.value == ""){
        alert("사업자번호 뒷자리를 입력해주세요.");
        sellno3.focus();
        return false;
    }else if(hp2.value == ""){
        alert("휴대폰 가운데자리를 입력해주세요.");
        hp2.focus();
        return false;
    }else if(hp3.value == ""){
        alert("휴대폰 뒷자리를 입력해주세요.");
        hp3.focus();
        return false;
    }else if(email1.value == ""){
        alert("이메일 아이디를 입력해주세요.");
        email1.focus();
        return false;
    }else if(email2.value == ""){
        alert("도메인주소를 입력해주세요.");
        email2.focus();
        return false;
    }else if(addr1.value == ""){
        alert("주소를 입력해주세요.");
        addr1.focus();
        return false;
    }else if(addr2.value == ""){
        alert("상제주소를 입력해주세요.");
        addr2.focus();
        return false;
    }else {
        joinForm.submit();
    }
}
/**
*   비밀번호 확인 일치
*/
 function sameCheck(){
    let pass, passcheck, checkmsg;
    pass = document.getElementById("password");
    passcheck = document.getElementById("passwordcheck");
    checkmsg = document.getElementById("passcheckerror");
    
    if(pass.value == passcheck.value){
            checkmsg.innerHTML = "";
            return true;
      }else{
            //alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요");
            checkmsg.innerHTML = "비밀번호가 일치하지않습니다.";
            checkmsg.style.color = "red";
            checkmsg.style.fontSize = "3pt";
            return false;
        }       
    }
/**
*   회원가입 - 이메일 주소 선택
*/
function emailCheck(){
    let email2, email3;
    email2 = document.getElementById("email2");
    email3 = document.getElementById("email3");
    
    if(email3.value == "self"){
        email2.value = "";
        email2.focus();
    }else{
        email2.value = email3.value;
    }
}   
/**
* 중복버튼 > 중복값검사
 */
function id_sameCheck(){
    let id;
    id = document.getElementById("id");
    if(id.value =="" || id.value.length < 5){
        alert("아이디를 먼저 입력해주세요")
        id.focus();
    }else{
        window.open("id_sameCheck.jsp?userid="+id.value,"","width=300, height=100");
    }
}
function sell_sameCheck(){
    let sell, sno1, sno2, sno3;
    sno1 = document.getElementById("sellno1");
    sno2 = document.getElementById("sellno2");
    sno3 = document.getElementById("sellno3");
    sell = sno1+sno2+sno3;
    if(sno1.value ==""||sno1.value.length < 3 || sno2.value == "" || sno2.value.length < 2 || sno3.value == "" || sno3.value.length < 5){
        alert("사업자 등록 번호를 먼저 입력해주세요")
        sno1.focus();
    }else{
        window.open("sno_sameCheck.jsp?sellnumber="+sell.value,"","width=300, height=100");
    }
}

/**
*   아이디 / 비밀번호 찾기
 */
 function find_id(){
    let name, hp1, hp2, hp3;
    name = document.getElementById("name");
    hp1 = document.getElementById("hp1");
    hp2 = document.getElementById("hp2");
    hp3 = document.getElementById("hp3");

    if(name.value==""){
        alert("이름을 입력해주세요.");
        name.focus();
        return false;
    }else if(hp1.value == ""||hp2.value == ""||hp3.value == ""){
        alert("핸드폰 번호를 입력해주세요.");
        hp2.focus();
        return false;
    }else {
        window.open("find_id_check.jsp?name="+name.value+"&"+"number="+hp1.value+hp2.value+hp3.value,"","width=300, height=100");
    }
   }
function find_pass(){
    let id, name, hp1, hp2, hp3;
    id = document.getElementById("id");
    name = document.getElementById("name");
    hp1 = document.getElementById("hp1");
    hp2 = document.getElementById("hp2");
    hp3 = document.getElementById("hp3");

    
    if(id.value == ""){
        alert("아이디를 입력해주세요.")
        id.focus();
        return false;
    }else if(name.value==""){
        alert("이름을 입력해주세요.");
        name.focus();
        return false;
    }else if(hp1.value == ""||hp2.value == ""||hp3.value == ""){
        alert("핸드폰 번호를 입력해주세요.");
        hp2.focus();
        return false;
    }else {
        window.open("find_pass_check.jsp?id="+id.value+"&name="+name.value+"&number="+hp1.value+hp2.value+hp3.value,"","width=300, height=100");
    }
   }
/**
    로그인 폼 체크
 */
 function loginFormCheck(){
    let id, pass;
    id = document.getElementById("id");
    pass = document.getElementById("password");
    
    if(id.value == ""){
        alert("아이디를 입력해주세요.");
        id.focus();
        return false;
    }else if(pass.value == ""){
        alert("비밀번호를 입력해주세요.");
        pass.focus();
        return false;
    }else {
        loginForm.submit();
    }
}
/**
    결제 폼 체크
 */
 function payFormCheck(){
    let name, hp1, hp2, hp3, addr1, addr2, card1, card2, card3;
    name = document.getElementById("name");
    hp1 = document.getElementById("hp1");
    hp2 = document.getElementById("hp2");
    hp3 = document.getElementById("hp3");
    addr1 = document.getElementById("addr1");
    addr2 = document.getElementById("addr2");
    card1 = document.getElementById("card1");
    card2 = document.getElementById("card2");
    card3 = document.getElementById("card3");
    
    if(name.value == ""){
        alert("이름을 입력해주세요.");
        name.focus();
        return false;
    }else if(hp1.value =="" || hp2.value == "" || hp3.value == ""){
        alert("휴대폰번호를 입력해주세요.");
        hp2.focus();
        return false;
    }else if(addr1.value ==""){
        alert("주소를 입력해주세요.");
        addr1.focus();
        return false;
    }else if(addr2.value==""){
        alert("상세주소를 입력해주세요.");
        addr2.focus();
        return false;
    }else if(addr2.value==""){
        alert("상세주소를 입력해주세요.");
        addr2.focus();
        return false;
    }else if(card1.value =="" || card2.value == "" || card3.value == ""){
        alert("카드번호를 입력해주세요.");
        card1.focus();
        return false;
    }else{        
        payForm.submit();
    }
}
