package com.college.web.service;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.college.web.model.Admin;
import com.college.web.model.StudentDetails;
import com.college.web.util.HibernateUtil;

public class StudentServices {

	public boolean registerStudent(StudentDetails sd) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		if(isStudentExists(sd)) return false;
		

		Transaction tx = null;
	     try {
	         tx = session.getTransaction();
	         tx.begin();
	         session.saveOrUpdate(sd);       
	         tx.commit();
	     } catch (Exception e) {
	         if (tx != null) {
	             tx.rollback();
	         }
	         e.printStackTrace();
	     } finally {
	         session.close();
	     } 
	   
		
		return true;
		

		
		
	}
	private boolean isStudentExists(StudentDetails sd) {
		// TODO Auto-generated method stub
		
		
		

		Session session = HibernateUtil.openSession();
	     boolean result = true;
	     Transaction tx = null;
	     try{
	         tx = session.getTransaction();
	         tx.begin();
	         Query query = session.createQuery("from StudentDetails where application_id='"+sd.getApplication_id()+"'");
	         Admin u = (Admin)query.uniqueResult();
	         tx.commit();
	         if(u==null) result = false;
	        	 
	     }catch(Exception ex){
	         if(tx!=null){
	             tx.rollback();
	         }
	     }finally{
	         session.close();
	     }
	     return result;
	}
	public boolean authenticateStuent(String uname, String pass) {
		// TODO Auto-generated method stub
		
		StudentDetails sd=getStudentbyPassword(pass);
		if(sd!=null && sd.getUsername().equals(uname)&&sd.getPasssword().equals(pass)){
            return true;
        }else{
            return false;
        }
		
		
		
		
	}
	private StudentDetails getStudentbyPassword(String pass) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.openSession();
        Transaction tx = null;
        StudentDetails sd = null;
        try { 
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from StudentDetails where passsword='"+pass+"'");
            sd = (StudentDetails)query.uniqueResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return sd;
	}
	
	
	

	
}
