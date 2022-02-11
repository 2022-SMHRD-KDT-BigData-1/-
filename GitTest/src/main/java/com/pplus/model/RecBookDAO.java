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

	// recBook DB�� ������ ȸ���� �г���, ��з�, �ߺз�, �Һз�, å ����, å����
	// å ǥ��, å ����, å ���ǻ�, å �Ұ�, å ������, å ���ǿ���, å �ڵ�, ��õ ī���͸� �Է�
	// rexVookSet�� �Է� ������ RecBookDTO recbook ��� ������ cnt(int)
	public int recBookSet(ArrayList<BookDTO> recbook, PMemberDTO member) {
		cnt = 0;
		connect();
		for (int i = 0; i < recbook.size(); i++) {
			try {

				sql = "insert into recommend_book values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				psmt = conn.prepareStatement(sql);

				psmt.setString(1, member.getMember_nick());
				psmt.setString(2, member.getUser_type1());
				psmt.setString(3, member.getUser_type2());
				psmt.setString(4, member.getUser_type3());
				psmt.setString(5, recbook.get(i).getBook_title());
				psmt.setInt(6, recbook.get(i).getBook_price());
				psmt.setString(7, recbook.get(i).getBook_img());
				psmt.setString(8, recbook.get(i).getBook_author());
				psmt.setString(9, recbook.get(i).getBook_publisher());
				psmt.setString(10, recbook.get(i).getBook_description());
				psmt.setInt(11, recbook.get(i).getBook_page());
				psmt.setString(12, recbook.get(i).getBook_pubdate());
				psmt.setString(13, recbook.get(i).getBook_isbn());
				psmt.setInt(14, 0);
				psmt.setInt(15, recbook.get(i).getBook_num());

				cnt += psmt.executeUpdate();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		close();
		return cnt;
	}

	// recbook DB�� ������ �����͵��� �����ϱ� ���ؼ� ȸ���� �г������� ã��
	// ã�� �����͵� ����
	// recBookDelete�� �Է� ���� ȸ���� �г���(string) ��� ���� cnt(int)
	public int recBookDelete(String nick) {
		connect();
		sql = "delete from recommend_book where member_nick=?";

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

	// recbook DB�� ����Ǿ� �ִ� �����͵��� ȸ������ ��������ͱ� ������ ȸ���� �г����� ���Ͽ� ã��
	// recBookSelectAll�� �Է� ������ ȸ���� �г��� ��� ������ ArrayList<RecBookDTO> recbooklist
	public ArrayList<RecBookDTO> recBookSelectAll(String nick) {
		ArrayList<RecBookDTO> recbooklist = new ArrayList<RecBookDTO>();
		connect();

		sql = "select * from recommend_book where member_nick=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);

			rs = psmt.executeQuery();

			while (rs.next()) {

				recbooklist.add(new RecBookDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9),
						rs.getString(10), rs.getInt(11), rs.getString(12), rs.getString(13), rs.getInt(14) ,rs.getInt(15)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return recbooklist;
	}
}
