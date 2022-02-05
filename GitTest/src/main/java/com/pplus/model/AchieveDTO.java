package com.pplus.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AchieveDTO {

	private int achieve_num;
	private String achieve_study_day;
	private int achieve_study_page;
	private int schedule_num;
	private String member_nick;
	private int book_page;
	private String schedule_num_day;
	
}
