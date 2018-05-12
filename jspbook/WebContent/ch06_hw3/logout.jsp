<%--20151079 강희진 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>logout.jsp</title>
</head>
<body>
	<%
         session.invalidate();
 %>
	<script>
                 alert("로그아웃되었습니다");
                 location.href="login.html";
         </script>

</body>
</html>
