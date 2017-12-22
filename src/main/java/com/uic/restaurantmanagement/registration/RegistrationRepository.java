package com.uic.restaurantmanagement.registration;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.uic.restaurantmanagement.login.UserEntity;

@Transactional
@Repository
public class RegistrationRepository {

	@PersistenceContext	
	private EntityManager entityManager;	

	public boolean createUser (RegistrationEntity entity) {
		
		try {
			
			entityManager.persist(entity);
			return true;
		} catch(Exception ex) {
		    // if there is no result
			System.out.println(ex);
			return false;
		}
	}

	public UserEntity authenticateEmail(RegistrationForm form) {

		return entityManager.createQuery("from UserEntity WHERE Email = ?", UserEntity.class)
		.setParameter(1, form.getEmail()).getSingleResult();
	}
	
	
} 