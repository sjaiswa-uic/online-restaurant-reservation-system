package com.uic.restaurantmanagement.admin;

import java.math.BigInteger;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.uic.restaurantmanagement.login.UserEntity;

@Transactional
@Repository
public class AdminRepository {

	@PersistenceContext	
	private EntityManager entityManager;	

	@SuppressWarnings("unchecked")
	public List<UserEntity> getAllUsers() {
		
		String hql = "FROM UserEntity";
		return (List<UserEntity>) entityManager.createQuery(hql).getResultList();
	}
	
	public List<ReportingReservationEntity> getAllReservations() {
		
		String hql = "SELECT R.Reservation_Id, R.Table_Id, R.Reservation_Status, R.Reservation_Date, U.First_Name, U.Last_Name, U.Email FROM Reservations R INNER JOIN userlogins U ON U.UserID  = R.User_ID ORDER BY First_Name";
		return entityManager.createNativeQuery(hql, ReportingReservationEntity.class).getResultList();
	}
} 