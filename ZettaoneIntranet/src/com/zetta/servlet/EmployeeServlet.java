package com.zetta.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zetta.bean.AdminBean;
import com.zetta.bean.EmployeeBean;
import com.zetta.dao.EmployeeDAO;

 
@WebServlet("/employeeDirectory")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 
    public EmployeeServlet() {
        super(); 
    } 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String employeeid = request.getParameter("emp_card_no");
		String submitType = request.getParameter("submit");
		EmployeeDAO edao = new EmployeeDAO();
		
		if(submitType.equals("eregister")) {
		EmployeeBean eb = new EmployeeBean();
		eb.setEmp_card_no(employeeid);
		eb.setName(request.getParameter("name").trim());
		eb.setDob(request.getParameter("dob"));
		eb.setDepartment(request.getParameter("department"));
		eb.setDesignation(request.getParameter("designation"));
		eb.setEmail(request.getParameter("email"));
		eb.setMobile(request.getParameter("mobile"));
		eb.setLocation(request.getParameter("location"));
		edao.insertEmployee(eb);
		request.setAttribute("empsucmsg", "Employee Added Successfully");
		request.getRequestDispatcher("add_employee.jsp").forward(request, response);
		} else if(submitType.equals("editemployee")) {
		EmployeeBean eb = new EmployeeBean();
		eb.setEmp_card_no(employeeid); 
		eb.setName(request.getParameter("name").trim());
		eb.setDob(request.getParameter("dob"));
		eb.setDepartment(request.getParameter("department"));
		eb.setDesignation(request.getParameter("designation"));
		eb.setEmail(request.getParameter("email"));
		eb.setMobile(request.getParameter("mobile"));
		eb.setLocation(request.getParameter("location"));
		edao.updateEmployee(eb);
		request.setAttribute("empsucmsg", "Employee Modified Successfully");
		request.getRequestDispatcher("editEmployee.jsp").forward(request, response);
		} else if(submitType.equals("edit")) {
			String employeeid1 = request.getParameter("employeeid");
			EmployeeBean eb = edao.editEmployee(employeeid1); 
			request.setAttribute("eb", eb);
			RequestDispatcher dispatcher = request.getRequestDispatcher("editEmployee.jsp");
			dispatcher.forward(request, response);
		} else if(submitType.equals("employeeListing")) {
			List<EmployeeBean> list = edao.getEmployees();
			//System.out.println("listing"+list.size()); 
			request.setAttribute("list", list);
			RequestDispatcher dispatcher = request.getRequestDispatcher("employeeListing.jsp");
			dispatcher.forward(request, response); 
		} else if(submitType.equals("delete")) {
			String employeeid1 = request.getParameter("employeeid");
			edao.deleteEmployee(employeeid1);
			List<EmployeeBean> list = edao.getEmployees();
			request.setAttribute("list", list);
			RequestDispatcher dispatcher = request.getRequestDispatcher("employeeListing.jsp");
			dispatcher.forward(request, response);
		} else {
			/*request.setAttribute("errormsg","Username or Password is incorrect");*/
			request.getRequestDispatcher("login.jsp").forward(request, response); 
		}
		
		
	}

}
