package com.college.web.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.college.web.model.Admin;
import com.college.web.model.AluminiDetails;
import com.college.web.model.Applicant;
import com.college.web.util.HibernateUtil;

public class AluminiServices {

	public boolean addAlumini(AluminiDetails ad) {
		// TODO Auto-generated method stub
		
		
		Session session=HibernateUtil.openSession();
		if(isAluminiExists(ad)) return false;
		
		
		
		Transaction tx = null;
	     try {
	         tx = session.getTransaction();
	         tx.begin();
	         session.saveOrUpdate(ad);       
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

	private boolean isAluminiExists(AluminiDetails ad) {
		Session session = HibernateUtil.openSession();
	     boolean result = true;
	     Transaction tx = null;
	     try{
	         tx = session.getTransaction();
	         tx.begin();
	         Query query = session.createQuery("from AluminiDetails where studentid='"+ad.getStudentid()+"'");
	         AluminiDetails u = (AluminiDetails)query.uniqueResult();
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

	public boolean authenticateAlumni(int sid1, String pass) {
		// TODO Auto-generated method stub
		//System.out.println("all");
		AluminiDetails al=getAlumniByAid(sid1);
		//System.out.println(al);
		if(al!=null&&al.getPass().equals(pass)){
			//System.out.println("in au");
            return true;
        }else{
            return false;
        }
	}

	private AluminiDetails getAlumniByAid(int sid1) {
		Session session = HibernateUtil.openSession();
        Transaction tx = null;
        AluminiDetails al = null;
        try { 
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from AluminiDetails where studentid='"+sid1+"'");
            al = (AluminiDetails)query.uniqueResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return al;
	}
	public List<AluminiDetails> getAllAlumini()
	{
		
		
		
		Session session=HibernateUtil.openSession();
		Transaction tx = null;
		List<AluminiDetails>    ad=null;
		 try {
		
	         tx = session.getTransaction();
	         tx.begin();
	         ad =session.createQuery("from AluminiDetails").list();    
	      
	
	         tx.commit();
	     } catch (Exception e) {
	         if (tx != null) {
	             tx.rollback();
	         }
	         e.printStackTrace();
	     } finally {
	         session.close();
	     } 
		
		return ad;
		
	}

	public List<AluminiDetails> getAluminiByName(String alumininame) {

		Session session=HibernateUtil.openSession();
		Transaction tx = null;
		List<AluminiDetails>    ad=null;
		 try {
		
	         tx = session.getTransaction();
	         tx.begin();
	         ad =session.createQuery("from AluminiDetails where First_name="+alumininame+"or Last_name"+alumininame).list();    
	      
	
	         tx.commit();
	     } catch (Exception e) {
	         if (tx != null) {
	             tx.rollback();
	         }
	         e.printStackTrace();
	     } finally {
	         session.close();
	     } 
		
		return ad;
		
	}

}
