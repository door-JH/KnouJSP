package com.member.db;

import java.sql.*;
import java.util.*;
import org.mariadb.*;
import org.mariadb.*;
public class MemberDAO {
	
	private Connection getConnection() throws Exception {
		Class.forName("org.mariadb.jdbc.Driver");
		String url = "jdbc:mariadb://172.30.1.79:3306/doorJH";
		String user = "root";
		String pw = "root";
		Connection con = DriverManager.getConnection(url, user, pw);
		
		return con;
	}
	
	public ArrayList<MemberDTO> selectAll(){
		
		ArrayList<MemberDTO> memberList = new ArrayList<MemberDTO>();
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			
			con = getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery("select * from MEMBER");
			
			while(rs.next()) {
				MemberDTO member = new MemberDTO();
				member.setId(rs.getInt("id"));
				member.setPass(rs.getString("pass"));
				member.setName(rs.getString("name"));
				member.setPhone(rs.getString("phone"));
				member.setAddress(rs.getString("address"));
				memberList.add(member);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} 
	
		return memberList;
	}
	
	public MemberDTO selectOne(int id) {
		MemberDTO mb = new MemberDTO();
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			con = getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(String.format("select * from MEMBER where id = %s", id));
			
			if(rs.next()) {
				mb.setId(rs.getInt("id"));
				mb.setPass(rs.getString("pass"));
				mb.setName(rs.getString("name"));
				mb.setPhone(rs.getString("phone"));
				mb.setAddress(rs.getString("address"));
				
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return mb;
	}
	
	
	public void InsertOne(MemberDTO mb) {
		

		Connection con = null;
		Statement stmt = null;
		
		String sql = String.format("Insert into MEMBER VALUES(%s, '%s', '%s', '%s', '%s')", 
												mb.getId(), mb.getPass(), mb.getAddress(), mb.getPhone(), mb.getAddress());
				
		try {
			
			con = getConnection();
			stmt = con.createStatement();
			
			stmt.executeUpdate(sql);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	
	public void updateOne(MemberDTO mb) {
		
		Connection con = null;
		Statement stmt = null;
		
		String sql = String.format("update MEMBER set "
				+ "id = %s, pass ='%s', name = '%s', phone = '%s', address = '%s' where id = %s", 
				mb.getId(), mb.getPass(), mb.getAddress(), mb.getPhone(), mb.getAddress(), mb.getId());
				
		try {
			
			con = getConnection();
			stmt = con.createStatement();
			
			stmt.executeUpdate(sql);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	public void deleteOne(int id) {
		
		Connection con = null;
		Statement stmt = null;
		
		String sql = String.format("delete from MEMBER where id = %s", id);
				
		try {
			
			con = getConnection();
			stmt = con.createStatement();
			
			stmt.executeUpdate(sql);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

//	public static void main(String[] args) throws Exception {
//		
//		MemberDAO md = new MemberDAO();
//		md.getConnection();
//		
//	}
	
}
