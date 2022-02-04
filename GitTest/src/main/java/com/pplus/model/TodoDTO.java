package com.pplus.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TodoDTO {

	private int todo_num;
	private String todo_title;
	private String todo_content;
	private String todo_date;
	private int schedule_num;
	private String member_id;
}
