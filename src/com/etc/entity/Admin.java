package com.etc.entity;

public class Admin {

	private int id;
	private String name;
	private String pwd;
	private String sex;
	private String email;
	private String mobile;
	private String image;	
	private int status;
	private String addtime;
	
	public Admin() {
		// TODO Auto-generated constructor stub
	}
	
	public Admin(String name, String pwd, String sex, String email, String mobile, String image, int status) {
		super();
		this.name = name;
		this.pwd = pwd;
		this.sex = sex;
		this.email = email;
		this.mobile = mobile;
		this.image = image;
		this.status = status;
	}

	public Admin(int id, String name, String pwd, String sex, String email, String mobile, String image, int status) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.sex = sex;
		this.email = email;
		this.mobile = mobile;
		this.image = image;
		this.status = status;
	}

	public Admin(int id, String name, String sex, String email, String mobile, String image) {
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.email = email;
		this.mobile = mobile;
		this.image = image;
	}
	
	public Admin(int id, String pwd) {
		super();
		this.id = id;
		this.pwd = pwd;
	}
	
	@Override
	public String toString() {
		return "Admin [id=" + id + ", name=" + name + ", pwd=" + pwd + ", sex=" + sex + ", email=" + email + ", image="
				+ image + ", status=" + status + ", addtime=" + addtime + "]";
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

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getAddtime() {
		return addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
