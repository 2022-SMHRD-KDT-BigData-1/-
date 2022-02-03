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
	private String m_id;
	private String p_text;
	private String m_type;
	private String book_type;
	private String p_setting;
	private String p_date;
	
}
