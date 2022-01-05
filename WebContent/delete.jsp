<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>

<%
	//Dao 메모리에 올림
	PhoneDao phoneDao = new PhoneDao();

	int id = Integer.parseInt(request.getParameter("id"));
	phoneDao.PersonDelete(id);
	response.sendRedirect("./list.jsp");
%>