<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- HTML주석 -->
	<%-- JSP주석(브라우저에서 사라져서 보이지 않음) --%>
	
	<%
		//자바 문법 시작
		//scriptlet
		int sum = 0;
		for(int i = 1; i <= 10; i++){
			sum += i;
		}
	%>
		<b>합계:</b>
		<input type="text" value="<%= sum %>">
		<br>
		
	<%!
		// 선언문 - 클래스 같은 느낌
		
		// 필드
		private int num = 100;
	
		// 메소드
		public String getHellowWorld() {
			return "Hellow world";
		}
	%>
		
		<%= getHellowWorld() %><br>
		<%= num + 20%>
		
		<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		%>
</body>
</html>