package com.etc.entity;

public class Verify {

	private int id;
	private String name;
	private String password;
	private String email;
	private String mobile;
	private String addtime;
	
	public Verify() {
		// TODO Auto-generated constructor stub
	}
	
	public Verify(String name, String password, String email, String mobile) {
		super();
		this.name = name;
		this.password = password;
		this.email = email;
		this.mobile = mobile;
	}

	@Override
	public String toString() {
		return "Verify [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", mobile="
				+ mobile + ", addtime=" + addtime + "]";
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddtime() {
		return addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}
	
}
