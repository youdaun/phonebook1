<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>

<%
	//Dao 메모리에 올림
	PhoneDao phoneDao = new PhoneDao();
	
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	int id = Integer.parseInt(request.getParameter("id"));
	
	PersonVo pvo = new PersonVo(name, hp, company);
	phoneDao.PersonUpdate(id, pvo);
	response.sendRedirect("./list.jsp");
%>