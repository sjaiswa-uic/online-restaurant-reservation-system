package com.uic.restaurantmanagement.admin;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
public class ReportingReservationEntity implements Serializable { 

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="Reservation_Id")
	private int reservationId;  

	@Column(name="Table_Id")
	private int tableId;
	
	@Column(name="Reservation_Status")
	private int reservationStatus; 
	
	@Column(name="Reservation_Date")	
	@Temporal(TemporalType.DATE)
	private Date reservationDate;
	
	@Column(name="First_Name")
	private String firstName;

	@Column(name="Last_Name")	
	private String lastName;

	@Column(name="Email")	
	private String email;

	
	/**
	 * 
	 */
	public ReportingReservationEntity() {
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * @param reservationId
	 * @param tableId
	 * @param reservationStatus
	 * @param reservationDate
	 * @param firstName
	 * @param lastName
	 * @param email
	 */
	public ReportingReservationEntity(int reservationId, int tableId, int reservationStatus, Date reservationDate,
			String firstName, String lastName, String email) {
		this.reservationId = reservationId;
		this.tableId = tableId;
		this.reservationStatus = reservationStatus;
		this.reservationDate = reservationDate;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
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
	 * @return the reservationStatus
	 */
	public int getReservationStatus() {
		return reservationStatus;
	}

	/**
	 * @param reservationStatus the reservationStatus to set
	 */
	public void setReservationStatus(int reservationStatus) {
		this.reservationStatus = reservationStatus;
	}

	/**
	 * @return the reservationId
	 */
	public int getReservationId() {
		return reservationId;
	}

	/**
	 * @param reservationId the reservationId to set
	 */
	public void setReservationId(int reservationId) {
		this.reservationId = reservationId;
	}

	/**
	 * @return the tableId
	 */
	public int getTableId() {
		return tableId;
	}

	/**
	 * @param tableId the tableId to set
	 */
	public void setTableId(int tableId) {
		this.tableId = tableId;
	}

	/**
	 * @return the reservationDate
	 */
	public Date getReservationDate() {
		return reservationDate;
	}

	/**
	 * @param reservationDate the reservationDate to set
	 */
	public void setReservationDate(Date reservationDate) {
		this.reservationDate = reservationDate;
	}
}
