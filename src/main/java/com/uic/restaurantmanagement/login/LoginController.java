package com.uic.restaurantmanagement.login;

import java.util.Locale;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	@Autowired
	LoginService service;

	@Autowired
	Environment environment;

	@RequestMapping(value = {"/","/loadlogin","/landing"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "landing";
	}

	@RequestMapping(value = {"/contact"}, method = RequestMethod.GET)
	public String home() {
		return "contact";
	}

	@PostMapping("/login")
	public String authenticate (@ModelAttribute LoginForm form, Model model, HttpServletRequest request){
		String page = "landing";
		HttpSession session = request.getSession();

		if (StringUtils.isEmpty(form.getUserName()) || StringUtils.isEmpty(form.getPassword())) {
			model.addAttribute("loginError","These fields cannot be Empty.");
			page="landing";

		} else {

			if (environment.getProperty("admin.username").equalsIgnoreCase(form.getUserName()) 
					&& environment.getProperty("admin.password").equalsIgnoreCase(form.getPassword())){
				
				session.setAttribute("authenticatedUser", new User(new Random().nextInt(5000), "Admin", "Admin", form.getUserName(), form.getPassword()));
				page = "redirect:admin";
			} else {
				
				try {
					User authenticatedUser = User.from(service.authenticate(form));
					session.setAttribute("authenticatedUser", authenticatedUser);
					System.out.println("Successful Login");
					page = "redirect:summary";
				} catch (Exception e) {
					model.addAttribute("loginError","The information you have provided do not match any of our records.");
					e.printStackTrace();
					page="landing";	
				}
			}
		}
		return page;
	}
}
