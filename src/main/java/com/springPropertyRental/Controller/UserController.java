package com.springPropertyRental.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springPropertyRental.Model.Property;
import com.springPropertyRental.Model.User;
import com.springPropertyRental.repository.propertyrepo;
import com.springPropertyRental.repository.userrepo;


@Controller
public class UserController {
	@Autowired
	userrepo us;
	@Autowired
	propertyrepo prepo;
	
	@GetMapping("/")
	public String register()
	{
		return "login.jsp";
	}
	
	@PostMapping("/Registration")
	public String reg(@ModelAttribute User u)
	{
		us.save(u);
		return "login.jsp";
	}
	
	@RequestMapping("/datafet")
	public String fetchUser(Model m)
	{
		List<User> u_list = us.findAll();
		m.addAttribute("user", u_list);
		return "ViewUser.jsp";
	}
	
	@GetMapping("/login")
    public String showLoginPage() {
        return "login.jsp";
    }

    @PostMapping("/login")
    public String loginUser(@RequestParam String email,
                            @RequestParam String password,
                            HttpSession session,
                            Model model) {

        // Admin Login Check
        if (email.equals("admin@gmail.com") && password.equals("admin")) {
            session.setAttribute("userType", "admin");
            return "adDash.jsp";
        }

        // Regular User Login Check
        User uobj = us.findByEmailAndPassword(email, password);
        if (uobj != null) {
            session.setAttribute("user", uobj);
            session.setAttribute("userType", "user");
           return "Home.jsp";
        //  return "redirect:/userDashboard";
        }

        // Login failed
        model.addAttribute("error", "Incorrect email or password!");
        return "login.jsp";
    }
    
    @GetMapping("/userDash")
    public String showUserDash(Model model) {
        List<Property> properties = prepo.findAll(); // Assuming prepo is PropertyRepository
        model.addAttribute("property1", properties);
        return "userDash.jsp";
    }

	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable int id)
	{
		us.deleteById(id);
		return "redirect:/datafet";
	}
	
	@RequestMapping("/{id}")
	public String Edit(@PathVariable int id,Model m)
	{
		User ob = us.findById(id).orElse(null);
		m.addAttribute("edit_data", ob);
		return "edit.jsp";
	}
	
	@RequestMapping("edit/{id}")
	public String update(@PathVariable int id,@ModelAttribute User ob)
	{
		User uob = us.findById(id).orElse(null);
		if(uob!=null)
		{
			uob.setName(ob.getName());
			uob.setEmail(ob.getEmail());
			uob.setPassword(ob.getPassword());
			uob.setCpassword(ob.getCpassword());
			uob.setPhone(ob.getPhone());
			uob.setAddress(ob.getAddress());
		}
		us.save(uob);
		
		return "redirect:/datafet";
	}

}
