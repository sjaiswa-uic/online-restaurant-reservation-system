package com.uic.restaurantmanagement.admin;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class ReportingReservation implements Serializable { 

	private static final long serialVersionUID = 1L;

	private int reservationId;  

	private int tableId;

	private int reservationStatus; 

	private Date reservationDate;

	private String displayDate;

	private String firstName;

	private String lastName;

	private String email;

	/**
	 * 
	 */
	public ReportingReservation() {
	}

	/**
	 * @param reservationId
	 * @param tableId
	 * @param reservationStatus
	 * @param reservationDate
	 * @param displayDate
	 * @param firstName
	 * @param lastName
	 * @param email
	 */
	public ReportingReservation(int reservationId, int tableId, int reservationStatus, Date reservationDate,
			String displayDate, String firstName, String lastName, String email) {
		super();
		this.reservationId = reservationId;
		this.tableId = tableId;
		this.reservationStatus = reservationStatus;
		this.reservationDate = reservationDate;
		this.displayDate = displayDate;
		this.firstName = firstName;
		this.lastName = lastName;
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

	/**
	 * @return the displayDate
	 */
	public String getDisplayDate() {
		return displayDate;
	}

	/**
	 * @param displayDate the displayDate to set
	 */
	public void setDisplayDate(String displayDate) {
		this.displayDate = displayDate;
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

	public static ReportingReservation from (ReportingReservationEntity entity){
		return new ReportingReservation(entity.getReservationId(), entity.getTableId()
				, entity.getReservationStatus(), entity.getReservationDate()
				, getCurrentDateInDisplayFormat(entity.getReservationDate())
				, entity.getFirstName(), entity.getLastName(), entity.getEmail());
	}

	private static  String getCurrentDateInDisplayFormat(Date date) {

		Calendar currentCalDate = Calendar.getInstance();
		currentCalDate.setTime(date);
		String dayNumberSuffix = getDayNumberSuffix(currentCalDate.get(Calendar.DAY_OF_MONTH));
		DateFormat dateFormat = new SimpleDateFormat("'<span>'EEEE,'</span>' dd'"+ dayNumberSuffix +"' "+ "'<span>'" +"MMMM" + "'</span>'");
		return dateFormat.format(currentCalDate.getTime());
	}

	private static  String getDayNumberSuffix(int day) {
		if (day >= 11 && day <= 13) {
			return "th";
		}
		switch (day % 10) {
		case 1:
			return "st";
		case 2:
			return "nd";
		case 3:
			return "rd";
		default:
			return "th";
		}
	}
}
