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

	// recvideo DB�� ������ ȸ���� �г���, �����, �ߺз�, �Һз�, ���� ����, ���� ��¥, ���� �����, ���� �ּ�,
	// ���� ä�θ�, ���� ��ȸ��, ���� �ð� ����
	// rexvideoSet�� �Է� ������ RecVideoDTO recvideo ��� ���� cnt(int)
	public int recVideoSet(ArrayList<VideoDTO> recvideo, PMemberDTO member) {
		cnt = 0;
		for (int i = 0; i < recvideo.size(); i++) {
			connect();

			try {

				sql = "insert into recommend_video values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				psmt = conn.prepareStatement(sql);

				psmt.setString(1, member.getMember_nick());
				psmt.setString(2, member.getUser_type1());
				psmt.setString(3, member.getUser_type2());
				psmt.setString(4, member.getUser_type3());
				psmt.setString(5, recvideo.get(i).getVideo_title());
				psmt.setString(6, recvideo.get(i).getVideo_upload());
				psmt.setString(7, recvideo.get(i).getVideo_thumbnail());
				psmt.setString(8, recvideo.get(i).getVideo_url());
				psmt.setString(9, recvideo.get(i).getVideo_channel());
				psmt.setString(10, recvideo.get(i).getVideo_hits());
				psmt.setString(11, recvideo.get(i).getVideo_time());
				psmt.setInt(12, recvideo.get(i).getVideo_num());

				cnt += psmt.executeUpdate();

			} catch (SQLException e) {

				e.printStackTrace();

			} finally {
				close();
			}
		}
		return cnt;
	}

	// recvideo DB�� ������ �����͵��� �����ϱ� ���ؼ� ȸ���� �г������� ã��
	// ã�� �����͵� ����
	// recVideoDelete�� �Է� ���� ȸ���� �г���(string) ��� ���� cnt(int)
	public int recVideoDelete(String nick) {
		connect();
		sql = "delete from recommend_video where member_nick=?";

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

	// recvideo DB�� ����Ǿ� �ִ� �����͵��� ȸ������ ��������ͱ� ������ ȸ���� �г����� ���Ͽ� ã��
	// recvideoSelectAll�� �Է� ������ ȸ���� �г��� ��� ������ ArrayList<RecVideoDTO> list
	public ArrayList<RecVideoDTO> recVideoSelectAll(String nick) {
		ArrayList<RecVideoDTO> list = new ArrayList<RecVideoDTO>();
		connect();

		sql = "select * from recommend_video where member_nick=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);

			rs = psmt.executeQuery();

			while (rs.next()) {

				list.add(new RecVideoDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),
						rs.getString(10), rs.getString(11), rs.getInt(12)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

}
