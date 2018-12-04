package com.zetta.servlet;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List; 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.zetta.dbconnection.DBConnection;

/*import com.sun.java.util.jar.pack.Package.File;*/

  

@WebServlet("/policyPage")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
		maxFileSize = 1024 * 1024 * 10,
		maxRequestSize = 1024 * 1024 * 50) 
public class PolicyServlet extends HttpServlet {
	
	private static final String SAVE_DIR = "pdf";
    public PolicyServlet() {
        super(); 
    } 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String appPath = request.getServletContext().getRealPath("");
		String savePath = appPath + File.separator + SAVE_DIR;
		File fileSaveDir = new File(savePath);
		if(!fileSaveDir.exists()) {
			fileSaveDir.mkdirs();
		}
		for(Part part : request.getParts()) {
			String fileName = extractFileName(part);
			fileName = new File(fileName).getName();
			part.write(savePath + File.separator + fileName);
		}
		request.setAttribute("uploaded", "Upload has been done successfully!");
		getServletContext().getRequestDispatcher("/add_organizationchart.jsp").forward(request, response);
		
	}
	private String extractFileName(Part part) {
	    String contentDisp = part.getHeader("content-disposition");
	    String[] items = contentDisp.split(";");
	    for (String s : items) {
	        if (s.trim().startsWith("filename")) {
	            return s.substring(s.indexOf("=") + 2, s.length()-1);
	        }
	    }
	    return "";
	}
	
}	
	
	/*response.setContentType("text/http;charset=UTF-8");
	PrintWriter out = response.getWriter(); 
	String fileid = request.getParameter("id");
	Integer id=0;
	if(fileid != null) {
		id = Integer.parseInt("fileid");
	}
	int id = Integer.parseInt(request.getParameter("id")); 
	String title = request.getParameter("title");
	Part part = request.getPart("filepath");
	String filename = extractFileName(part);
	String savePath = "C:\\Workspace\\ZettaoneIntranet\\WebContent\\pdf" + java.io.File.separator + filename ;
	File fileSaveDir = new File(savePath);
	part.write(savePath + File.separator);
	
	Connection con=null;
	PreparedStatement ps=null;
	try { 
		con = DBConnection.getConnection();
		ps = con.prepareStatement("INSERT INTO file_upload (title,filepath) VALUES (?,?)");
		ps.setString(1, "title");
		ps.setString(2, "savePath");
		ps.executeUpdate();
		request.setAttribute("fileuploaded", "Your file uploaded successfully.");
		request.getRequestDispatcher("add_organizationchart.jsp").forward(request, response);
		con.close();
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		if(ps!=null) {
			try {
				ps.close();
			}catch(Exception e) {
				e.printStackTrace();
			} 
		}
	}*/
	/*private String extractFileName(Part part) {
		  
		 String contentDisp = part.getHeader("content-disposition");
		 String[] items = contentDisp.split(";");
		 for (String s : items) {
			  if(s.trim().startsWith("filename")) {
				  return s.substring(s.indexOf("=") + 2, s.length() -1);
			  }
		 }
		return ""; 
	}*/
	 
	
 		
		
/*String policy = request.getParameter("policyid"); 
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
*/
		
		
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
		
	 
