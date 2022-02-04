package com.pplus.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TodoDTO {
	private String todo_num;
	private	String todo_content;
	private	String book_title;
	private	int book_page;
	private	String schedule_num_day;
	private	String achieve_study_day;
	private	String schedule_day_page;
	private	int editor_num;
	private	int diary_num;
	private	String member_nick;
	private String todo_date;
}
