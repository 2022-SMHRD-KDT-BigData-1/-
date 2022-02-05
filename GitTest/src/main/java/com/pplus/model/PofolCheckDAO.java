package com.pplus.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class PofolCheckDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private int cnt;
	private String sql;

	public void connect() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "campus_f_2_0115";
			String password = "smhrd2";

			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int pofolcheckSet(PofolCheckDTO pofolcheck) {
		connect();
		sql = "insert into portfolio_check values(?,?,?,?,?,?)";

		cnt = 0;
		try {
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, pofolcheck.getPofol_num());
			psmt.setString(2, pofolcheck.getMember_nick());
			psmt.setString(3, pofolcheck.getMember_name());
			psmt.setInt(4, pofolcheck.getSchedule_num());
			psmt.setInt(5, pofolcheck.getDayplan_num());
			psmt.setInt(6, pofolcheck.getPofol_check_box());
		
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public ArrayList<Integer> pofolcheckSelectAll(String nick, int num) {
		ArrayList<Integer> list = new ArrayList<Integer>();
		
		connect();

		sql = "select seq_dayplan_num from portfolio_check where m_nick=? and seq_pofol_num=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
			psmt.setInt(2, num);
			
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				int dayplan_num = rs.getInt(1);
				list.add(dayplan_num);
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
}
