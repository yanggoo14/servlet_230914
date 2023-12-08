package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class Lesson04Quiz01 extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		//DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		//DB 인서트
		/*String insertQuery = "insert into `real_estate`"
				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`)"
				+ "values"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', '1500000', null);";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}*/
		
		//DB 셀렉트, 출력
		PrintWriter out = response.getWriter();
		String query = "select * from `real_estate`";
		
		try {
			ResultSet res = ms.select(query);
			while(res.next()) {
				out.println("매물주소: " + res.getString("address") + " 면적: " + res.getInt("area") + " 타입: " + res.getString("type"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//연결해제
		ms.disconnect();
	
	
	}
}
