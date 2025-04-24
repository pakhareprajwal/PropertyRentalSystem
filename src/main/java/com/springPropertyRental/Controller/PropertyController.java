package com.springPropertyRental.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.springPropertyRental.Model.Property;
import com.springPropertyRental.Service.PropertyService;
import com.springPropertyRental.repository.propertyrepo;


@Controller
public class PropertyController {
	@Autowired
	private propertyrepo prepo;
	@Autowired
	private PropertyService pservice;
	
	@RequestMapping("/addProperty")
	public String addProperty(@ModelAttribute Property p)
	{
		prepo.save(p);
		return "addProperty.jsp";
	}
	
	@RequestMapping("/datafetch")
	public String ShowProperty(Model m)
	{
		List<Property> pro = prepo.findAll();
		m.addAttribute("property", pro);
		return "ShowProperty.jsp";
	}
	
	@PostMapping("/addPro")
	public String showAddProperty()
	{
		return "ShowProperty.jsp";
	}
	
	@PostMapping("/addP")
	public String saveProperty(@RequestParam("file") MultipartFile f, @RequestParam("title") String title,@RequestParam("price") String price, @RequestParam("description") String description,
			@RequestParam String address,@RequestParam String type, @RequestParam String area,@RequestParam String availability)
	{
		
		pservice.savePropertyToDB(f, title, description, price, address, type, area, availability);
		return "redirect:/datafetch";
	}
	
	@GetMapping("/userDashboard")
	public String showUserDashboard(Model model) {
	    List<Property> prort = prepo.findAll();
	    model.addAttribute("property1", prort);
	    return "userDash.jsp"; 
	}
	
	@RequestMapping("/deleteproperty/{id}")
	public String deleteproperty(@PathVariable int id)
	{
		prepo.deleteById(id);
		return "redirect:/datafetch";
	}
	
	@GetMapping("/propertyDash")
	public String showDashboard(@RequestParam(value = "keyword", required = false) String keyword, Model model) {
	    List<Property> properties;
	    if (keyword != null && !keyword.trim().isEmpty()) {
	        properties = prepo.findByTitleContainingIgnoreCaseOrAddressContainingIgnoreCase(keyword, keyword);
	    } else {
	        properties = prepo.findAll();
	    }
	    model.addAttribute("property1", properties);
	    return "userDash.jsp";
	}

}
