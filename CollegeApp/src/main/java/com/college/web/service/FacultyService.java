package com.college.web.service;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.college.web.model.AluminiDetails;
import com.college.web.model.Faculty;
import com.college.web.util.HibernateUtil;

public class FacultyService {

	public boolean addFaculty(Faculty f) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		if(isFacultyExist(f)) return false;
		
		
		
		Transaction tx = null;
	     try {
	         tx = session.getTransaction();
	         tx.begin();
	         session.saveOrUpdate(f);       
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

	private boolean isFacultyExist(Faculty f) {
		Session session = HibernateUtil.openSession();
	     boolean result = true;
	     Transaction tx = null;
	     try{
	         tx = session.getTransaction();
	         tx.begin();
	         Query query = session.createQuery("from Faculty where email='"+f.getEmail()+"'");
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

	public boolean authenticatefaculty(int fid1, String uname, String password1) {
		// TODO Auto-generated method stub
		Faculty al=getFacultyByAid(fid1);
		//System.out.println(al);
		if(al!=null&&al.getUsername().equals(uname)&&al.getPassword().equals(password1)){
			System.out.println("in au");
            return true;
        }else{
            return false;
        }
	}

	private Faculty getFacultyByAid(int fid1) {
		Session session = HibernateUtil.openSession();
        Transaction tx = null;
        Faculty al = null;
        try { 
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Faculty where fid='"+fid1+"'");
            al = (Faculty)query.uniqueResult();
            System.out.println(al);
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

}
