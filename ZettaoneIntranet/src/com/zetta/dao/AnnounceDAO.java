package com.zetta.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.zetta.bean.AnnounceBean;
import com.zetta.dbconnection.DBConnection;

public class AnnounceDAO {
	static Connection con;
	static PreparedStatement ps;
	
	public void insertAnnouncement(AnnounceBean ab) {
		int count=0;
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement("INSERT INTO announcement(title,announcement) VALUES(?,?)");
			ps.setString(++count, "title");
			ps.setString(++count, "announcement");
			ps.executeUpdate();
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
		}
	}
	
	public void updateAnnouncement(AnnounceBean ab) {
		int count=0;
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement("UPDATE INTO announcement SET announcement=?");
			ps.setString(++count, "title");
			ps.setString(++count, "announcement");
			ps.executeUpdate();
			con.close();
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(ps!=null) {
				try {
					ps.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	public List<AnnounceBean> getAnnouncements(){
		List<AnnounceBean> list = new ArrayList<>();
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement("SELECT * FROM announcement");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				AnnounceBean ab=new AnnounceBean();
				ab.setTitle(rs.getString("title"));
				ab.setAnnouncement(rs.getString("announcement"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(ps!=null) {
				try {
					ps.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
		}
		return list; 
	}
	
	
	
}
