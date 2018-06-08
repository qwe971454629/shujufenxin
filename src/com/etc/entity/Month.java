package com.etc.entity;

public class Month {
     private int id;
     private String month;
     private String number;
     
     
     
	public Month() {
		super();
	}
	public Month(int id, String month, String number) {
		super();
		this.id = id;
		this.month = month;
		this.number = number;
	}
	@Override
	public String toString() {
		return "Month [id=" + id + ", month=" + month + ", number=" + number + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
     
     
}
