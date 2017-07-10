package com.dgit.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ProjectVO {
	private int code;
	private String name;
	private String content;
	private Date beginDate;
	private Date endDate;
	private String state;
	
	
	public ProjectVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getBeginDate() {
		return beginDate;
	}
	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "JspProject [code=" + code + ", name=" + name + ", content=" + content + ", beginDate=" + beginDate
				+ ", endDate=" + endDate + ", state=" + state + "]";
	}
	
	
	

	
	



	
}
