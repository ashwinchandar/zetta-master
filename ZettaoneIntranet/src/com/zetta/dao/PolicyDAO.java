package com.zetta.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.zetta.bean.PolicyBean;
import com.zetta.dbconnection.DBConnection;

public class PolicyDAO {

	static Connection con;
	static PreparedStatement ps;
	
	public void insertPolicy(PolicyBean pb) {
		int count=0;
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement("INSERT INTO policycontainer (title,policy) values(?,?)");
			ps.setString(++count, pb.getTitle());
			/*ps.setBinaryStream(++count, pb.getPolicy());*/
			InputStream inputStream = null;
			if(inputStream != null) {
				ps.setBinaryStream(++count, pb.getPolicy());
			}
			ps.executeUpdate();
			con.close();
		} catch(Exception e) {
			e.printStackTrace();
		} finally{
			if(ps!=null) {
				try {
					ps.close();
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	public void updatePolicy(PolicyBean pb) {
		int count=0;
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement("UPDATE policycontainer SET title=?, policy=? WHERE policy_id=?");
			ps.setString(++count, pb.getTitle());
			ps.setBinaryStream(++count, pb.getPolicy());
			ps.setInt(++count, pb.getPolicyid());
			ps.executeUpdate();
			con.close();
		}catch(Exception e) {
			e.printStackTrace();
		} finally{
			if(ps!=null) {
				try {
					ps.close();
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	public List<PolicyBean> getPolicys(){
		List<PolicyBean> list = new ArrayList<>();
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement("SELECT * FROM policycontainer");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				PolicyBean pb = new PolicyBean();
				pb.setPolicyid(rs.getInt("policy_id"));
				pb.setTitle(rs.getString("title"));
				pb.setPolicy(rs.getBinaryStream("policy"));
				list.add(pb);
			}
			con.close();
		}catch(Exception e) {
			e.printStackTrace();
		} finally{
			if(ps!=null) {
				try {
					ps.close();
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
		} 
		return list;
	}
	
	public PolicyBean editPolicy(Integer policy_id) {
		PolicyBean pb=new PolicyBean();
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement("SELECT * FROM policycontainer WHERE policy_id=?");
			ps.setInt(1, policy_id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				pb.setPolicyid(policy_id);
				pb.setTitle(rs.getString("title"));
				pb.setPolicy(rs.getBinaryStream("policy")); 
			}
			con.close();
		} catch(Exception e) {
			e.printStackTrace();
		} finally{
			if(ps!=null) {
				try {
					ps.close();
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
		} 
		return pb;
	}
	
	public PolicyBean deletePolicy(Integer policy_id) {
		PolicyBean pb=new PolicyBean();
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement("DELETE FROM policycontainer WHERE policy_id=?");
			ps.setInt(1, policy_id);
			ps.executeQuery();
			con.close();
	} catch(Exception e) {
		e.printStackTrace();
	} finally{
		if(ps!=null) {
			try {
				ps.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
		return pb; 
	}
	
}
