package com.uic.restaurantmanagement.registration;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class RegistrationController {

	@Autowired
	RegistrationService service;

	@PostMapping("/submitregistration")
	public String register (@ModelAttribute RegistrationForm form, Model model){

		if (validate(form, model)){
			model.addAttribute("registrationStatus", service.createUser(form) ? "success" : "failure");
		} else {
			model.addAttribute("registrationStatus", "failure");
		}

		return "landing";
	}

	private boolean validate (RegistrationForm form, Model model){

		if(StringUtils.isEmpty(form.getFirstName())){
			model.addAttribute("registrationError", "First name cannot be empty.");
			return false;
		}

		if(StringUtils.isEmpty(form.getLastName())){
			model.addAttribute("registrationError", "Last name cannot be empty.");
			return false;
		}


		if(validateEmail(form.getEmail()).equalsIgnoreCase("false")){
			model.addAttribute("registrationError", "Email is not valid");
			return false;
		}
		
		try{
			if(null!=service.authenticateEmail(form)){
			model.addAttribute("registrationError","Email Already Exists! Try another.");
			return false;
			}
		}catch(Exception e){
			return true;
		}

		if(StringUtils.isEmpty(form.getPassword()) || form.getPassword().length()<6 || form.getPassword().length() >12 ){
			model.addAttribute("registrationError", "Password should be 6-12 characters long");
			return false;
		}

		
		// validation success
		return true;
	}

	private static Pattern emailNamePtrn = Pattern.compile(
			"^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
	//This is a proper pattern ->  "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"
//^[A-Za-z0-9-._]{1}@[A-Za-z]{2,}+(\\.[A-Za-z]{2,})$

	public static String validateEmail(String email){
		Matcher mtch = emailNamePtrn.matcher(email);
		if(mtch.matches()){
			return "true";
			
		}
		return "false";
	}

}
