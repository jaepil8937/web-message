<%@page import="com.semi.message.vo.MessageGroup"%>
<%@page import="com.sample.dao.MessageGroupDao"%>
<%@page import="com.semi.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	//수정폼의 입력값을 요청객체에서 가져온다
	int groupNo = StringUtils.stringToInt(request.getParameter("groupNo"));
	int empNo = StringUtils.stringToInt(request.getParameter("empNo"));
	String groupName = request.getParameter("groupName");
	String deleted = request.getParameter("deleted");
	String groupShareable = request.getParameter("groupShareable");
	
	//MessageGroupDao객체를 생성하고, getMessageGroupsByGroupNo을 실행해 메시지그룹번호에 해당하는 메시지그룹정보를 조회
	MessageGroupDao messageGroupDao = new MessageGroupDao();
	messageGroupDao.getMessageGroupNo(groupNo);
	
	//수정된 메세지그룹정보를 변경시킨다.
	MessageGroup messageGroup = new MessageGroup();
	messageGroup.setEmpNo(empNo);
	messageGroup.setGroupName(groupName);
	messageGroup.setGroupNo(groupNo);
	messageGroup.setDeleted(deleted); 
	messageGroup.setGroupShareable(groupShareable);
	
	// 변경된 메시지그룹을 updateMessageGroup을 실행해 반영
	messageGroupDao.updateMessageGroup(messageGroup);
	
	// 추가/변경/삭제 작업 중 추가작업을 수행하였음으로 재요청 URL을 응답으로 보낸다.
	response.sendRedirect("home.jsp");
%>