package com.springPropertyRental.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Application {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
	private int propertyId;
    private String fullName;
    private String email;
    private String phone;
    private String address;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPropertyId() {
		return propertyId;
	}
	public void setPropertyId(int propertyId) {
		this.propertyId = propertyId;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public Application() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Application(int id, int propertyId, String fullName, String email, String phone, String address) {
		super();
		this.id = id;
		this.propertyId = propertyId;
		this.fullName = fullName;
		this.email = email;
		this.phone = phone;
		this.address = address;
	}
	
    
    

}
