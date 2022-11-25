package com.spring.tour.vo;

public class DataVO {
	// db 변수
	private int id;				// 데이터번호(자동생성)
	private String region;			// 구(페이지에 표시 안되는 것, db에서 구분하기 위해 추가 및 get할때 쓰는 용도)
	private String location;		// 관광지명
	private String price;			// 입장료
	private String opentime;		// 영업시간
	private String info;		// 간단정보(인트로 페이지에 사용)
	private String address;		// 주소지
	
	public DataVO() {}

	public DataVO(int id, String region, String location, String price, String opentime, String info, String address) {
		super();
		this.id = id;
		this.region = region;
		this.location = location;
		this.price = price;
		this.opentime = opentime;
		this.info = info;
		this.address = address;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	// getter 생성	
	public int getId() {
		return id;
	}

	public String getRegion() {
		return region;
	}

	public String getLocation() {
		return location;
	}

	public String getPrice() {
		return price;
	}

	public String getOpentime() {
		return opentime;
	}

	public String getInfo() {
		return info;
	}
	
	public String getAddress() {
		return address;
	}

	@Override
	public String toString() {
		return "DetailData [id=" + id + ", region=" + region + ", location=" + location + ", price=" + price
				+ ", opentime=" + opentime + ", info=" + info + ", address=" + address + "]" ;
	}
}