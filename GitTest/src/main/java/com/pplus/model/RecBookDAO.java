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
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
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
	// recBook DB에 저장할 회원에 닉네임, 대분류, 중분류, 소분류, 책 제목, 책가격
	// 책 표지, 책 저자, 책 출판사, 책 소개, 책 페이지, 책 출판연도, 책 코드, 추천 카운터를 입력
	// rexVookSet에 입력 변수는 RecBookDTO recbook 출력 변수는 cnt(int)
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
	// recbook DB에 삭제할 데이터들을 선택하기 위해서 회원의 닉네임으로 찾기
	// 찾은 데이터들 삭제
	// recBookDelete에 입력 변수 회원의 닉네임(string) 출력 변수 cnt(int)
	public int recBookDelete(String nick) {
		connect();
		sql ="delete from recommend_book where member_nick=?";

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
	// recbook DB에 저장되어 있는 데이터들을 회원별로 가져오고싶기 때문에 회원에 닉네임을 통하여 찾기
	// recBookSelectAll에 입력 변수는 회원의 닉네임 출력 변수는 ArrayList<RecBookDTO> list
	public ArrayList<RecBookDTO> recBookSelectAll(String nick) {
		ArrayList<RecBookDTO> list = new ArrayList<RecBookDTO>();
		connect();

		sql = "select * from recommend_book where member_nick=?";

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
