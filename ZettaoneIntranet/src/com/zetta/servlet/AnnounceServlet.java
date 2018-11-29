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


@WebServlet("/AnnounceServlet")
public class AnnounceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 
    public AnnounceServlet() {
        super(); 
    }
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String announceid = request.getParameter("title");
		String submitType = request.getParameter("submit");
		AnnounceDAO adao = new AnnounceDAO();
		
		if(submitType.equals("announce")) {
		AnnounceBean ab = new AnnounceBean();
		ab.setTitle(announceid);
		ab.setData(request.getParameter("date"));
		ab.setAnnouncement(request.getParameter("announcement"));
		adao.insertAnnouncement(ab);
		request.setAttribute("announce", "Announcement Published.");
		request.getRequestDispatcher("new_announcement.jsp").forward(request, response);
		}
		else if(submitType.equals("editannounce")) {
		AnnounceBean ab=new AnnounceBean();
		ab.setTitle(announceid);
		ab.setData(request.getParameter("date"));
		ab.setAnnouncement(request.getParameter("announcement"));
		adao.updateAnnouncement(ab);
		request.setAttribute("editannounce", "Successfully Modified.");
		request.getRequestDispatcher("editAnnouncement.jsp").forward(request, response);
		}
		else if(submitType.equals("edit")) {
			String announceid1 = request.getParameter("announceid");
			AnnounceBean ab = adao.editAnnouncement(announceid1);
			request.setAttribute("ab", ab);
			request.getRequestDispatcher("editAnnouncement.jsp").forward(request, response);
		}
		else if(submitType.equals("announcementListing")) {
			List<AnnounceBean> list = adao.getAnnouncements();
			request.setAttribute("list", list);
			request.getRequestDispatcher("announcementListing.jsp").forward(request, response);
		}
		else if(submitType.equals("delete")) {
			String announceid1 = request.getParameter("announceid");
			adao.deleteAnnouncement(announceid1);
			List<AnnounceBean> list = adao.getAnnouncements();
			request.setAttribute("list", list);
			request.getRequestDispatcher("announcementListing.jsp").forward(request, response);
		}
		else {
			request.getRequestDispatcher("login.jsp").forward(request, response); 
		}
		
	}

}
