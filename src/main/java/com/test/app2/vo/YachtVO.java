package com.test.app2.vo;

import org.springframework.web.multipart.MultipartFile;

public class YachtVO {
	private int yachtPk; // 요트 고유번호
	private String yachtName; // 요트 이름	
	private String yachtPic; //// ★사진 저장경로
	private String price; // 요트 가격	
	private String location; // 요트 (판매)위치
	private int year; // 제작연도
	private String length; // 길이
	private String beam; // 너비
	private String draft; // 드래프트(수면 상에서 선박의 가장 높은 지점까지의 높이)
	private int berths; //선실
	private int cabins; //객실
	private String boatType; //타입
	//[파일업로드▼]
	private MultipartFile uploadFile; //파일업로드 추가 (테이블x)
	//[검색▼]
	private String searchCondition; //검색조건 (테이블x)
	private String searchKeyword; //검색키워드 (테이블x)
	

	public int getYachtPk() {
		return yachtPk;
	}


	public void setYachtPk(int yachtPk) {
		this.yachtPk = yachtPk;
	}


	public String getYachtName() {
		return yachtName;
	}


	public void setYachtName(String yachtName) {
		this.yachtName = yachtName;
	}


	public String getYachtPic() {
		return yachtPic;
	}


	public void setYachtPic(String yachtPic) {
		this.yachtPic = yachtPic;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public int getYear() {
		return year;
	}


	public void setYear(int year) {
		this.year = year;
	}


	public String getLength() {
		return length;
	}


	public void setLength(String length) {
		this.length = length;
	}


	public String getBeam() {
		return beam;
	}


	public void setBeam(String beam) {
		this.beam = beam;
	}


	public String getDraft() {
		return draft;
	}


	public void setDraft(String draft) {
		this.draft = draft;
	}


	public int getBerths() {
		return berths;
	}


	public void setBerths(int berths) {
		this.berths = berths;
	}


	public int getCabins() {
		return cabins;
	}


	public void setCabins(int cabins) {
		this.cabins = cabins;
	}


	public String getBoatType() {
		return boatType;
	}


	public void setBoatType(String boatType) {
		this.boatType = boatType;
	}


	public String getSearchCondition() {
		return searchCondition;
	}


	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}


	public String getSearchKeyword() {
		return searchKeyword;
	}


	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}


	public MultipartFile getUploadFile() {
		return uploadFile;
	}


	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}


	@Override
	public String toString() {
		System.out.println("YachtVO 로그(yachtPic): "+yachtPic);
		return "YachtVO [yachtPk=" + yachtPk + ", yachtName=" + yachtName + ", price=" + price + ", location="
				+ location + ", year=" + year + ", length=" + length + ", beam=" + beam + ", draft=" + draft
				+ ", berths=" + berths + ", cabins=" + cabins + ", boatType=" + boatType + "]";
	}


}
