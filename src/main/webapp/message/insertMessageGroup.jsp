<%@page import="com.semi.message.vo.MessageGroup"%>
<%@page import="com.sample.dao.MessageGroupDao"%>
<%@page import="com.semi.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//직원번호,그룹이름,삭제여부,공유여부를 조회
	int groupNo = StringUtils.stringToInt(request.getParameter("groupNo"));
	int empNo = StringUtils.stringToInt(request.getParameter("empNo"));
	String groupName = request.getParameter("groupName");
	String deleted = request.getParameter("deleted");
	String groupShareable = request.getParameter("groupShareable");

	//MessageGroup객체를 생성해서 메시지그룹 정보를 저장한다.
	MessageGroup messageGroup = new MessageGroup();
	messageGroup.setEmpNo(empNo);
	messageGroup.setGroupName(groupName);
	messageGroup.setGroupNo(groupNo);
	messageGroup.setDeleted(deleted); 
	messageGroup.setGroupShareable(groupShareable);
	
	//MessageGroupDao객체를 생성하고, insertMessageGroup 실행해 메시지그룹 정보를 등록시킨다.
	MessageGroupDao messageGroupDao = new MessageGroupDao();
	messageGroupDao.insertMessageGroup(messageGroup);
	
	// 변경된 메시지그룹을 updateMessageGroup을 실행해 반영
	messageGroupDao.updateMessageGroup(messageGroup);
	
	// 추가/변경/삭제 작업 중 추가작업을 수행하였음으로 재요청 URL을 응답으로 보낸다.
	response.sendRedirect("home.jsp");
%>