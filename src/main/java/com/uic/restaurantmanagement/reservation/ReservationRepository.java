package com.uic.restaurantmanagement.reservation;

import java.math.BigInteger;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.Parameter;
import javax.persistence.ParameterMode;
import javax.persistence.PersistenceContext;
import javax.persistence.StoredProcedureQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.uic.restaurantmanagement.tables.TableEntity;
import com.uic.restaurantmanagement.tables.TableEntity2;

@Transactional
@Repository
public class ReservationRepository {

	@PersistenceContext	
	private EntityManager entityManager;	

	@SuppressWarnings("unchecked")
	public List<ReservationEntity> getReservationsForUser(int userId) {
		
		String hql = "FROM ReservationEntity where User_ID = ? AND Reservation_Status = 1";
		return (List<ReservationEntity>) entityManager.createQuery(hql)
				.setParameter(1, userId)
				.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<TableEntity> getAllTables() {
		
		String hql = "FROM TableEntity ORDER BY Table_Id";
		return (List<TableEntity>) entityManager.createQuery(hql).getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<ReservationEntity> getReservationsForDate(Date date) {
		
		String hql = "FROM ReservationEntity where Reservation_Date = ?";
		return (List<ReservationEntity>) entityManager.createQuery(hql)
				.setParameter(1, date)
				.getResultList();
	}
	
	public Integer getReservationsCountForUser(int userId) {
		
		String hql = "SELECT COUNT(*) FROM Reservations where User_ID = ? AND Reservation_Status = 1";
		return ((BigInteger) entityManager.createNativeQuery(hql)
				.setParameter(1, userId)
				.getSingleResult()).intValue();
	}
	
    public Integer createReservation (ReservationEntity entity) {
		
		try {
			
			StoredProcedureQuery createReservations = entityManager.createNamedStoredProcedureQuery("createReservation");
	        createReservations.setParameter("in_table_id", entity.getTableId());
	        createReservations.setParameter("in_user_id", entity.getUserId());
	        createReservations.setParameter("in_reservation_status", entity.getReservationStatus());
	        createReservations.setParameter("in_reservation_date", entity.getReservationDate());
	        
	        int reservationId = ((BigInteger)createReservations.getResultList().get(0)).intValue();
	        return reservationId;
		} catch(Exception ex) {
		    // if there is no result
			System.out.println(ex);
			return -3;
		}
	}
    
    public boolean updateReservation (int reservationId, int userId, int reservationStatus) {
		
		try {
			ReservationEntity confirmRequest = entityManager.find(ReservationEntity.class, reservationId);
			confirmRequest.setReservationStatus(reservationStatus);
			confirmRequest.setUserId(userId);
			entityManager.merge(confirmRequest);
			return true;
		} catch(Exception ex) {
		    // if there is no result
			System.out.println(ex);
			return false;
		}
	}

    public boolean cancelReservation (int reservationId, int userId, int reservationStatus) {
		
		try {
			
			ReservationEntity cancelRequest = entityManager.find(ReservationEntity.class, reservationId);
			entityManager.remove(cancelRequest);
			return true;
		} catch(Exception ex) {
		    // if there is no result
			System.out.println(ex);
			return false;
		}
	}
} 