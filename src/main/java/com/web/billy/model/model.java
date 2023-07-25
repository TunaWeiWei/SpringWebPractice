package com.web.billy.model;

public class model {
	private int id, age, tel, cellphone, customer ;
	private String account, username,email,password, eatingTime;
	
	public model(int id, String account, String username, String password, int age, int tel, int cellphone, String email, int customer, String eatingTime) {
		this.id = id; this.account = account;
		this.username = username; this.password = password;
		this.age = age; this.tel = tel; this.cellphone = cellphone;
		this.email = email;
		this.customer = customer;
		this.eatingTime = eatingTime;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAge() {
		return age;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	
	public int getTel() {
		return tel;
	}
	public void setTel(int tel) {
		this.tel = tel;
	}
	
	public int getCellphone() {
		return cellphone;
	}
	public void setCellphone(int cellphone) {
		this.cellphone = cellphone;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getcustomer() {
		return customer;
	}
	public void setcustomer(int customer) {
		this.customer = customer;
	}
	
	public String geteatingTime() {
		return eatingTime;
	}
	public void seteatingTime(String eatingTime) {
		this.eatingTime = eatingTime;
	}
	
	@Override
	public String toString() {
		return account + ":" + username;
	}
}