<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
</head>
<body>
	<%
		String nickname = request.getParameter("nickname");
		String hobby = request.getParameter("hobby");
		String animal = request.getParameter("animal");
		String fruit = request.getParameter("fruit");
		String[] foodArr = request.getParameterValues("food");
		// 여러개를 가져오기 때문에 배열형태로 받아와야한다
	%>
	<table border="1">
		<tr>
			<th>별명</th>
			<td><%=nickname %></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%=hobby %></td>
		</tr>
		<tr>
			<th>선호하는 동물</th>
			<td><%=animal %></td>
		</tr>
		<tr>
			<th>좋아하는 과일</th>
			<td><%= fruit%> 
			</td>
		</tr>
		<tr>
			<th>선호하는 음식</th>
			<td>
			<%
				String result = ""; 
				
				if(foodArr != null){  // 아무것도 선택하지 않았을때 오류 해결 
				for(String food : foodArr){
					result += food + ",";
					
				}
				result = result.substring(0, result.length() - 1);
				out.print(result);
				}
				
			%></td>
		</tr>
	</table>
</body>
</html>