package com.uic.restaurantmanagement.registration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uic.restaurantmanagement.login.UserEntity;

@Service
public class RegistrationService {
	
	@Autowired
	private RegistrationRepository repository;
	
	/**
	 * Converts the JPA Entity Type List into its corresponding POJO
	 * This is done to achieve a clear layer of separation between the data
	 * layer and the business layer of the application
	 * 
	 **/
	public Boolean createUser(RegistrationForm form){
		
		return repository.createUser(RegistrationForm.to(form));
	}
	
	public UserEntity authenticateEmail(RegistrationForm form) throws Exception {
		 return repository.authenticateEmail(form);
	}
}
		