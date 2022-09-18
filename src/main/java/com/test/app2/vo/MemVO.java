package com.test.app2.vo;

public class MemVO {
	private String memId;
	private String memPw;
	private String memName;
	private String memEmail;
	private int memDistin;
	
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPw() {
		return memPw;
	}
	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public int getMemDistin() {
		return memDistin;
	}
	public void setMemDistin(int memDistin) {
		this.memDistin = memDistin;
	}
	
	@Override
	public String toString() {
		return "MemVO [memId=" + memId + ", memPw=" + memPw + ", memName=" + memName + ", memEmail=" + memEmail
				+ ", memDistin=" + memDistin + "]";
	}
	
}
