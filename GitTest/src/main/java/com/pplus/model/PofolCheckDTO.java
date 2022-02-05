package com.pplus.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PofolCheckDTO {

	private int pofol_num;
	private String member_nick;
	private String member_name;
	private int schedule_num;
	private int dayplan_num;
	private int pofol_check_box;
}
