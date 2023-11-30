package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		//response.setContentType("text/plain");
		response.setContentType("text/json");
		
		// add comment
		
		// Request Parameter 
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age =  Integer.parseInt(request.getParameter("age"));  // string이기떄문에 바로 숫자로 바꿔주기
		//에러발생(age를 받지않는 위 링크들은 null을 변환하기 때문에 에러발생)
		
		PrintWriter out = response.getWriter();

		// {"user_id":"yanggoo14" , "name":"양준우", "age":26}
		out.println("{\"user_id\": \"" + userId + "\", \"name\":\"" + name
				+ "\" , \"age\":" + age + "}");
		
	}
}
