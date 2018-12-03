package com.zetta.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zetta.bean.PolicyBean;
import com.zetta.dbconnection.DBConnection;

public class OrgDAO {

	static Connection con;
	static PreparedStatement ps;
	
	public void insertOrg(PolicyBean ob) {
		int count=0;
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement("INSERT INTO org_chart (title,org_file) VALUES(?,?)");
			ps.setString(++count, ob.getTitle());
			/*ps.setString(++count, ob.getOrg_file());*/
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
	
	public void updateOrg(PolicyBean ob) {
		int count=0;
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement("UPDATE org_chart SET org_file=? WHERE title=?");
			/*ps.setString(++count, ob.getOrg_file());*/
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

	public List<PolicyBean> getOrgs(){
		List<PolicyBean> list = new ArrayList<>(); 
		try {
			con=DBConnection.getConnection(); 
			ps=con.prepareStatement("SELECT * FROM org_chart");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
			PolicyBean ob=new PolicyBean();
			ob.setTitle(rs.getString("title"));
			/*ob.setOrg_file(rs.getString("org_file")); */
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
	
	public PolicyBean editOrg(String orgid) {
		 PolicyBean ob=new PolicyBean();
		 try {
			 con=DBConnection.getConnection();
			 ps=con.prepareStatement("SELECT * FROM org_chart WHERE org_id=?");
			 ps.setString(1, orgid);
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				 ob.setTitle(rs.getString("title"));
				 /*ob.setOrg_file(rs.getString("org_file")); */
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
	
	public PolicyBean deleteOrg(String orgid) {
		PolicyBean ob=new PolicyBean();
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
  

