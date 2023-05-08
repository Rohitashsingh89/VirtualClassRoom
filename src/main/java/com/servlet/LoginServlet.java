package com.servlet;

import java.io.IOException;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.EnumOfUserType.User;
import com.dao.UserDao;
import com.entities.Register;

import com.helper.FactoryProvider;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1 ;
//    private UserDao loginDao;
//
//    public void init() {
//        loginDao = new UserDao();
//    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            authenticate(request, response);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    private void authenticate(HttpServletRequest request, HttpServletResponse response)
    throws Exception {
        String username = request.getParameter("email");
        String password = request.getParameter("password");

//        if (loginDao.validate(username, password)) {
//            RequestDispatcher dispatcher = request.getRequestDispatcher("welcome.jsp");
//            dispatcher.forward(request, response);
//        } else {
//            throw new Exception("Login not successful..");
//        }
        
//        authenticating user
        UserDao userDao = new UserDao(FactoryProvider.getFactory());
        Register user = userDao.getUserByEmailAndPassword(username, password);
//        System.out.print(user);
        
        HttpSession httpSession = request.getSession();
		
        
        if(user==null) {
        	httpSession.setAttribute("message", "Email or password are incorrect!");
        	response.sendRedirect("index.jsp");
        	
        }else {
        	httpSession.setAttribute("message", "You are Successfully Logged in !! ");
//        	response.sendRedirect("welcome.jsp");
        	
//        login session
        	httpSession.setAttribute("authenticate-user", user);
        	
        	if(user.getUserType() == User.TEACHER) {
        	    // admin user
        		HttpSession session = request.getSession();
        		session.setAttribute("Name", user.getName());
        	    response.sendRedirect("teacher.jsp");
        	} else if(user.getUserType() == User.STUDENT) {
        	    // normal user
        	    HttpSession session = request.getSession();
        	    session.setAttribute("Name", user.getName());
        	    response.sendRedirect("student.jsp");        		
        	} else {
        	    httpSession.setAttribute("message", "You have not registered, please register first!");        		
        	}

			/*
			 * if(user.getGender().equals("TEACHER")) { // admin user
			 * response.sendRedirect("admin.jsp"); } else
			 * if(user.getGender().equals("STUDENT")) { // normal user HttpSession session =
			 * request.getSession(); session.setAttribute("Name", user.getName());
			 * response.sendRedirect("welcome.jsp"); } else {
			 * httpSession.setAttribute("message",
			 * "You have not registed, please registered first!"); }
			 */
        }
        
    }
}
