package com.pplus.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AchieveDAO {

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
	
	public int achieveSet(AchieveDTO achieve) {
		connect();
		sql = "insert into achieve values(num_seq.nextval,?,?,?,?,?,?)";

		cnt = 0;
		try {
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, achieve.getAchieve_study_day());
			psmt.setInt(2, achieve.getAchieve_study_page());
			psmt.setInt(3, achieve.getSchedule_num());
			psmt.setString(4, achieve.getMember_nick());
			psmt.setInt(5, achieve.getBook_page());
			psmt.setString(6, achieve.getSchedule_num_day());
			
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public int achieveUpdate(AchieveDTO achieve) {
		connect();

		sql = "update achieve set achieve_study_day=?, achieve_study_page=?, book_page=?, schedule_num_day=? where achieve_num=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, achieve.getAchieve_study_day());
			psmt.setInt(2, achieve.getAchieve_study_page());
			psmt.setInt(3, achieve.getBook_page());
			psmt.setString(4, achieve.getSchedule_num_day());
			psmt.setInt(5, achieve.getAchieve_num());
	
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public int achieveDelete(String nick, int num) {
		connect();

		sql = "delete from achieve where m_nick=? and seq_achieve_num=?";

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
	
	public AchieveDTO achieveSelect(String nick, int num) {
		AchieveDTO achieve =null;
		connect();

		sql = "select * from achieve where m_nick=? and seq_achieve_num=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
			psmt.setInt(2, num);

			rs = psmt.executeQuery();
			if (rs.next()) {
				achieve = new AchieveDTO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4),
						rs.getString(5), rs.getInt(6), rs.getString(7));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return achieve;
	}
	
	public ArrayList<AchieveDTO> achieveSelectAll(String nick, int num) {
		ArrayList<AchieveDTO> achievelist = new ArrayList<AchieveDTO>();
		connect();

		sql = "select * from achieve where m_nick=? and seq_achieve_num=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
			psmt.setInt(2, num);
			rs = psmt.executeQuery();

			while (rs.next()) {

				achievelist.add(new AchieveDTO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4),
						rs.getString(5), rs.getInt(6), rs.getString(7)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return achievelist;
	}
}
