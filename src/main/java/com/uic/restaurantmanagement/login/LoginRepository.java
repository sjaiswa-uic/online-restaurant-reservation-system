package com.uic.restaurantmanagement.login;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class LoginRepository {

	@PersistenceContext	
	private EntityManager entityManager;	

	public UserEntity authenticateCustomer (LoginForm form) throws Exception {

		return entityManager.createQuery("from UserEntity WHERE Email = ? and Password = ?", UserEntity.class)
				.setParameter(1, form.getUserName())
				.setParameter(2, form.getPassword()).getSingleResult();

	}
	
	
} 