<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "vo.UserVO, dao.UserDao"%>
    <%
    request.setCharacterEncoding("utf-8");
    UserDao dao = new UserDao();
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String number = request.getParameter("number");
    String result = dao.find_pass(id,name,number);

    if(result.equals("")){
        out.print("일치하는 정보가 없습니다");
    }else {
        response.sendRedirect("http://localhost:9000/FreshDay/find/find_pass_update.jsp");
    }
    %>
