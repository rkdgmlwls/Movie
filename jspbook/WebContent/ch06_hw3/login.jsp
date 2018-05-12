<%--20151079 강희진 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login.jsp</title>
</head>
<body>
	<%
         String id = "admin";
         String pw = "1234";
         if(id.equalsIgnoreCase(request.getParameter("id"))) {
                 session.setAttribute("id", request.getParameter("id"));
                 response.sendRedirect("member.jsp");
         }
         else {
 %>
	<script type="text/javascript">
         alert("아이디 또는 패스워드가 틀렸습니다");
                 location.href = 'login.html';
         </script>
	<%
         }
 %>

</body>
</html>
