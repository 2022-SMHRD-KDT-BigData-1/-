package com.pplus.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DayplanDTO {
	private int dayplan_num;
	private String dayplan_date;
	private int schedule_num;
	private	String member_nick;

	private	String book_title;
	private	int book_page;
	private	String schedule_num_day;
	private	String achieve_study_day;
	private int achieve_study_page;
	private	int schedule_day_page;
	private int dayplan_check;
	private	String editor_date;
	private	String diary_date;
	private String todo_date;

}
