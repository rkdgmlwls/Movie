<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sum2 </title>
</head>
<body>
<%--20151079 강희진 --%>

<%!
	int sum = 0;

		public int getSum(int sum){

	
			for(int i=1; i<=100; i++){
				sum += i;
		}
	
		return sum;
	}

%>
<p><%= getSum(sum)%></p>
</body>
</html>