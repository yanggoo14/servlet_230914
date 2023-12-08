package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	private static MysqlService mysqlService = null;
	
	// 도메인 뒤에 접속할 데이터베이스명까지 적는다.
	//mysql 들어가서 호스트주소 확인해서 적기
	private static final String url = "jdbc:mysql://localhost:3306/test_230914";
	private static final String id = "root";
	private static final String password = "root";
	
	private Connection conn = null;
	private Statement statement;
	private ResultSet res;
	
	// Singleton 패턴: mysqlService라는 객체가 단 하나만 생성되도록 하는 디자인 패턴
	// DB연결을 여러 객체에서 하지 않도록
	
	public static MysqlService getInstance() {
		if(mysqlService == null) {   //mysqlservice가 null이면 
			mysqlService = new MysqlService(); // 한번만 new 선언
		}
		
		return mysqlService;
	}
	
	//DB접속    
	public void connect() {
		try {
			//try catch로 에러 내가 해결
			//1. 드라이버 메모리에 로딩
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			//2. DB Connection
			conn = DriverManager.getConnection(url, id, password);
			//null값인  conn에 아이디 비번 저장
			
			//3. 쿼리 실행 준비 => Statement
			statement = conn.createStatement();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	
	//DB연결해제    (거꾸로 statement, conn 순서로 닫아주기 (내스스로 try catch로 오류해결))
	public void disconnect() {
		try {
			statement.close();
			conn.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	
	//CUD   (throw로 던져서 오류해결)
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
	
	
	//R  (throw로 던져서 오류해결)
	public ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query);
		return res;
	}
	
}
