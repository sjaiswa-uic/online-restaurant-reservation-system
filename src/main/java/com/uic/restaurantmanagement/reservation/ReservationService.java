package com.uic.restaurantmanagement.reservation;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uic.restaurantmanagement.tables.TableEntity;

@Service
public class ReservationService {

	@Autowired
	private ReservationRepository repository;

	/**
	 * Converts the JPA Entity Type List into its corresponding POJO
	 * This is done to achieve a clear layer of separation between the data
	 * layer and the business layer of the application
	 * 
	 **/
	public List<Reservation> getReservationsForUser(int userId) {

		List<Reservation> reservations = new ArrayList<>();
		List<ReservationEntity> entities = repository.getReservationsForUser(userId);

		for (ReservationEntity entity : entities){
			int delay = 5;
			reservations.add(Reservation.from(entity, delay += 2));
		} 

		return reservations;
	}	

	
	public List<Reservation> getReservationsForDate(Date date) {

		List<Reservation> reservations = new ArrayList<>();
		List<ReservationEntity> entities = repository.getReservationsForDate(date);

		for (ReservationEntity entity : entities){
			int delay = 5;
			reservations.add(Reservation.from(entity, delay += 2));
		} 

		return reservations;
	}

	public Integer getReservationsCountForUser(int userId) {

		return repository.getReservationsCountForUser(userId);
	}

	public Integer createReservation (Reservation reservation) {
		return repository.createReservation(Reservation.to(reservation));
	}
	
	public boolean updateReservation (Reservation reservation) {
		return repository.updateReservation(reservation.getReservationId(), reservation.getUserId(), reservation.getReservationStatus());
	}

	public boolean cancelReservation (int reservationId, int userId, int reservationStatus) {
		return repository.cancelReservation(reservationId, userId, reservationStatus);
	}
	
	public List<TableEntity> getAllTables() {
		return (List<TableEntity>) repository.getAllTables();
	}
}
