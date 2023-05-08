package com.servlet;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.hibernate.SessionFactory;

import com.entities.Cart;

public class AddCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String filePath;
	private SessionFactory sessionFactory;

	@Override
	public void init() throws ServletException {
		super.init();
		filePath = getServletContext().getRealPath("/") + "uploads/";
		Configuration configuration = new Configuration().configure().addAnnotatedClass(Cart.class);
		sessionFactory = configuration.buildSessionFactory();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			List<FileItem> fileItems = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);

			String CourseName = null;
			String Price = null;
			int Percent = 0;

			for (FileItem item : fileItems) {
				if (item.isFormField()) {
					if (item.getFieldName().equals("name")) {
						CourseName = item.getString();
					} else if (item.getFieldName().equals("price")) {
						Price = item.getString();
					}
					/*
					 * else if (item.getFieldName().equals("Percent")) { Percent =
					 * Integer.parseInt(item.getString()); }
					 */
				} else {
					Cart fileEntity = new Cart();
					fileEntity.setName(item.getName());
					fileEntity.setContentType(item.getContentType());
					fileEntity.setData(item.get());

					uploadFile(fileEntity);

					fileEntity.setCourseName(CourseName);
					fileEntity.setPrice(Price);
					fileEntity.setPercent(Percent);
					fileEntity.setAddedDate(new Date());

					saveToDatabase(fileEntity);
					/*
					 * HttpSession httpSession = request.getSession();
					 * httpSession.setAttribute("message", "Course Added Successfully!"); if
					 * (!response.isCommitted()) { response.sendRedirect("student.jsp"); }
					 */
					/*
					 * response.getWriter().write("File uploaded successfully!");
					 */ }
			}

			/*
			 * Session session = sessionFactory.openSession(); // Execute a query to
			 * retrieve the list of courses Query<Cart> query =
			 * session.createQuery("FROM Cart", Cart.class); List<Cart> courseList =
			 * query.getResultList();
			 * 
			 * // Close the session session.close();
			 * 
			 * // Set the courseList attribute in the request
			 * request.setAttribute("courseList", courseList);
			 * 
			 * 
			 * // Forward the request to the JSP file RequestDispatcher dispatcher =
			 * request.getRequestDispatcher("your-jsp-file.jsp");
			 * dispatcher.forward(request, response);
			 * 
			 * 
			 * 
			 * List<Cart> imageList = (List<Cart>) retrieveImagesFromDatabase();
			 * System.out.print(imageList); HttpSession httpSession = request.getSession();
			 * 
			 * request.setAttribute("data", imageList); httpSession.setAttribute("message",
			 * "Course Added Successfully!");
			 */
			/*
			 * request.getRequestDispatcher("student.jsp").forward(request, response);
			 */
			Session session = sessionFactory.openSession();
			Query<Cart> query = session.createQuery("FROM Cart", Cart.class);
			List<Cart> courseList = query.getResultList();
			session.close();
			
			

			request.setAttribute("courseList", courseList);

			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("message", "Course Added Successfully!"); 

			request.getRequestDispatcher("student.jsp").forward(request, response);

			response.getWriter().write("card added successfully: " );

		} catch (Exception e) {
			e.printStackTrace();
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("message", "Error Saving to cart!" + e.getMessage());
			if (!response.isCommitted()) {
				response.sendRedirect("student.jsp");
			}
			/*
			 * response.getWriter().write("Error uploading file: " + e.getMessage());
			 */
		}
	}

	private void uploadFile(Cart fileEntity) throws Exception {
		File file = new File(filePath + fileEntity.getName());
		fileEntity.setFilePath(file.getAbsolutePath());
		fileEntity.writeToFile(file);
	}

	private void saveToDatabase(Cart fileEntity) throws Exception {
		Session session = null;
		Transaction tx = null;
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.save(fileEntity);
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			throw e;
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}
	/*
	 * private List<Cart> retrieveImagesFromDatabase() { Session session = null; try
	 * { session = sessionFactory.openSession(); Query<Cart> query =
	 * session.createQuery("FROM Cart", Cart.class); List<Cart> courseList =
	 * query.getResultList();
	 * 
	 * 
	 * // Close the session session.close();
	 * 
	 * // Set the courseList attribute in the request
	 * request.setAttribute("courseList", courseList);
	 * 
	 * // Forward the request to the JSP file RequestDispatcher dispatcher =
	 * request.getRequestDispatcher("your-jsp-file.jsp");
	 * dispatcher.forward(request, response);
	 * 
	 * 
	 * return query.courseList(); } finally { if (session != null) {
	 * session.close(); } } }
	 */
}
