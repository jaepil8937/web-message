<%@page import="com.semi.message.vo.MessageGroup"%>
<%@page import="com.sample.dao.MessageGroupDao"%>
<%@page import="com.semi.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// 그룹 번호 조회
	int groupNo = StringUtils.stringToInt(request.getParameter("groupNo"));

	// MessageGroup객체를 생성하고,getMessageByGroupNo(int groupNo)를 실행해 정보 조회
	MessageGroupDao messageGroupDao = new MessageGroupDao();
	MessageGroup mg = messageGroupDao.getMessageGroupNo(groupNo);
	
	//공유여부를 Y로  변경
	mg.setGroupShareable("Y");
	messageGroupDao.updateMessageGroup(mg);
	
	// 재요청URL
	response.sendRedirect("home.jsp");

%>