package com.pplus.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class PMemberDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private int cnt;
	private String sql;
	private boolean tf;

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

	// 회원가입 입력 변수 PMemberDTO 출력 변수 cnt(int)
	// db에 id, pw, nick, name 입력
	public int pmemberJoin(PMemberDTO member) {
		connect();
		sql = "insert into member values(?,?,?,?)";
		cnt = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, member.getM_id());
			psmt.setString(2, member.getM_pw());
			psmt.setString(3, member.getM_nick());
			psmt.setString(4, member.getM_name());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	// 회원가입 입력 변수 id, pw 출력 변수 PMemberDTO
	// db에서 pw를 제외한 멤버의 정보를 가져옴
	public PMemberDTO pmemberLogin(String id, String pw) {
		connect();
		PMemberDTO member = null;
		sql = "select m_id, m_pw, m_nick from member where m_id = ? and m_pw = ?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);

			rs = psmt.executeQuery();

			if (rs.next()) {
				member = new PMemberDTO(id, null, rs.getString("m_nick"),null, null, null, null);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return member;
	}
	
	// 회원가입 입력 변수 PMemberDTO, pw 출력 변수 cnt
	// 
	public int pmemberUpdate(PMemberDTO member) {
		connect();

		sql = "update member set m_pw=?, m_nick=? where m_id=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, member.getM_pw());
			psmt.setString(2, member.getM_nick());
			psmt.setString(3, member.getM_id());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}
	
	public boolean pmemberIdCheck(String id) {
		connect();
		
		sql = "select * from member where m_id=?";
		
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			if (rs.next()) {
				tf=true;
			} else {
				tf=false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return tf;
	}
	
	public boolean pmemberNickCheck(String nick) {
		connect();
		
		sql = "select * from member where m_nick=?";
		
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			if (rs.next()) {
				tf=true;
			} else {
				tf=false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return tf;
	}
	

	public ArrayList<PMemberDTO> pmemberSelectAll() {
		ArrayList<PMemberDTO> list = new ArrayList<PMemberDTO>();
		connect();

		sql = "select m_id, m_nick from member";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String m_id = rs.getString(1);
				String m_nick = rs.getString(2);

				list.add(new PMemberDTO(m_id, null, m_nick, null, null,null, null));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}

	public int pmemberTypeSet(PMemberDTO member) {
		connect();
		sql = "insert into member_type id=?, book_part1_cat=?, book_part2_cat=?,book_part3_cat=?";
		cnt = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, member.getM_id());
			psmt.setString(2, member.getBook_part1_cat());
			psmt.setString(3, member.getBook_part2_cat());
			psmt.setString(4, member.getBook_part3_cat());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public PMemberDTO pmemberTypeCheck(String id, String nick) {
		connect();
		PMemberDTO member = null;
		sql = "select book_part1, book_part2, book_part3 from member where id=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);

			rs = psmt.executeQuery();

			if (rs.next()) {

				String book_part1 = rs.getString(1);
				String book_part2 = rs.getString(2);
				String book_part3 = rs.getString(3);

				member = new PMemberDTO(id, null, nick,null, book_part1, book_part2, book_part3);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return member;
	}

	public int pmemberTypeUpdate(PMemberDTO member) {
		connect();

		sql = "update member set book_part1=?, book_part2=?, book_part3=? where m_id=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, member.getBook_part1_cat());
			psmt.setString(2, member.getBook_part2_cat());
			psmt.setString(3, member.getBook_part3_cat());
			psmt.setString(4, member.getM_id());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}
	
	public int memberDelete(String id, int num) {
		connect();
		
		sql="delete from member where m_id=? and m_num=?";
		
		try {
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setInt(2, num);
			
			cnt=psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt;
	}

}