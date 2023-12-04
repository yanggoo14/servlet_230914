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
		String[] lengthArr = request.getParameterValues("lengthtype"); 	
		
		
	%>
		<div class= "container">
			<h1>길이변환 결과</h1><br>
			<h3><%=length %>cm</h3>
		</div>
		<%
			String result = "";
				for(String lengthtype : lengthArr){
					if(lengthty ){
						
					}
				
			}
		%>
</body>
		
</html>