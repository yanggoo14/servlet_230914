<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz04_1</title>
</head>
<body>
	<%
		int length = Integer.valueOf(request.getParameter("length"));
		String[] types = request.getParameterValues("lengthtype"); 	
		
		
	%>
		<div class= "container">
			<h1>길이변환 결과</h1><br>
			<h3><%=length %>cm</h3>
			<hr>
			<h2>
			<%
				for(String lengthtype : types){
					if(lengthtype.equals("inch")){
						double inch = 0.393701 * length;
						out.print(inch + "in<br>");
					} else if(lengthtype.equals("yard")){
						double yard = 0.0109361 * length;
						out.print(yard + "yd<br>");
					} else if(lengthtype.equals("feet")){
						double feet= 0.0328084 * length;
						out.print(feet + "ft<br>");
					} else if(lengthtype.equals("meter")){
						double meter = length / 100.0;
						out.print(meter + "meter<br>");
					}
				}
			
			
			%>
			
			</h2>
		</div>
		
</body>
		
</html>