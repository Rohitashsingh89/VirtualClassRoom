package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.EnumOfUserType.User;
import com.entities.Register;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String usertype;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			
		
		String Name = request.getParameter("full_name");
		String Phone = request.getParameter("phone");
		String Email = request.getParameter("email");
		String pass = request.getParameter("password");
		String CollegeName = request.getParameter("college_name");
		String UserType = request.getParameter("usertype");
		User user = User.valueOf(UserType);
		
		HttpSession httpSession = request.getSession();			
			
		Register info = new Register(Name,Phone,Email,pass,CollegeName,user);
		
		System.out.println( info.getEmail() + " : " + info.getPassword());
		
		Configuration con = new Configuration().configure().addAnnotatedClass(Register.class);
		
		SessionFactory sf = con.buildSessionFactory();
		
		Session session = sf.openSession();
		
		Transaction tx = session.beginTransaction();
		
		session.save(info);

		
		tx.commit();
		
		
		httpSession.setAttribute("message", "You are Successfully Registered !! " + Name);
		response.sendRedirect("index.jsp");
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		

	}

}
