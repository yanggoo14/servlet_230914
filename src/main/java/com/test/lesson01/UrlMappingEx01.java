package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet{
		
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {
		//한글 깨짐 방지 -> response header
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8"); 
		// 둘 중에 하나라도 누락되면 x 
		
		PrintWriter out = response.getWriter(); //throw처리를 해서 오류 해결
		out.println("안녕하세요");
		
		Date now = new Date();
		out.println(now);
		
		// formatter  원하는 날짜로 바꾸기
		// 2023-11-27 오후 17:05:43
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a HH:mm:ss");
		out.println(sdf.format(now));
	}
}
