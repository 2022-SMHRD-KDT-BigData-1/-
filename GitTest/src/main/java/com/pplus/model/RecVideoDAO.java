package com.pplus.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RecVideoDAO {
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
	// recvideo DB에 저장할 회원의 닉네임, 대분휴, 중분류, 소분류, 영상 제목, 영상 날짜, 영상 썸네일, 영상 주소, 
	// 영상 채널명, 영상 조회수, 영상 시간 저장
	// rexvideoSet에 입력 변수는 RecVideoDTO recvideo 출력 변수 cnt(int)
	public int recVideoSet(RecVideoDTO recvideo) {
		connect();
		sql = "insert into recommend_video values(?,?,?,?,?,?,?,?,?,?,?)";

		cnt = 0;
		try {
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, recvideo.getMember_nick());
			psmt.setString(2, recvideo.getUser_type1());
			psmt.setString(3, recvideo.getUser_type2());
			psmt.setString(4, recvideo.getUser_type3());
			psmt.setString(5, recvideo.getVideo_title());
			psmt.setString(6, recvideo.getVideo_upload());
			psmt.setString(7, recvideo.getVideo_thumnail());
			psmt.setString(8, recvideo.getVideo_url());
			psmt.setString(9, recvideo.getVideo_channel());
			psmt.setString(10, recvideo.getVideo_hits());
			psmt.setString(11, recvideo.getVideo_time());
		

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	// recvideo DB에 삭제할 데이터들을 선택하기 위해서 회원의 닉네임으로 찾기
	// 찾은 데이터들 삭제
	// recVideoDelete에 입력 변수 회원의 닉네임(string) 출력 변수 cnt(int)
	public int recVideoDelete(String nick) {
		connect();
		sql ="delete from recommend_video where member_nick=?";

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
	// recvideo DB에 저장되어 있는 데이터들을 회원별로 가져오고싶기 때문에 회원에 닉네임을 통하여 찾기
	// recvideoSelectAll에 입력 변수는 회원의 닉네임 출력 변수는 ArrayList<RecVideoDTO> list
	public ArrayList<RecVideoDTO> recVideoSelectAll(String nick) {
		ArrayList<RecVideoDTO> list = new ArrayList<RecVideoDTO>();
		connect();

		sql = "select * from recommend_video where member_nick=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);

			rs = psmt.executeQuery();
			
			while (rs.next()) {

				list.add(new RecVideoDTO(rs.getString(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8),
						rs.getString(9), rs.getString(10), rs.getString(11)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	
	
	

}
