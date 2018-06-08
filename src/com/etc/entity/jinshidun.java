package com.etc.entity;

public class jinshidun {
       private int id;
       private String name;
       private String shuliang;
       
       
       
	public jinshidun() {
		super();
	}
	public jinshidun(int id, String name, String shuliang) {
		super();
		this.id = id;
		this.name = name;
		this.shuliang = shuliang;
	}
	@Override
	public String toString() {
		return "jinshidun [id=" + id + ", name=" + name + ", shuliang=" + shuliang + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getShuliang() {
		return shuliang;
	}
	public void setShuliang(String shuliang) {
		this.shuliang = shuliang;
	}
       
       
       
       
	
       
}
