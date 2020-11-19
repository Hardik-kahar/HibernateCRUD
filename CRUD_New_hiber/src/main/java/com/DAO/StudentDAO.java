package com.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.bean.Student;

public class StudentDAO {
	
	public static Session getSession()
	{
		SessionFactory  sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		return session;
	}
	
	// for update
	public static void updateData(Student s) {
		
		Session session = StudentDAO.getSession();
		session.beginTransaction();
		session.update(s);
		session.getTransaction().commit();
		session.close();
		
	}
	// fatch data based on id
	public static Student getdataByid(int id) {
		
		Session session = StudentDAO.getSession();
		session.beginTransaction();
		Student s= session.get(Student.class, id);
		return s;
	}
	
	
	
	//delete data 
	public static Student DeleteData(int id) {
		
		Session session = StudentDAO.getSession();
		session.beginTransaction();
		Student s =   session.get(Student.class, id);
		return s;
		
	}
	
	//for data all data fetch 
	public static List<Student> getAllData()
	{
		Session session = StudentDAO.getSession();
		@SuppressWarnings("unchecked")
		List<Student> list= session.createQuery("from Student").list();  // from pa6i ke baad table ke class ka name
		return list;
	}
	
	//for insert data 
	public static void insetData(Student s) {
		
		Session session = StudentDAO.getSession();
		session.beginTransaction();
		session.save(s);
		session.getTransaction().commit();
		session.close(); 
	}
		
}
