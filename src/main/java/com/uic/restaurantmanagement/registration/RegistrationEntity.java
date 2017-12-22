package com.uic.restaurantmanagement.registration;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="userlogins")
public class RegistrationEntity implements Serializable { 

	private static final long serialVersionUID = 1L;
	
	/**
	 * 
	 */
	public RegistrationEntity() {
	}

	/**
	 * @param userId
	 * @param firstName
	 * @param lastName
	 * @param email
	 * @param password
	 */
	public RegistrationEntity(String firstName, String lastName, String email, String password) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="UserID")
	private int userId;  

	@Column(name="First_Name")
	private String firstName;

	@Column(name="Last_Name")	
	private String lastName;

	@Column(name="Email")	
	private String email;

	@Column(name="Password")	
	private String password;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	


	//@OneToMany(mappedBy="user",fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	//private List<Reservation> reservation = new ArrayList<>();


}  
