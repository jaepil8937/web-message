package com.semi.message.vo;

import java.util.Date;

public class MessageGroup {
	private int groupNo; //그룹번호
	private String groupName; //그룹이름
	private String deleted; //삭제여부
	private Date groupCreatedDate; //등록일
	private Date groupUpdatedDate; //수정일
	private Date groupDeletedDate; //삭제일
	private String groupShareable; //공유여부
	private int empNo; //직원번호
	
	public MessageGroup() {

	}

	public int getGroupNo() {
		return groupNo;
	}

	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public String getDeleted() {
		return deleted;
	}

	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}

	public Date getGroupCreatedDate() {
		return groupCreatedDate;
	}

	public void setGroupCreatedDate(Date groupCreatedDate) {
		this.groupCreatedDate = groupCreatedDate;
	}

	public Date getGroupUpdatedDate() {
		return groupUpdatedDate;
	}

	public void setGroupUpdatedDate(Date groupUpdatedDate) {
		this.groupUpdatedDate = groupUpdatedDate;
	}

	public Date getGroupDeletedDate() {
		return groupDeletedDate;
	}

	public void setGroupDeletedDate(Date groupDeletedDate) {
		this.groupDeletedDate = groupDeletedDate;
	}

	public String getGroupShareable() {
		return groupShareable;
	}

	public void setGroupShareable(String groupShareable) {
		this.groupShareable = groupShareable;
	}

	public int getEmpNo() {
		return empNo;
	}

	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}

	@Override
	public String toString() {
		return "MessageGroup [groupNo=" + groupNo + ", groupName=" + groupName + ", deleted=" + deleted
				+ ", groupCreatedDate=" + groupCreatedDate + ", groupUpdatedDate=" + groupUpdatedDate
				+ ", groupDeletedDate=" + groupDeletedDate + ", groupShareable=" + groupShareable + ", empNo=" + empNo
				+ "]";
	}
	
	

}
