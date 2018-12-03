package com.zetta.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.zetta.bean.PolicyBean;
import com.zetta.dao.PolicyDAO;


@WebServlet("/policyPage")
@MultipartConfig(maxFileSize = 16177215) 
public class PolicyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 
    public PolicyServlet() {
        super(); 
    } 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String policy = request.getParameter("policyid"); 
		Integer policyid=0;
		if(policy !=null) {
			policyid=Integer.parseInt("policy");
		} 
		String submitType = request.getParameter("submit");
		PolicyDAO pdao = new PolicyDAO();
		
		if(submitType.equals("save")) {
			PolicyBean pb = new PolicyBean();
			pb.setTitle(request.getParameter("title"));
			InputStream inputStream = null;
			Part filePart = request.getPart("policy");
			if(filePart != null) {
				System.out.println(filePart.getName());
				System.out.println(filePart.getSize());
				System.out.println(filePart.getContentType()); 
				inputStream = filePart.getInputStream();
			}
			pdao.insertPolicy(pb);
			request.setAttribute("orgmsg", "Your File uploaded.");
			request.getRequestDispatcher("add_organizationchart.jsp").forward(request, response);
		} else if(submitType.equals("editsave")) {
			PolicyBean pb = new PolicyBean();
			pb.setTitle(request.getParameter("title"));
			InputStream inputStream = null;
			Part filePart = request.getPart("policy");
			if(filePart != null) {
				System.out.println(filePart.getName());
				System.out.println(filePart.getSize());
				System.out.println(filePart.getContentType()); 
				inputStream = filePart.getInputStream();
			}
			pdao.updatePolicy(pb);
			request.setAttribute("orgedit", "Your Data modified.");
			request.getRequestDispatcher("editorgchart.jsp").forward(request, response);
		} else if(submitType.equals("edit")) {
			PolicyBean pb = pdao.editPolicy(policyid);
			request.setAttribute("pb", pb);
			request.getRequestDispatcher("editorgchart.jsp").forward(request, response); 
		} else if(submitType.equals("orgListing")) {
			List<PolicyBean> list = pdao.getPolicys();
			request.setAttribute("list", list);
			request.getRequestDispatcher("orgListing.jsp").forward(request, response);
		} else if(submitType.equals("delete")) {
			pdao.deletePolicy(policyid);
			List<PolicyBean> list = pdao.getPolicys();
			request.setAttribute("list", list);
			request.getRequestDispatcher("orgListing.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("login.jsp").forward(request, response); 
		}
		
	}	
	
}	
		
		
		
		
		
		
		
		
		
		
		
		/*InputStream inputStream = null;
		Part filePart = request.getPart("policy");
		if(filePart != null) {
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType()); 
			inputStream = filePart.getInputStream();
		}
		 
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement("INSERT INTO policycontainer (title,policy) values(?,?)");
			ps.setString(1, title);
			if(inputStream != null) {
				 ps.setBinaryStream(2, inputStream);
			}
			int row = ps.executeUpdate();
			if(row > 0) {
				message = "File uploaded and saved into database";
			}
			con.close();
		} catch(Exception e) {
			message = "Error: " +e.getMessage();
			e.printStackTrace();
		} finally {
			if(ps != null) {
				try {
					ps.close();
				} catch (SQLException e) { 
					e.printStackTrace();
				}
			}
		}
		
		request.setAttribute("orgmsg", message);
		getServletContext().getRequestDispatcher("/add_organizationchart.jsp").forward(request, response);*/
		
	 
