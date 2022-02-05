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
	
	public int diarySet(DiaryDTO diary) {
		connect();
		sql = "insert into diary values(num_seq.nextval,?,?,sysdate,?,?)";

		cnt = 0;
		try {
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, diary.getDiary_title());
			psmt.setString(2, diary.getDiary_content());
			psmt.setInt(3, diary.getSchedule_num());
			psmt.setString(4, diary.getMember_nick());
		

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public int diaryUpdate(DiaryDTO diary) {
		connect();
		sql = "update diary set diary_title=?, diary_content=? where m_id=? and seq_diary_num=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, diary.getDiary_title());
			psmt.setString(2, diary.getDiary_content());
			psmt.setString(3, diary.getMember_nick());
			psmt.setInt(4, diary.getDiary_num());
			

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public int diaryDelete(String nick, int num) {
		connect();

		sql = "delete from diary where m_nick=? and seq_diary_num=?";

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
	
	public DiaryDTO diarySelect(String nick, int num) {
		DiaryDTO diary =null;
		connect();

		sql = "select * from diary where m_nick=? and seq_diary_num=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
			psmt.setInt(2, num);

			rs = psmt.executeQuery();
			if (rs.next()) {
				diary = new DiaryDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getInt(5), rs.getString(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return diary;
	}

	
	
}
