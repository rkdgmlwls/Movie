<%--20151079 강희진 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	// 한글 캐릭터셋 변환
	request.setCharacterEncoding("UTF-8");
	// HTML 폼에서 cap으로 전달된 값을 가지고 옴 
	String username = request.getParameter("cap");
%>

<html>
<head>
<title>cap_list.jsp</title>
</head>
<body>
	<div align=center>
		<hr>
		환영합니다!
		<h2>로그인한 회원들만 볼 수 있는 페이지입니다</h2>
		<H3>장바구니</H3>
		<HR>
		<form action="member.jsp" method="POST">
			<!-- 세션에 저장된 물품 출력 -->
			<%=session.getAttribute("cap")%><select name="상품">
				<option selected>cap1</option>
				<option>cap2</option>
				<option>cap3</option>
				<option>cap4</option>
			</select> <input type="submit" value="장바구니에 담기">
		</form>

		<div align="left">
			<UL>
				<%
					// application 내장객체를 통해 caps 로 저장된 ArrayList를 가지고 옴
					ArrayList<String> caps = (ArrayList<String>) application.getAttribute("cap");

					//cap이 null 이 아닌 경우에만 목록 출력
					if (caps != null) {
						for (String cap : caps) {
							out.println("<LI>" + cap + "</LI>");
						}
					}
				%>

				<body>
					<hr>
					<a href="review.jsp">리뷰쓰기</a>
					<a href="logout.jsp">로그아웃</a>

				</body>
			</UL>
		</div>
	</div>
</body>
</html>


