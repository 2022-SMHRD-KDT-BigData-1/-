package com.pplus.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DiaryDAO {

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
	
	public int diarySet(DayplanDTO dayplan) {
		connect();
		sql = "insert into diary values(num_seq.nextval,?,?,sysdate,?,?)";

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

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
}
