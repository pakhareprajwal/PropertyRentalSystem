package com.springPropertyRental.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int sr_no;
	private String name;
	private String email;
	private String password;
	private String cpassword;
	private String phone;
	private String address;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int sr_no, String name, String email, String password, String cpassword, String phone, String address) {
		super();
		this.sr_no = sr_no;
		this.name = name;
		this.email = email;
		this.password = password;
		this.cpassword = cpassword;
		this.phone = phone;
		this.address = address;
	}
	public int getSr_no() {
		return sr_no;
	}
	public void setSr_no(int sr_no) {
		this.sr_no = sr_no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "User [sr_no=" + sr_no + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", cpassword=" + cpassword + ", phone=" + phone + ", address=" + address + "]";
	}
	


}
