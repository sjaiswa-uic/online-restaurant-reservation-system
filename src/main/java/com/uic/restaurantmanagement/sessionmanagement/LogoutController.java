package com.uic.restaurantmanagement.sessionmanagement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LogoutController {

	@GetMapping("/logout")
	public String logout (HttpServletRequest request){
		
		try {
			request.logout();
		} catch (ServletException e) {
			e.printStackTrace();
		}
		
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:loadlogin";
	}
}
