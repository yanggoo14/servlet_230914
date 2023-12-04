<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz02_1</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
		String type = request.getParameter("type");
		Date now = new Date();
		String result = null; //위에서 일단 값 지정
		SimpleDateFormat sdf = null; //코드 줄이기 if문 밖에서 null로 일단 지정
		
		if(type.equals("time")){
			 sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초입니다");
			
		} else{        //date
			
		   sdf = new SimpleDateFormat("오늘 날짜는 yyyy년 MM월 dd일입니다");
			
		}
		result = sdf.format(now);
		// out.print("<h1>" + result + "</h1>");
		
	%>
	<div class="container">
	<div class="display-3"><%=result %></div>	
	<!-- 글자크기(부트스트랩) -->
	</div>
</body>
</html>