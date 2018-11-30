package com.zetta.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zetta.bean.AdminBean;
import com.zetta.dao.AdminDAO;
 
 
@WebServlet("/adminPage")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 
    public AdminServlet() {
        super(); 
    } 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String adminid = request.getParameter("admin_card_no");
		String password = request.getParameter("password1");
		String submitType = request.getParameter("submit");
		AdminDAO adao = new AdminDAO();
		if(submitType.equals("login")){ 
			AdminBean ab = adao.getAdmin(adminid, password); 
			session.setAttribute("role", ab.getRole());
			//System.out.println("test");
			if(ab != null) {
				if(ab.getRole() != null && ab.getRole().trim().equals("admin")) { 
					request.setAttribute("adminsuccessmsg", "Successfully logged In");
					request.setAttribute("name", ab.getName());
					//List<AdminBean> list = adao.getAdmins();
					//request.setAttribute("list", list);
					//System.out.println("test1");
					RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp"); 
					dispatcher.forward(request, response); 
				}else {
					request.setAttribute("errormsg","Username or Password is incorrect");
					request.getRequestDispatcher("login.jsp").forward(request, response); 
				}
			}   			
		} else if(submitType.equals("register")) {
			AdminBean ab = new AdminBean();
			ab.setAdmin_card_no(adminid);
			ab.setName(request.getParameter("name"));  
			ab.setDob(request.getParameter("dob")); 
			//System.out.println("DOB: "+request.getParameter("dob"));
			ab.setDepartment(request.getParameter("department"));
			ab.setDesignation(request.getParameter("designation"));
			ab.setEmail(request.getParameter("email"));
			ab.setMobile(request.getParameter("mobile"));
			ab.setLocation(request.getParameter("location"));
			ab.setRole(request.getParameter("role").trim());  
			ab.setPassword1(password);
			adao.insertAdmin(ab);
			request.setAttribute("successMessage","Admin Registered successfully.");
			request.getRequestDispatcher("admin_register.jsp").forward(request, response); 
		} else if(submitType.equals("editsubmit")) {
			AdminBean ab = new AdminBean(); 
			ab.setAdmin_card_no(adminid);
			ab.setName(request.getParameter("name"));  
			ab.setDob(request.getParameter("dob")); 
			//System.out.println("DOB: "+request.getParameter("dob")); 
			ab.setDepartment(request.getParameter("department"));
			ab.setDesignation(request.getParameter("designation"));
			ab.setEmail(request.getParameter("email"));
			ab.setMobile(request.getParameter("mobile"));
			ab.setLocation(request.getParameter("location"));
			ab.setRole(request.getParameter("role").trim());  
			ab.setPassword1(password);
			adao.updateAdmin(ab);
			request.setAttribute("successMessage","Successfully Edited Admin Record");
			request.getRequestDispatcher("editAdmin.jsp").forward(request, response); 
		}else if(submitType.equals("edit")) { 
			String adminid1 = request.getParameter("adminid");
			AdminBean ab = adao.editAdmin(adminid1);
			request.setAttribute("ab", ab);
			RequestDispatcher dispatcher = request.getRequestDispatcher("editAdmin.jsp");
			dispatcher.forward(request, response); 
		}else if(submitType.equals("adminListing")) { 
			List<AdminBean> list = adao.getAdmins(); 
			//System.out.println("listing"+list.size()); 
			request.setAttribute("list", list);
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminListing.jsp");
			dispatcher.forward(request, response);
		}else if(submitType.equals("delete")) {
			String adminid1 = request.getParameter("adminid");
			adao.deleteAdmin(adminid1);
			request.setAttribute("deletesuccessmessage","Deleted Successfully"); 
			List<AdminBean> list = adao.getAdmins(); 
			request.setAttribute("list", list);
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminListing.jsp");
			dispatcher.forward(request, response);
		}else if(submitType.equals("logout")) {
			HttpSession session1 = request.getSession(true);
			if(session1 != null) {
				session1.invalidate();
			}
			request.setAttribute("logout","You are logged out");
			request.getRequestDispatcher("login.jsp").forward(request, response); 
		}
		else {
			request.setAttribute("errormsg","Username or Password is incorrect");
			request.getRequestDispatcher("login.jsp").forward(request, response); 
		}  
		
	}  
}
