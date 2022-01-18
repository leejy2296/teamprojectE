<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="vo.UserVO, dao.UserDao"%>
    
    <% request.setCharacterEncoding("utf-8"); %>
    <jsp:useBean id="vo" class="vo.UserVO"></jsp:useBean>
    <jsp:setProperty property="*" name="vo"/>
<%
	UserDao dao = new UserDao();
	int result = dao.seller_insert(vo);
	
	if(result == 1){
	    response.sendRedirect("http://localhost:9000/FreshDay/login/login.jsp?join_result=succ");
	}else{
	    response.sendRedirect("http://localhost:9000/FreshDay/login/login.jsp?join_result=fail");
	}
%>