package com.pplus.model;

import java.lang.reflect.Array;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Random;

public class BookDAO {
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

	// Book DB�� ������ ȸ���� ��з�, �ߺз�, �Һз�, å ����, å����
	// å ǥ��, å ����, å ���ǻ�, å �Ұ�, å ������, å ���ǿ���, å �ڵ带 �Է�
	// BookSet�� �Է� ������ BookDTO book ��� ������ cnt(int)
	public int bookSet(BookDTO book) {
		connect();
		sql = "insert into book values(?,?,?,?,?,?,?,?,?,?,?,?,?)";

		cnt = 0;
		try {
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, book.getUser_type1());
			psmt.setString(2, book.getUser_type2());
			psmt.setString(3, book.getUser_type3());
			psmt.setInt(4, book.getBook_num());
			psmt.setString(5, book.getBook_title());
			psmt.setInt(6, book.getBook_price());
			psmt.setString(7, book.getBook_img());
			psmt.setString(8, book.getBook_author());
			psmt.setString(9, book.getBook_publisher());
			psmt.setString(10, book.getBook_description());
			psmt.setInt(11, book.getBook_page());
			psmt.setString(12, book.getBook_pubdate());
			psmt.setString(13, book.getBook_isbn());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	// book DB�� ������ �����͵��� �����ϱ� ���ؼ� ȸ���� �г������� ã��
	// ã�� �����͵� ����
	// bookDelete�� �Է� ���� ȸ���� �г���(string) ��� ���� cnt(int)
	public int bookDelete(int book_num) {
		connect();
		sql = "delete from book where book_num=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, book_num);

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public BookDTO bookSelect(String isbn) {
		BookDTO book = null;
		connect();

		sql = "select * from book where book_isbn=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, isbn);

			rs = psmt.executeQuery();

			if (rs.next()) {

				book = new BookDTO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getInt(8), rs.getString(9), rs.getString(10),
						rs.getString(11), rs.getString(12), rs.getString(13));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return book;
	}

	public ArrayList<BookDTO> bookSelectAll(int[] array) {
		ArrayList<BookDTO> booklist = new ArrayList<BookDTO>();
		
		for (int i = 0; i < array.length; i++) {
			connect();
			sql = "select * from book where book_num=?";

			try {
				psmt = conn.prepareStatement(sql);
				psmt.setInt(1, array[i]);

				rs = psmt.executeQuery();

				if (rs.next()) {

					booklist.add(new BookDTO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4),
							rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getString(9),
							rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13)));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
		}
		return booklist;
	}

	public ArrayList<BookDTO> bookRecAll(PMemberDTO member) {
		ArrayList<BookDTO> recbooklist = new ArrayList<BookDTO>();
		connect();

		sql = "select * from book where book_part1=? and book_part2=? and book_part3=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, member.getUser_type1());
			psmt.setString(2, member.getUser_type2());
			psmt.setString(3, member.getUser_type3());

			rs = psmt.executeQuery();

			while (rs.next()) {

				recbooklist.add(new BookDTO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getString(9),
						rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return recbooklist;
	}
	// å �˻�
		public ArrayList<BookDTO> getBookSearch(int pageNum, int pageList, String keyWord, String searchWord) {
			ArrayList<BookDTO> booklist = new ArrayList<BookDTO>();
			
			connect();
			
			sql = "select * from book where "+keyWord+" like ?";
			//sql += " order by 'book_num' desc, step asc limit ?,?";
			//System.out.println(keyWord+"/"+searchWord);
			try {
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, "%"+searchWord+"%");
				//psmt.setInt(2, pageList*(pageNum - 1));
				//psmt.setInt(3, pageList);
				
				rs = psmt.executeQuery();
				
				while(rs.next()) {
					booklist.add(new BookDTO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), 
							rs.getString(6), rs.getString(7), rs.getInt(8), rs.getString(9), rs.getString(10), rs.getString(11),
							rs.getString(12), rs.getString(13)));
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			
			
			return booklist;
		}
}
