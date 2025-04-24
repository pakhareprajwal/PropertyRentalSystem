package com.springPropertyRental.Service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Base64;

import javax.persistence.Lob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.springPropertyRental.Model.Property;
import com.springPropertyRental.repository.propertyrepo;


@Service
public class PropertyService {
	@Autowired
	private propertyrepo prepo;
	@Lob
	private String images;

	
	public void  savePropertyToDB(MultipartFile file,String title,String description,String price,String address,String type,String area,String availability)
	{
		Property p = new Property();
		
		String fileName = System.currentTimeMillis()+" "+file.getOriginalFilename();
		String uploadDir = "src/main/webapp/images/";
	    File uploadPath = new File(uploadDir);
	    
	    if (!uploadPath.exists()) {
	        uploadPath.mkdirs();
	    }

	    try (FileOutputStream fos = new FileOutputStream(uploadDir + fileName)) {
	        fos.write(file.getBytes());
	        p.setImages("images/" + fileName); 
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	    
		p.setTitle(title);
		p.setDescription(description);
		p.setPrice(price);
		p.setDescription(description);
		p.setAddress(address);
		p.setType(type);
		p.setArea(area);
		p.setAvailability(availability);
		p.setImages("images/" + fileName); 
		
		prepo.save(p);
	}
}
