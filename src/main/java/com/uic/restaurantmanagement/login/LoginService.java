package com.uic.restaurantmanagement.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uic.restaurantmanagement.registration.RegistrationForm;

@Service
public class LoginService {
	
	@Autowired
	private LoginRepository repository;
	
	/**
	 * Converts the JPA Entity Type List into its corresponding POJO
	 * This is done to achieve a clear layer of separation between the data
	 * layer and the business layer of the application
	 * @throws Exception 
	 * 
	 **/
	public UserEntity authenticate(LoginForm form) throws Exception{
		return repository.authenticateCustomer(form);
	}

}
		