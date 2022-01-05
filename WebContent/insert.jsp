<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo"%>
<%@ page import="com.javaex.dao.PhoneDao"%>

<%
	//PhoneDao를 메모리에 올린다
	PhoneDao phoneDao = new PhoneDao();

	//저장관련//
	
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	/* 테스트
	System.out.println(name);
	System.out.println(hp);
	System.out.println(company);
	*/
	
	//전송된 값(파라미터)을 Vo객체로 만든다
	PersonVo personVo = new PersonVo(name, hp, company);
	
	//저장
	phoneDao.PersonInsert(personVo);
	
	//리다이렉트
	response.sendRedirect("./list.jsp");
%>

