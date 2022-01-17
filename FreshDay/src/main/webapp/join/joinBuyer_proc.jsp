<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="vo.UserVO, dao.UserDao"%>
    
    <% request.setCharacterEncoding("utf-8"); %>
    <jsp:useBean id="vo" class="vo.UserVO"></jsp:useBean>
    <jsp:setProperty property="*" name="vo"/>
<%
    UserDao dao = new UserDao();
    int result = dao.buyer_insert(vo);
    
    if(result == 1){
        System.out.println("회원가입 성공");
        response.sendRedirect("../login/login.jsp?join_result=succ");
    }else{
        System.out.println("회원가입 실패");
    }
%>