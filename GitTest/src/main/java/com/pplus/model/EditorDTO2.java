package com.pplus.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EditorDTO2 {
	
	private int rownum;
	private int editor_num;
	private String editor_title;
	private String editor_content;
	private String editor_date;
	private int schedule_num;
	private int dayplan_num;
	private String member_nick;
}
