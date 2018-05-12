<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sum2 결과출력</title>
</head>
<body>
<%--20151079 강희진 --%>
<%@ include file="header.jsp" %>

12345 홍길동
<hr>
<table>
	<tr>
		<td>1부터 100까지의 합은</td>
		<td> <%@include file="sum2.jsp" %></td>
		<td> 입니다</td>
	</tr>
</table>
</body>
</html>