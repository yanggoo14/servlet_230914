package com.test.lesson01;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz10")
public class PostMethodQuiz10 extends HttpServlet{
	// doPost 메소드 바깥쪽에 위치
		private final Map<String, String> userMap =  new HashMap<String, String>() {
		    {
		        put("id", "marobiana");
		        put("password", "qwerty1234");
		        put("name", "신보람");
		    }
		};
		
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/html");
		
		String id = request.getParameter("Id");
		String password = request.getParameter("password");
		
		
	}
	
}
