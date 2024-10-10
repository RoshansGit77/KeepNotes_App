package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Transaction;
import org.hibernate.Session;

import com.entities.Note;
import com.helper.*;

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteServlet() {
        super();
    }

	@SuppressWarnings("deprecation")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Transaction t = s.beginTransaction();
			Note note =(Note)s.get(Note.class,id); // we can use find insteed of get
			s.delete(note);
			t.commit();
			s.close();
			response.sendRedirect("all_notes.jsp");
		}catch(Exception e) {
			e.printStackTrace();
			
		}
	}

}
