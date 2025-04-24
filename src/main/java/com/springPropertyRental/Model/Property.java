package com.springPropertyRental.Model;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Property {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int sr_no;
	private String title;
    private String description;
    private String address;
    private String price;
    private String type;
    private String area;
    private String availability;
    @Lob
    private String images; 
    
    public int getSr_no() {
		return sr_no;
	}
	public void setSr_no(int sr_no) {
		this.sr_no = sr_no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getAvailability() {
		return availability;
	}
	public void setAvailability(String availability) {
		this.availability = availability;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public Property() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Property(int sr_no, String title, String description, String address, String price, String type, String area,
			String availability, String images) {
		super();
		this.sr_no = sr_no;
		this.title = title;
		this.description = description;
		this.address = address;
		this.price = price;
		this.type = type;
		this.area = area;
		this.availability = availability;
		this.images = images;
	}
	
	
    
}
