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

import com.springPropertyRental.Model.Application;
import com.springPropertyRental.repository.ApplicationRepository;

@Controller
public class ApplicationController {
	
	 @Autowired
	    private ApplicationRepository applicationRepo;

	 	//@GetMapping("/apply/{propertyId}")
	    @GetMapping("/{propertyId}")
	    public String showForm(@PathVariable int propertyId,Model model) {
	        Application application = new Application();
	        application.setPropertyId(propertyId);
	        model.addAttribute("application", application);
	        return "application.jsp";
	    }

	    @PostMapping("/submit")
	    public String submitForm(@ModelAttribute Application application) {
	        applicationRepo.save(application);
	        return "redirect:/userDash";
	    }
	    
	    @RequestMapping("/AppFetch")
	    public String FetchApplication(Model m) {
	        List<Application> app_d = applicationRepo.findAll();
	        System.out.print(app_d);
	        m.addAttribute("apply", app_d);
	        return "userApplication.jsp";
	    }

	    @GetMapping("/deleteproperty/{id}")
		public String deleteApplication(@PathVariable int id) {
		    applicationRepo.deleteById(id);
		    return "redirect:/AppFetch";
		}
	    
	    
//	    @RequestMapping("/appFetch")
//	    public String ShowApplication(Model m)
//	    {
//	    	List<Application> app = applicationRepo.findAll();
//	    	m.addAttribute("application", app);
//	    	return "userApplication.jsp";
//	    }
	    
	    
//	    @PostMapping("/appApply")
//	    public String ShowApplyApplication()
//	    {
//	    	return "userApplication.jsp";
//	    }
	
//	@Autowired
//    private ApplicationRepository applicationRepository;
//
//	@RequestMapping("/{propertyId}")
//	public String showApplicationForm(@PathVariable("propertyId") int propertyId, Model model) {
//	    Application application = new Application();
//	    application.setPropertyId(propertyId);
//	    model.addAttribute("application", application);
//	    return "application.jsp";
//	}
//
//
//    @PostMapping("/submitApplication")
//    public String submitApplication(@ModelAttribute Application application) {
//        applicationRepository.save(application);
//        return "redirect:/userDashboard";
//    }

//    @GetMapping("/userDashboard")
//    public String userDashboard() {
//        return "userDash.jsp";
//    }

}
