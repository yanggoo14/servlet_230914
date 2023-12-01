<%@page import="java.util.Scanner"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<%! //1번 1부터 n까지의 합계
		public int sum(int n){
		int sum = 0;
		for(int i = 0; i < n; i++){
			sum += i;
		}
		return sum;
	}
	%>	
	<h1>1부터 50까지 합계는<%=sum(50) %>입니다</h1>
	

	<% // 2번 점수 평균구하기
	int[] scores = {80, 90, 100, 95, 80};
	 int sum = 0;
	double avg = 0;
	
		for(int i = 0; i < scores.length; i++){
			sum += scores[i];
			avg = sum / scores.length;
		}
	%>
	<br><h1>평균점수는 <%=avg%>입니다.</h1>
	

	<% //3번 채점 결과
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;
	
	for(int i = 0; i < scoreList.size(); i++){
		if(scoreList.get(i).equals("O")){
			score += 10;
		}
	}
	%>
	<h1>채점 결과는 <%= score %>입니다.</h1>


	<% //4번 나이 구하기
	String birthDay = "20010820";
	String birthStr = birthDay.substring(0, 4);
	int birth = Integer.valueOf(birthStr);
	//out.print(birthStr);  printwriter 내장되어있어서 간단하게 볼 수 있음
	int age = 2023 - birth +1 ;
	%>
	<h1>20010820 나이는 <%=age %>세 입니다.</h1>



</body>
</html>