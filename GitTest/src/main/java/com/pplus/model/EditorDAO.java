package com.pplus.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EditorDAO {

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
	
	public int editorSet(EditorDTO editor) {
		connect();
		sql = "insert into editor values(num_seq.nextval,?,?,sysdate,?,?)";

		cnt = 0;
		try {
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, editor.getEditor_title());
			psmt.setString(2, editor.getEditor_content());
			psmt.setInt(3, editor.getSchedule_num());
			psmt.setString(4, editor.getMember_nick());
		

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public int editorUpdate(EditorDTO editor) {
		connect();

		sql = "update editor set editor_title=?, editor_content=? where m_id=? and seq_editor_num=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, editor.getEditor_title());
			psmt.setString(2, editor.getEditor_content());
			psmt.setString(3, editor.getMember_nick());
			psmt.setInt(4, editor.getEditor_num());
			

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public int editorDelete(String nick, int num) {
		connect();

		sql = "delete from editor where m_nick=? and seq_editor_num=?";

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
	
	public EditorDTO editorSelect(String nick, int num) {
		EditorDTO editor =null;
		connect();

		sql = "select * from editor where m_nick=? and seq_editor_num=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
			psmt.setInt(2, num);

			rs = psmt.executeQuery();
			if (rs.next()) {
				editor = new EditorDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getInt(5), rs.getString(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return editor;
	}
}