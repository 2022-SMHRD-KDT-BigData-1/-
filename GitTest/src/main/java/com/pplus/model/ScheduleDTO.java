package com.pplus.model;

import com.pplus.model.ScheduleDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ScheduleDTO {

	private int p_num;
	private String s_start;
	private String s_num_day;
	private String s_end;
	private int s_day_page;
	private String schedule_date;
	private String m_nick;
	private int book_num;
	private String book_title;
	private int book_page;
	 {
		
	}
	
}
