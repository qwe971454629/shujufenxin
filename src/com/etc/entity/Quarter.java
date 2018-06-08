package com.etc.entity;

public class Quarter {
	private int id;
    private String quarter;
    private String number;
    
    
    
	public Quarter() {
		super();
	}
	public Quarter(int id, String quarter, String number) {
		super();
		this.id = id;
		this.quarter = quarter;
		this.number = number;
	}
	@Override
	public String toString() {
		return "Quarter [id=" + id + ", quarter=" + quarter + ", number=" + number + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQuarter() {
		return quarter;
	}
	public void setQuarter(String quarter) {
		this.quarter = quarter;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
    
    
    
}
