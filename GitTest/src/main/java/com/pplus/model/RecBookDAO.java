package com.pplus.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RecBookDAO {
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

	public int recBookSet(RecBookDTO recbook) {
		connect();
		sql = "insert into recommend_book values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		cnt = 0;
		try {
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, recbook.getMember_nick());
			psmt.setString(2, recbook.getUser_type1());
			psmt.setString(3, recbook.getUser_type2());
			psmt.setString(4, recbook.getUser_type3());
			psmt.setString(5, recbook.getBook_title());
			psmt.setInt(6, recbook.getBook_price());
			psmt.setString(7, recbook.getBook_img());
			psmt.setString(8, recbook.getBook_author());
			psmt.setString(9, recbook.getBook_publisher());
			psmt.setString(10, recbook.getBook_description());
			psmt.setInt(11, recbook.getBook_page());
			psmt.setString(12, recbook.getBook_pubdate());
			psmt.setString(13, recbook.getBook_isbn());
			psmt.setString(14, recbook.getContents_cnt());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public int recBookDelete(String nick) {
		connect();
		sql ="delete from recommend_book where id=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
	
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public ArrayList<RecBookDTO> recBookSelectAll(String nick) {
		ArrayList<RecBookDTO> list = new ArrayList<RecBookDTO>();
		connect();

		sql = "select * from recommend_book where m_nick=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);

			rs = psmt.executeQuery();
			
			while (rs.next()) {

				list.add(new RecBookDTO(rs.getString(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getInt(6), rs.getString(7), rs.getString(8),
						rs.getString(9), rs.getString(10), rs.getInt(11), rs.getString(12), rs.getString(13),
						rs.getString(14)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	
	
	

}
