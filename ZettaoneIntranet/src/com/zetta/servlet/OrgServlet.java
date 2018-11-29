package com.zetta.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zetta.bean.EmployeeBean;
import com.zetta.bean.OrgBean;
import com.zetta.dao.OrgDAO;

import jdk.nashorn.internal.ir.RuntimeNode.Request;


@WebServlet("/orgChart")
@MultipartConfig(maxFileSize = 16177215) 
public class OrgServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 
    public OrgServlet() {
        super(); 
    } 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String orgid = request.getParameter("title");
		 String submitType = request.getParameter("submit");
		 OrgDAO odao=new OrgDAO(); 
		 if(submitType.equals("addfile")) {
			 OrgBean ob=new OrgBean();
			 ob.setOrg_file(orgid);
			 ob.setTitle(request.getParameter("title"));
			 odao.insertOrg(ob);
			 request.setAttribute("orgmsg", "File successfully added in record.");
			 request.getRequestDispatcher("").forward(request, response);  /*path*/
		 } else if(submitType.equals("editorg")) {
			 OrgBean ob=new OrgBean();
			 ob.setOrg_file(orgid);
			 ob.setTitle(request.getParameter("title"));
			 odao.updateOrg(ob);
			 request.setAttribute("orgmsg", "File Updated successfully");
			 request.getRequestDispatcher("").forward(request, response);  /*path*/
		 } else if(submitType.equals("edit")) {
			 String orgid1 = request.getParameter("orgid");
			 OrgBean ob=odao.editOrg(orgid1);
			 request.setAttribute("ob", ob);
			 RequestDispatcher dispatcher = request.getRequestDispatcher("");  /*path*/
			 dispatcher.forward(request, response);
		 } else if(submitType.equals("orgListing")) { 
			 List<OrgBean> list = odao.getOrgs();
			 request.setAttribute("list", list);
			 RequestDispatcher dispatcher = request.getRequestDispatcher("");  /*path*/ 
			 dispatcher.forward(request, response);
		 } else if(submitType.equals("delete")) {
			 String orgid1 = request.getParameter("orgid");
			 odao.deleteOrg(orgid1);
			 List<OrgBean> list = odao.getOrgs();
			 request.setAttribute("list", list); 
			 RequestDispatcher dispatcher = request.getRequestDispatcher(""); /*path*/ 
			 dispatcher.forward(request, response); 
		 } else {
			 request.getRequestDispatcher("login.jsp").forward(request, response);
		 }
		   
	}

} 
