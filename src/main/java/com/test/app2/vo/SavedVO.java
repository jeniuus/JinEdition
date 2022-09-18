package com.test.app2.vo;

public class SavedVO {
	private int savedPk;
	private String memId;
	private int yachtPk;
	
	public int getSavedPk() {
		return savedPk;
	}
	public void setSavedPk(int savedPk) {
		this.savedPk = savedPk;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getYachtPk() {
		return yachtPk;
	}
	public void setYachtPk(int yachtPk) {
		this.yachtPk = yachtPk;
	}
	@Override
	public String toString() {
		return "SavedVO [savedPk=" + savedPk + ", memId=" + memId + ", yachtPk=" + yachtPk + "]";
	}
	
	
}
