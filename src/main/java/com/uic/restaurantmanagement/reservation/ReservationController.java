package com.uic.restaurantmanagement.reservation;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.uic.restaurantmanagement.tables.TableEntity;

@Controller
public class ReservationController {
	
	@Autowired
	ReservationService service;
	
	@GetMapping("/showdates")
	public String loadUserReservations(@RequestAttribute int userId){
		
		if (this.service.getReservationsCountForUser(userId) >= 3){
			return "redirect:summary";
		}
		return "reservation";
	}
	
	@GetMapping("/summary")
	public String loadUserReservations(@RequestAttribute int userId, Model model){
		
		List<Reservation> reservations = service.getReservationsForUser(userId);
		model.addAttribute("reservations", reservations);
		model.addAttribute("reservationCount", reservations.size());
		return "reservationSummary";
	}

	@PostMapping("/loadreservation")
	public String loadReservations(@RequestAttribute(name="userId") int userId
								 , @RequestParam(name="selecteddate", required=false) String date
								 , Model model){
		
		if (this.service.getReservationsCountForUser(userId) >= 3){
			return "redirect:summary";
		}
		
		if(!StringUtils.isEmpty(date)){
			Date selectedDate;
			try {
				selectedDate = new SimpleDateFormat("yyyy-MM-dd").parse(date);
				model.addAttribute("reservations", buildReservations(userId, selectedDate));
				model.addAttribute("reservationdate", date);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		
		return "reservation";
	}
	
	@ResponseBody
	@PostMapping(value="/confirmreservation", produces=MediaType.APPLICATION_JSON_VALUE)
	public boolean confirmReservation(@RequestAttribute(name="userId") int userId
								 , @RequestParam(name="reservationId") int reservationId
								 , Model model){

		//if (this.service.getReservationsCountForUser(userId) >= 3){
		//	return;
		//}

		return this.service.updateReservation(new Reservation(reservationId, 1, userId));
	}
	
	@ResponseBody
	@PostMapping(value="/holdreservation", produces=MediaType.APPLICATION_JSON_VALUE)
	public Reservation holdReservation(@RequestAttribute(name="userId") int userId
								 , @RequestParam(name="reservationDate") String date
								 , @RequestParam(name="selectedTable") int tableNumber
								 , Model model){
		
//		if (this.service.getReservationsCountForUser(userId) >= 3){
//			return;
//		}
		
		int reservationId = -3;
		try {
			Date reservationDate = new SimpleDateFormat("yyyy-MM-dd").parse(date);
			reservationId = this.service.createReservation(new Reservation(tableNumber, userId, 2, reservationDate));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		if(reservationId == -3){
			return new Reservation(0, -3, 0);
		} else {
			return new Reservation(reservationId, 2, 0);
		}
	}
	
	@ResponseBody
	@PostMapping(value="/unholdreservation", produces=MediaType.APPLICATION_JSON_VALUE)
	public boolean unHoldReservation(@RequestAttribute(name="userId") int userId
								 , @RequestParam(name="reservationId1") int reservationId
								 , @RequestParam(name="tableId") int tableNumber
								 , Model model){
		
		//if (this.service.getReservationsCountForUser(userId) >= 3){
		//	return;
		//}
		
		return this.service.cancelReservation(reservationId, userId, 2);
	}
	
	private List<String> buildReservations (int userId,  Date selectedDate){
		
		List<String> tableBuilder = new ArrayList<>();
		List<TableEntity> tables = this.service.getAllTables();
		List<Reservation> reservations = this.service.getReservationsForDate(selectedDate);
		
		for(TableEntity table : tables){
			
			Reservation reservation = checkTableReservation(table.getTableId(), reservations);
			if(reservation == null){
				tableBuilder.add("addRect(" + table.getTableAlign1() 
						+ "," + table.getTableAlign2() 
						+ "," + table.getTableAlign3() 
						+ "," + table.getTableAlign4()
						+ ", tableFillAvailable" 
						+ ", 'table')");
			} else if(reservation.getUserId() == userId){
				tableBuilder.add("addRect(" + table.getTableAlign1() 
						+ "," + table.getTableAlign2() 
						+ "," + table.getTableAlign3() 
						+ "," + table.getTableAlign4()
						+ ", tableFillReserved" 
						+ ", 'table-unavailable')");
			} else {
				tableBuilder.add("addRect(" + table.getTableAlign1() 
						+ "," + table.getTableAlign2() 
						+ "," + table.getTableAlign3() 
						+ "," + table.getTableAlign4()
						+ ", tableFillUnavailable" 
						+ ", 'table-unavailable')");
			}
		}
		
		return tableBuilder;
	}
	
	private Reservation checkTableReservation(int tableId, List<Reservation> reservations){
		Reservation tableReservation = null;
		for(Reservation reservation : reservations){
			if(reservation.getTableId() == tableId){
				tableReservation = reservation;
				break;
			}
		}
		
		return tableReservation;
	}
}
