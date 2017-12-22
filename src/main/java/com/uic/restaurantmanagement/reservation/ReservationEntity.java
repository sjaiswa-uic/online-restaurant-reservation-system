package com.uic.restaurantmanagement.reservation;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureParameter;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.uic.restaurantmanagement.tables.TableEntity2;

@NamedStoredProcedureQueries({
	  @NamedStoredProcedureQuery(
	    name = "createReservation", 
	    procedureName = "create_reservation", 
	    // resultClasses = { Object.class }, 
	    parameters = { 
	        @StoredProcedureParameter(
	        	  name = "in_table_id", 
	              type = Integer.class, 
	              mode = ParameterMode.IN),
	        @StoredProcedureParameter(
	  	          name = "in_user_id", 
	  	          type = Integer.class, 
	  	          mode = ParameterMode.IN),
	        @StoredProcedureParameter(
	  	          name = "in_reservation_status", 
	  	          type = Integer.class, 
	  	          mode = ParameterMode.IN),
	        @StoredProcedureParameter(
	  	          name = "in_reservation_date", 
	  	          type = Date.class, 
	  	          mode = ParameterMode.IN)}) 
	})

@Entity
@Table(name="Reservations")
public class ReservationEntity implements Serializable { 

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="Reservation_Id")
	private int reservationId;  

	@Column(name="Table_Id")
	private int tableId;
	
	@Column(name="User_ID")
	private int userId; 

	@Column(name="Reservation_Status")
	private int reservationStatus; 
	
	@Column(name="Reservation_Date")	
	@Temporal(TemporalType.DATE)
	private Date reservationDate;

	/**
	 * 
	 */
	public ReservationEntity() {
	}
	
	/**
	 * @param reservationId
	 * @param userId
	 * @param reservationStatus
	 */
	public ReservationEntity(int reservationId, int userId, int reservationStatus) {
		this.reservationId = reservationId;
		this.userId = userId;
		this.reservationStatus = reservationStatus;
	}
	
	/**
	 * @param reservationId
	 * @param tableId
	 * @param userId
	 * @param reservationStatus
	 * @param reservationDate
	 */
	public ReservationEntity(int tableId, int userId, int reservationStatus, Date reservationDate) {
		this.tableId = tableId;
		this.userId = userId;
		this.reservationStatus = reservationStatus;
		this.reservationDate = reservationDate;
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
}
