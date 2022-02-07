package com.pplus.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RecBookDTO {
	private String member_nick;
	private String user_type1;
	private String user_type2;
	private String user_type3;
	
	private String book_title;
	private int book_price;
	private String book_img;
	private String book_author;
	private String book_publisher;
	private String book_description;
	private int book_page;
	private String book_pubdate;
	private String book_isbn;
	private String contents_cnt;
	

}