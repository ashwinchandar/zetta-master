package com.zetta.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zetta.bean.AnnounceBean;
import com.zetta.dao.AnnounceDAO;


@WebServlet("/AnnouncePage")
public class AnnounceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 
    public AnnounceServlet() {
        super(); 
    }
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		String announce = request.getParameter("announceid");
		Integer announceid=0;
		if(announce != null) {
			  announceid = Integer.parseInt(announce);
		} 
		String submitType = request.getParameter("submit");
		AnnounceDAO adao = new AnnounceDAO();
		
		if(submitType.equals("announce")) {
		AnnounceBean ab = new AnnounceBean(); 
		ab.setTitle(request.getParameter("title"));
		ab.setDate(request.getParameter("date"));
		ab.setAnnouncement(request.getParameter("announcement"));
		adao.insertAnnouncement(ab);
		request.setAttribute("announce", "Announcement Published.");
		request.getRequestDispatcher("new_announcement.jsp").forward(request, response);
		}
		else if(submitType.equals("editannounce")) {
		AnnounceBean ab=new AnnounceBean();
		 ab.setAnnounceid(announceid); 
		ab.setTitle(request.getParameter("title"));
		ab.setDate(request.getParameter("date"));
		ab.setAnnouncement(request.getParameter("announcement"));
		adao.updateAnnouncement(ab);
		request.setAttribute("editannounce", "Successfully Modified.");
		request.getRequestDispatcher("editAnnouncement.jsp").forward(request, response);
		}
		else if(submitType.equals("edit")) { 
			AnnounceBean ab = adao.editAnnouncement(announceid);
			request.setAttribute("ab", ab);
			request.getRequestDispatcher("editAnnouncement.jsp").forward(request, response);
		}
		else if(submitType.equals("announcementListing")) {
			List<AnnounceBean> list = adao.getAnnouncements();
			request.setAttribute("list", list);
			request.getRequestDispatcher("announcementListing.jsp").forward(request, response);
		}
		else if(submitType.equals("delete")) { 
			adao.deleteAnnouncement(announceid);
			List<AnnounceBean> list = adao.getAnnouncements();
			request.setAttribute("list", list);
			request.getRequestDispatcher("announcementListing.jsp").forward(request, response);
		}
		else {
			request.getRequestDispatcher("login.jsp").forward(request, response); 
		}
		
	}

}
