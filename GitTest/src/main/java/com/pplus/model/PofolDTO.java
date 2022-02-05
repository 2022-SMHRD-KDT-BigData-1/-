package com.pplus.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PofolDTO {

	private int pofol_num;
	private String pofol_title;
	private String pofol_content;
	private String pofol_day;
	private String member_nick;
	private String member_name;
	private int schedule_num;
}
