package com.compacademy.DOA;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;  
import org.hibernate.SessionFactory;  
import org.hibernate.Transaction;  
import org.hibernate.cfg.Configuration;

import com.compacademy.hibernet.Authentication;
import com.compacademy.hibernet.HibernateUtil; 
public class loginCRUD {
	 
	      public int loginCheck(String username,String password) {
	    	  int result=0;
	    	  Session session = HibernateUtil.getSessionFactory().openSession();
	          Transaction transaction = null;
	          try {
	              transaction = session.beginTransaction();
	              List ln = session.createQuery("from Authentication").list();
	   
	              for (Iterator iterator = ln.iterator(); iterator.hasNext();) {
	                  Authentication ln1 = (Authentication) iterator.next();
	                  System.out.println(ln1.getUsername() + "  "
	                          + ln1.getPassword());
	                  result=1;
	              }
	              transaction.commit();
	   
	          } catch (HibernateException e) {
	   
	              transaction.rollback();
	   
	              e.printStackTrace();
	   
	          } finally {
	   
	              session.close();
	   
	          }
	      return result;
	  }
}
