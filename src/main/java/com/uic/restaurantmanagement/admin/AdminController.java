package com.uic.restaurantmanagement.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.uic.restaurantmanagement.reservation.ReservationService;

@Controller
public class AdminController {

	@Autowired
	AdminService adminService;
	
	@Autowired
	ReservationService reservationService;
	
	@GetMapping("/admin")
	public String viewAllReservations(@RequestAttribute int userId, Model model) {
		
		model.addAttribute("allReservations", adminService.getAllReservations());
		return "adminSummary";
	}
	
	@GetMapping("/users")
	public String viewAllUsers(@RequestAttribute int userId, Model model) {
		
		model.addAttribute("allUsers", adminService.getAllUsers());
		return "adminUsers";
	}
	
	@PostMapping("/users")
	public String viewReservations(@RequestAttribute(name="userId")  int userId, @RequestParam(name="selectedUser")  int selectedUser, Model model) {
		
		model.addAttribute("allUsers", adminService.getAllUsers());
		model.addAttribute("allReservations", reservationService.getReservationsForUser(selectedUser));
		return "adminUsers";
	}
}
