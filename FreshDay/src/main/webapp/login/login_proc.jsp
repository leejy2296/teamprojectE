<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="vo.UserVO, dao.UserDao"%>
<jsp:useBean id="vo"  class="vo.UserVO"></jsp:useBean> 
<jsp:setProperty property="*" name="vo"/>

<%
    UserDao dao = new UserDao();
    int result = dao.loginResult(vo);
    
    
    if(result == 1){
        //로그인 성공---> id를 세션에 담아 브라우저에 전송
        session.setAttribute("sid", vo.getId());        
        response.sendRedirect("http://localhost:9000/FreshDay/login/login.jsp?login_result=true");
    }else{
        response.sendRedirect("http://localhost:9000/FreshDay/login/login.jsp?login_result=fail");
    }
    
%>