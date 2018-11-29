package com.zetta.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zetta.bean.OrgBean;
import com.zetta.dbconnection.DBConnection;

public class OrgDAO {

	static Connection con;
	static PreparedStatement ps;
	
	public void insertOrg(OrgBean ob) {
		int count=0;
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement("INSERT INTO org_chart (title,org_file) VALUES(?,?)");
			ps.setString(++count, ob.getTitle());
			ps.setString(++count, ob.getOrg_file());
			ps.executeUpdate(); 
			con.close();
		} catch(Exception e) {
			e.printStackTrace();
		} finally{
			if(ps!=null) {
				try {
					ps.close();
				} catch (SQLException e) { 
					e.printStackTrace();
				}
			}
		}
	}
	
	public void updateOrg(OrgBean ob) {
		int count=0;
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement("UPDATE org_chart SET org_file=? WHERE title=?");
			ps.setString(++count, ob.getOrg_file());
			ps.setString(++count, ob.getTitle());
			ps.executeUpdate();
			con.close();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(ps!=null) {
				try {
					ps.close();
				} catch (SQLException e) { 
					e.printStackTrace();
				}
			}
		}
	}

	public List<OrgBean> getOrgs(){
		List<OrgBean> list = new ArrayList<>(); 
		try {
			con=DBConnection.getConnection(); 
			ps=con.prepareStatement("SELECT * FROM org_chart");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
			OrgBean ob=new OrgBean();
			ob.setTitle(rs.getString("title"));
			ob.setOrg_file(rs.getString("org_file")); 
			list.add(ob);
			}
			con.close();
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			if(ps!=null) {
				try {
					ps.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return list;
	}
	
	public OrgBean editOrg(String orgid) {
		 OrgBean ob=new OrgBean();
		 try {
			 con=DBConnection.getConnection();
			 ps=con.prepareStatement("SELECT * FROM org_chart WHERE org_id=?");
			 ps.setString(1, orgid);
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 ob.setTitle(rs.getString("title"));
				 ob.setOrg_file(rs.getString("org_file")); 
			 }
			 con.close();
		 } catch(Exception e) {
			 e.printStackTrace();
		 } finally {
			 if(ps!=null) {
				 try {
					ps.close();
				} catch (SQLException e) { 
					e.printStackTrace();
				}
			 }
		 }
		return ob;
	}
	
	public OrgBean deleteOrg(String orgid) {
		OrgBean ob=new OrgBean();
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement("DELETE FROM org_chart WHERE org_id=?");
			ps.setString(1, orgid);
			ps.executeUpdate();
			con.close(); 
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(ps!=null) {
				try {
					ps.close();
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
		}
		return ob;
	}
}
  

