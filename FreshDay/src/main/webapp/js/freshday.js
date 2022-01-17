/**
 * 공란 체크
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
function numberMax(el, maxlength){
     if(el.value.length > maxlength)  {
     el.value = el.value.substr(0, maxlength);
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
* 중복값 검사
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
    if(sno1.value =="" || sno2.value == "" || sno3.value == ""){
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
    }else if(hp1.value == ""||hp2.value == ""||hp3.value == ""){
        alert("핸드폰 번호를 입력해주세요.")
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
    }else if(name.value==""){
        alert("이름을 입력해주세요.");
        name.focus();
    }else if(hp1.value == ""||hp2.value == ""||hp3.value == ""){
        alert("핸드폰 번호를 입력해주세요.")
    }else {
        window.open("find_pass_check.jsp?id="+id.value+"&name="+name.value+"&number="+hp1.value+hp2.value+hp3.value,"","width=300, height=100");
    }
   }
    

