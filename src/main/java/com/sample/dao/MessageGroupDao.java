package com.sample.dao;


import com.semi.message.vo.MessageGroup;
import com.semi.util.SqlMapper;

public class MessageGroupDao {
	
	public void insertMessageGroup(MessageGroup messageGroup) {
		SqlMapper.insert("insertMessageGroup", messageGroup);
	}
	
	public MessageGroup getMessageGroupNo(int groupNo) {
		return (MessageGroup) SqlMapper.selectOne("getMessageGroupNo", groupNo);
	}
	

	
	public void updateMessageGroup(MessageGroup messageGroup) {
		SqlMapper.update("updateMessageGroup", messageGroup);
	}
	
	public void deleteMessageGroup(int groupNo) {
		SqlMapper.delete("deleteMessageGroup", groupNo);
	}
}
