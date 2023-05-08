package com.servlet;

import java.io.File;
import java.io.IOException;
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
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import com.entities.Videos;

public class AddVideoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private String filePath;
    private SessionFactory sessionFactory;

    @Override
    public void init() throws ServletException {
        super.init();
        filePath = getServletContext().getRealPath("/Image/uploads");
        System.out.print(filePath);
        Configuration configuration = new Configuration().configure().addAnnotatedClass(Videos.class);
        sessionFactory = configuration.buildSessionFactory();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<FileItem> fileItems = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);

            for (FileItem item : fileItems) {
                if (!item.isFormField()) {
                    Videos fileEntity = new Videos();
                    fileEntity.setName(item.getName());
                    fileEntity.setContentType(item.getContentType());
                    String fileName = saveFile(item);
                    fileEntity.setName(fileName);

                    saveToDatabase(fileEntity);

                    HttpSession httpSession = request.getSession();
                    httpSession.setAttribute("message", "File Uploaded Successfully!");
                }
            }

            request.getRequestDispatcher("recordedSession.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("message", "Error uploading File! " + e.getMessage());
            response.sendRedirect("teacher.jsp");
        }
    }

    private String saveFile(FileItem item) throws Exception {
        String fileName = item.getName();
        String filePath = this.filePath + File.separator + fileName;
        File file = new File(filePath);
        item.write(file);
        return fileName;
    }

    private void saveToDatabase(Videos fileEntity) throws Exception {
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

    private List<Videos> retrieveVideosFromDatabase() {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            Query<Videos> query = session.createQuery("FROM Videos", Videos.class);
            return query.list();
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }
}
