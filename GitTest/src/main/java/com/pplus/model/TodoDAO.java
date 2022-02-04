package com.pplus.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TodoDAO {

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

	public int todoSet(TodoDTO todo) {
		connect();
		sql = "insert into todo values(num_seq.nextval,?,?,?,?,?,?,?,?,sysdate)";

		cnt = 0;
		try {
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, todo.getTodo_content());
			psmt.setString(2, todo.getBook_title());
			psmt.setInt(3, todo.getBook_page());
			psmt.setString(4, todo.getSchedule_num_day());
			psmt.setString(5, todo.getAchieve_study_day());
			psmt.setString(6, todo.getSchedule_day_page());
			psmt.setInt(7, todo.getEditor_num());
			psmt.setInt(8, todo.getDiary_num());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public int todoUpdate(TodoDTO todo) {
		connect();

		sql = "update todo set todo_content=?, book_title=?, book_page=?, schedule_num_day=?, achieve_study_day=? where m_nick=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, todo.getTodo_content());
			psmt.setString(2, todo.getBook_title());
			psmt.setInt(3, todo.getBook_page());
			psmt.setString(4, todo.getAchieve_study_day());
			psmt.setString(5, todo.getSchedule_day_page());
			psmt.setString(6, todo.getMember_nick());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}

	public int todoDelete(String nick, int s_num, int t_num) {
		connect();

		sql = "delete from todo where m_nick=? and seq_schedule_num=? and seq_todo_num=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
			psmt.setInt(2, s_num);
			psmt.setInt(3, t_num);

			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}

	public int todoDeleteAll(String id, int s_num) {
		connect();

		sql = "delete from schedule where m_id=?";

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

}
