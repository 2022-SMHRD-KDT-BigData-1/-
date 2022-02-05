package com.pplus.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ScheduleDAO {
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
	// 스케줄을 DB에 스케줄 번호, 공부 시작하는 낳, 공부 하는 수, 공부 끝나는 날, 하루 페이지 수
	// 작성 날짜, 회원의 닉네임, 책 번호, 책 이름, 책의 총 페이지 수 입력
	// 스케줄 등록 입력 변수 ScheduleDTO 출력 변수 cnt(int)
	public int scheduleSet(ScheduleDTO schedule) {
		connect();
		sql = "insert into schedule values(num_seq.nextval,?,?,?,?,sysdate,?,?,?,?)";
//		 p_num;m_nick;s_start;s_num_day;s_end;s_day_page;book_num;book_title;book_page;
		cnt = 0;
		try {
			psmt = conn.prepareStatement(sql);
			// psmt.setInt(1, schedule.getP_num());
			psmt.setString(1, schedule.getM_nick());
			psmt.setString(2, schedule.getS_start());
			psmt.setString(3, schedule.getS_num_day());
			psmt.setString(4, schedule.getS_end());
			psmt.setInt(5, schedule.getS_day_page());
			psmt.setInt(6, schedule.getBook_num());
			psmt.setString(7, schedule.getBook_title());
			psmt.setInt(8, schedule.getBook_page());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	// DB에 변경할 공부 시작하는 낳, 공부 하는 수, 공부 끝나는 날, 하루 페이지 수
	// 책 번호, 책 이름, 책의 총 페이지 수, 회원의 닉네임 
	// 수정 날짜로 할지 맨 처음 날짜로 할지는 고민 중
	// 스케줄 변경 입력 변수 ScheduleDTO 출력 변수 cnt(int)
	public int scheduleUpdate(ScheduleDTO schedule) {
		connect();

		sql = "update schedule set schedule_start=?, schedule_num_day=?, schedule_end=?, schedule_day_page=?, book_num=?, book_title=?, book_page=? where m_nick=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, schedule.getS_start());
			psmt.setString(2, schedule.getS_num_day());
			psmt.setString(3, schedule.getS_end());
			psmt.setInt(4, schedule.getS_day_page());
			psmt.setInt(5, schedule.getBook_num());
			psmt.setString(6, schedule.getBook_title());
			psmt.setInt(7, schedule.getBook_page());
			psmt.setString(8, schedule.getM_nick());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}
	// DB에 저장된 스케줄 컬럼들을 회원의 닉네임과 스케줄 번호로 삭제
	// 스케줄 삭제 입력 변수는  회원의 닉네임, 스케줄 번호 
	// 출력 변수는 cnt(int)
	public int scheduleDelete(String nick, int num) {
		connect();

		sql = "delete from schedule where m_nick=? and seq_schedule_num=?";

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
	// 스케줄 전체 삭제는 회원의 닉네임이 갖고있는 모든 스케줄 삭제
	// 스케줄 전체 삭제 입력 변수는 회뤈의 닉네임 출력 변수는 cnt(int)
	public int scheduleDeleteAll(String nick) {
		connect();

		sql = "delete from schedule where m_nick=?";

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
	// 포트폴리오를 위한 스케줄 선택
	// 스케줄 선택은 회원의 닉네임과 스케줄 번호와 일치하는 스케줄 DB가 갖고 있는 모든 컬럼들을 가지고 온다
	// 스케줄 선택 입력 변수는 회원의 닉네임, 스케줄 번호 출력 변수는 Schedule DTO의 schedule
	public ScheduleDTO scheduleSelect(String nick, int num) {
		ScheduleDTO schedule = null;
		connect();

		sql = "select * from schedule where m_nick=? and seq_schedule_num=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
			psmt.setInt(2, num);
			rs = psmt.executeQuery();
			if (rs.next()) {
				schedule = new ScheduleDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getInt(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getString(9),
						rs.getInt(10));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return schedule;
	}
	// 스케줄 전체 선택은 회원의 닉네임과 일치하는 모든 스케줄을 가져온다
	// 스케줄 전체 선택의 입력 변수는 회원의 닉네임 출력 변수는 ArrayList의 ScheduleDTO schdulelist
	public ArrayList<ScheduleDTO> scheduleSelectAll(String nick) {
		ArrayList<ScheduleDTO> schedulelist = new ArrayList<ScheduleDTO>();
		connect();

		sql = "select * from schedule where m_nick=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
			rs = psmt.executeQuery();

			while (rs.next()) {

				schedulelist.add(new ScheduleDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getInt(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getString(9),
						rs.getInt(10)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return schedulelist;
	}

}
