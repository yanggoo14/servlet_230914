<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jsp를 다루는 부분은 지우지 않고 나머지 지우기 -->

<p>
	현재 시간: <%=Calendar.getInstance().getTime() %>
</p>