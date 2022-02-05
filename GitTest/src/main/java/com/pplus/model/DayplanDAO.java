package com.pplus.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DayplanDAO {

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

	public int dayplanSet(DayplanDTO dayplan) {
		connect();
		sql = "insert into dayplan values(num_seq.nextval,sysdate,?,?,?,?,?,?,?,?,?,?,?,?)";

		cnt = 0;
		try {
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, dayplan.getSchedule_num());
			psmt.setString(2, dayplan.getMember_nick());
			psmt.setString(3, dayplan.getDayplan_date());
			psmt.setString(4, dayplan.getBook_title());
			psmt.setInt(5, dayplan.getBook_page());
			psmt.setString(6, dayplan.getSchedule_num_day());
			psmt.setString(7, dayplan.getAchieve_study_day());
			psmt.setInt(8, dayplan.getSchedule_day_page());
			psmt.setInt(9, dayplan.getDayplan_check());
			psmt.setString(10, dayplan.getEditor_date());
			psmt.setString(11, dayplan.getDiary_date());
			psmt.setString(12, dayplan.getTodo_date());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public int dayplanUpdate(DayplanDTO dayplan) {
		connect();

		sql = "update dayplan set book_title=?, book_page=?, schedule_num_day=?, achieve_study_day=?, schedule_day_page=? where m_nick=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dayplan.getBook_title());
			psmt.setInt(2, dayplan.getBook_page());
			psmt.setString(3, dayplan.getSchedule_num_day());
			psmt.setString(4, dayplan.getAchieve_study_day());
			psmt.setInt(5, dayplan.getSchedule_day_page());
			psmt.setString(6, dayplan.getMember_nick());
			psmt.setInt(7, dayplan.getDayplan_num());
			
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}

	public int dayplanDelete(String nick, int num) {
		connect();

		sql = "delete from dayplan where m_nick=? and seq_dayplan_num=?";

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

	public int dayplanDeleteAll(String id, int s_num) {
		connect();

		sql = "delete from dayplan where m_id=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setInt(2, s_num);
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public DayplanDTO dayplanSelect(String nick, int num) {
		DayplanDTO dayplan = null;

		sql = "select * from dayplan where m_nick=? and seq_dayplan_num=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
			psmt.setInt(2, num);
			rs = psmt.executeQuery();
			if (rs.next()) {
				dayplan = new DayplanDTO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
						rs.getInt(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getInt(10),
						rs.getInt(11), rs.getString(12),rs.getString(13),rs.getString(14));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dayplan;
	}

	public ArrayList<DayplanDTO> dayplanSelectAll(String nick, int num) {
		ArrayList<DayplanDTO> dayplanlist = new ArrayList<DayplanDTO>();
		connect();

		sql = "select * from dayplan where m_nick=? and seq_schedule_num=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
			psmt.setInt(2, num);
			rs = psmt.executeQuery();

			while (rs.next()) {

				dayplanlist.add(new DayplanDTO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
						rs.getInt(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getInt(10),
						rs.getInt(11), rs.getString(12),rs.getString(13),rs.getString(14)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return dayplanlist;
	}

}
