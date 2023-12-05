<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 사용</title>
</head>
<body>
	<%
		//Map을 테이블로 표현하기
		// {"키" = 값}  (jsp에는 :을 =로쓴다.)
		//{"korean"=85 , "english"=72, "math"=90, "science"=100}
		Map<String, Integer> scoreMap = new HashMap<>();
		scoreMap.put("korean",85);
		scoreMap.put("english",72);
		scoreMap.put("math",90);
		scoreMap.put("science",100);

	%>
	<!-- tr안을 반복문으로 반복 -->
		<table border="1">
		<%
				Iterator<String> iter = scoreMap.keySet().iterator();
				while(iter.hasNext()){
					String key = iter.next(); // 과목명 = 맵의 키
			%>
			<tr>
				<th>
					<%
						if(key.equals("korean")){
							out.print("국어");
						} else if(key.equals("english")){
							out.print("영어");
						} else if(key.equals("math")){
							out.print("수학");
						} else if(key.equals("science")){
							out.print("과학");
						}
					%>
				</th>    <!-- th부분에 key값 가져오기 -->
				<td><%=scoreMap.get(key) %></td>
			</tr>
			<%
				}
		%>
		
		</table>
	
</body>
</html>