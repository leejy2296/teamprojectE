<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "vo.UserVO, dao.UserDao"%>
    <%
    request.setCharacterEncoding("utf-8");
    UserDao dao = new UserDao();
    String name = request.getParameter("name");
    String number = request.getParameter("number");
    String result = dao.find_id(name,number);

    if(result.equals("")){
        out.print("일치하는 정보가 없습니다");
    }else {
        
        %>
        <link href="http://localhost:9000/FreshDay/css/freshday.css" rel="stylesheet">
        <link href="http://localhost:9000/FreshDay/css/bootstrap.css" rel="stylesheet">
        <script src="http://localhost:9000/FreshDay/js/freshday.js"></script> 
        <div class="idsamecheck">
        <label>찾으신 유저 ID는 [<%= result %>] 입니다.</label>
        <br>
        <input type="button" value="닫기" onclick="window.close()" class="btn btn-secondary">
        </div>
        <%
    }
    %>
