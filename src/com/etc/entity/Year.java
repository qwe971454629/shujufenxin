package com.etc.entity;

public class Year {
	private int id;
    private String year;
    private String number;
    
    
    

	public Year() {
		super();
	}
	public Year(int id, String year, String number) {
		super();
		this.id = id;
		this.year = year;
		this.number = number;
	}
	@Override
	public String toString() {
		return "Year [id=" + id + ", year=" + year + ", number=" + number + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
    
    
    
	
}
