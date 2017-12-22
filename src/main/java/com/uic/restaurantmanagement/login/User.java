package com.uic.restaurantmanagement.login;

import java.io.Serializable;

public class User  implements Serializable { 

	private static final long serialVersionUID = 1L;

	private int userId;  

	private String firstName;
	
	private String lastName;
	
	private String email;	
	
	private String password;
	
	public User() {
	}

	public User(int userId, String firstName, String lastName, String email, String password) {
		this.userId = userId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
	}

	/**
	 * @return the userId
	 */
	public int getUserId() {
		return userId;
	}

	/**
	 * @param userId the userId to set
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}

	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}

	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}

	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * Converts the JPA Entity Type Object into its corresponding POJO
	 * This is done since an Entity is a JPA Managed Object and we 
	 * only keep this object in the data layer and dont take this 
	 * any further upwards in the flow.
	 **/
	public static User from (UserEntity entity){
		return new User(entity.getUserId()
				, entity.getFirstName()
				, entity.getLastName()
				, entity.getEmail()
				, entity.getPassword());
	}
}  



