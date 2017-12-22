package com.uic.restaurantmanagement.reservation;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Reservation implements Serializable { 

	private static final long serialVersionUID = 1L;
	
	private int reservationId;  

	private int tableId;
	
	private int userId; 

	private int reservationStatus; 
	
	private Date reservationDate;
	
	private String displayDate;
	
	private int delay;

	/**
	 * 
	 */
	public Reservation() {
	}
	
	/**
	 * @param reservationId
	 * @param userId
	 * @param reservationStatus
	 */
	public Reservation(int tableId, int userId, int reservationStatus, Date reservationDate) {
		this.tableId = tableId;
		this.userId = userId;
		this.reservationStatus = reservationStatus;
		this.reservationDate = reservationDate;
	}
	
	/**
	 * @param reservationId
	 * @param tableId
	 * @param userId
	 * @param reservationStatus
	 * @param reservationDate
	 */
	public Reservation(int reservationId, int tableId, int userId, int reservationStatus, Date reservationDate, String displayDate, int delay) {
		this.reservationId = reservationId;
		this.tableId = tableId;
		this.userId = userId;
		this.reservationStatus = reservationStatus;
		this.reservationDate = reservationDate;
		this.displayDate = displayDate;
		this.delay = delay;
	}
	
	/**
	 * @param reservationId
	 * @param tableId
	 * @param userId
	 * @param reservationStatus
	 * @param reservationDate
	 */
	public Reservation(int reservationId, int reservationStatus, int userId) {
		this.reservationId = reservationId;
		this.userId = userId;
		this.reservationStatus = reservationStatus;
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

	public static ReservationEntity to (Reservation reservation){
		return new ReservationEntity(reservation.getTableId(), reservation.getUserId(), reservation.getReservationStatus(), reservation.getReservationDate());
	} 
	
	public static Reservation from (ReservationEntity entity, int delay){
		return new Reservation(entity.getReservationId(), entity.getTableId()
				, entity.getUserId(), entity.getReservationStatus(), entity.getReservationDate()
				, getCurrentDateInDisplayFormat(entity.getReservationDate()), delay);
	}
	
	private static  String getCurrentDateInDisplayFormat(Date date) {

		Calendar currentCalDate = Calendar.getInstance();
		currentCalDate.setTime(date);
	    String dayNumberSuffix = getDayNumberSuffix(currentCalDate.get(Calendar.DAY_OF_MONTH));
	    DateFormat dateFormat = new SimpleDateFormat("'<span>'EEEE,'</span>' dd '"+ dayNumberSuffix +"' "+ "'<span>'" +"MMMM" + "'</span>'");
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
