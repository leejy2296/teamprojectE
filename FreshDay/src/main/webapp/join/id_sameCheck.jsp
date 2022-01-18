<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "vo.UserVO, dao.UserDao"%>
    <%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("userid");
    UserDao dao = new UserDao();
    int result = dao.id_check(id);
    
    if (result == 0){
        %>
    <link href="http://localhost:9000/FreshDay/css/freshday.css" rel="stylesheet">
    <link href="http://localhost:9000/FreshDay/css/bootstrap.css" rel="stylesheet">
    <script src="http://localhost:9000/FreshDay/js/freshday.js"></script> 
        <div class="idsamecheck">
        <label class="form-label">사용가능한 아이디입니다.</label>
        <br>
        <input type="button" value="닫기" onclick="window.close()" class="btn btn-secondary">
        </div>
       <%
    }else if(result == 1){
        %>
        <link href="http://localhost:9000/FreshDay/css/freshday.css" rel="stylesheet">
        <link href="http://localhost:9000/FreshDay/css/bootstrap.css" rel="stylesheet">
        <script src="http://localhost:9000/FreshDay/js/freshday.js"></script> 
            <div class="idsamecheck">
            <label class="form-label">중복되거나 탈퇴한 아이디입니다.</label>
            <br>
            <input type="button" value="닫기" onclick="window.close()" class="btn btn-secondary">
            </div>
           <%
    }else{
        out.print("에러 발생!!!(-1)"); 
    }
    %>
