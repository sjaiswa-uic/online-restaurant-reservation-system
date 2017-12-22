package com.uic.restaurantmanagement.admin;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uic.restaurantmanagement.login.User;
import com.uic.restaurantmanagement.login.UserEntity;

@Service
public class AdminService {
	
	@Autowired
	private AdminRepository repository;
	
	/**
	 * Converts the JPA Entity Type List into its corresponding POJO
	 * This is done to achieve a clear layer of separation between the data
	 * layer and the business layer of the application
	 * 
	 **/
	public List<User> getAllUsers(){
		
		List<User> users = new ArrayList<>();
		List<UserEntity> entities = repository.getAllUsers();
		
		for (UserEntity entity : entities){
			users.add(User.from(entity));
		} 
		
		return users;
	}
	
	/**
	 * Converts the JPA Entity Type List into its corresponding POJO
	 * This is done to achieve a clear layer of separation between the data
	 * layer and the business layer of the application
	 * 
	 **/
	public List<ReportingReservation> getAllReservations(){
		
		List<ReportingReservation> users = new ArrayList<>();
		List<ReportingReservationEntity> entities = repository.getAllReservations();
		
		for (ReportingReservationEntity entity : entities){
			users.add(ReportingReservation.from(entity));
		} 
		
		return users;
	}
}
		