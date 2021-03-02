package com.niit.java.Config;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.niit.java.Entity.DanhMuc;
import com.niit.java.Entity.SanPham;

public class HibernateUtil {
	public static SessionFactory SESSION_FACTORY;

	static {
		try {
			System.out.println("\n\n\n\n>>>>>> Generate SessionFactory:");
			// Create the SessionFactory from hibernate.cfg.xml
			Configuration configuration = new Configuration().configure();
	        configuration.addAnnotatedClass(DanhMuc.class);
			configuration.addAnnotatedClass(SanPham.class);
			if(SESSION_FACTORY == null || SESSION_FACTORY.isClosed())
				SESSION_FACTORY = configuration.buildSessionFactory();
		} catch (HibernateException ex) {
			// Make sure you log the exception, as it might be swallowed
			System.err.println("\n\t>>>>>> SessionFactory creation failed:\n" + 
								ex + "\n\n");
			throw ex;
		}
	}

	public static SessionFactory getSessionFactory() {
		return SESSION_FACTORY;
	}

	public static void shutdown() {
		// Close caches and connection pools
		getSessionFactory().close();
	}
	
//	public static void main(String[] args) {
//		Session session = null;
//		try{
//			session = getSessionFactory().getCurrentSession();
//		} catch (Exception e) {
//			session = getSessionFactory().openSession();
//		}
//		System.out.println(">>>>>> session of example: " + session );
//	}
}
