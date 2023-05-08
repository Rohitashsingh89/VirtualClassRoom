package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import com.entities.Register;


public class UserDao {
	private SessionFactory factory;
	
	public UserDao(SessionFactory factory) {
		this.factory = factory;
	}
	
//	get user by email and password
	
	@SuppressWarnings({ "rawtypes", "deprecation" })
	public Register getUserByEmailAndPassword(String email, String password) {
		Register user = null;
		
		try {
			String query="from Register where Email = : e and Password = : p";
			Session session = this.factory.openSession();
			Query q = session.createQuery(query);
			q.setParameter("e", email);
			q.setParameter("p", password);
			
			user = (Register) q.uniqueResult();
			
			session.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}

}

