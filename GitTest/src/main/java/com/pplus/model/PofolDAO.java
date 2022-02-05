package com.pplus.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PofolDAO {
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
	
	public int pofolSet(PofolDTO pofol) {
		connect();
		sql = "insert into portfolio values(num_seq.nextval,?,?,sysdate,?,?,?)";

		cnt = 0;
		try {
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, pofol.getPofol_title());
			psmt.setString(2, pofol.getPofol_content());
			psmt.setString(3, pofol.getMember_nick());
			psmt.setString(4, pofol.getMember_name());
			psmt.setInt(5, pofol.getSchedule_num());
		
		
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public int pofolDelete(String nick, int num) {
		connect();

		sql = "delete from portpolio where m_nick=? and seq_portfolio_num=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
			psmt.setInt(2, num);

			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public PofolDTO pofolSelect(String nick, int num) {
		PofolDTO pofol = null;
		connect();

		sql = "select * from portfolio where m_nick=? and seq_portfolio_num=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
			psmt.setInt(2, num);
			rs = psmt.executeQuery();
			if (rs.next()) {
				pofol = new PofolDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5),rs.getString(6), rs.getInt(7));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return pofol;
	}
	
	public int pofolUpdate(PofolDTO pofol) {
		connect();

		sql = "update portfolio set portfolio_title=?, portfolio_content=?, seq_schedule_num=? where m_nick=? and seq_portfolio_num=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, pofol.getPofol_title());
			psmt.setString(2, pofol.getPofol_content());
			psmt.setInt(3, pofol.getSchedule_num());
			psmt.setString(4, pofol.getMember_nick());
			psmt.setInt(5, pofol.getPofol_num());
		

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}
	
}
