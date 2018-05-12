<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sum 1</title>
</head>
<body>
<%--20151079 강희진 --%>
<%@ include file="header.jsp" %>

12345 홍길동<Br>
<hr>
<%!
	int sum = 0;

	public int getSum(int sum){

   
 		  for(int i=1; i<=100; i++){
   			   sum += i;
 	 	 }
   
  	 return sum;
	}
%>

<p>1부터 100까지의 합은 <%= getSum(sum)%> 입니다</p>
</body>
</html>