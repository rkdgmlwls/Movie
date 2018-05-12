<%--20151079 강희진 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%
	String id = null;
	if (session.getAttribute("id") == null) {
		response.sendRedirect("login.html");
	} else {
		id = (String) session.getAttribute("id");
	}

	// HTML 폼에서 전달된  cap 값을 가지고 옴
	String cap = request.getParameter("cap");

	// 메시지 저장을 위해 application 에서 caps 로 저장된 ArrayList 가지고 옴
	ArrayList<String> caps = (ArrayList<String>) application.getAttribute("caps");

	// null 인 경우 새로운 ArrayList 객체를 생성
	if (caps == null) {
		caps = new ArrayList<String>();
		// application 에 ArrayList 저장
		application.setAttribute("caps", caps);
	}
	// 톰캣 콘솔을 통한 로깅
	application.log(caps + "추가됨");

	// 목록 화면으로 리다이렉팅
	response.sendRedirect("cap_list.jsp");
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>member.jsp</title>
</head>
<body>
	<h2>로그인한 회원들만 볼 수 있는 페이지입니다</h2>
	<hr>
	환영합니다!
	<%=id%>님
	
	<br>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>
