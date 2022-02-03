package com.pplus.model;

import com.pplus.model.PMemberDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
	public class PMemberDTO {
		private String m_id;
		private String m_pw;
		private String m_nick;
//		private String m_name;
//		private String m_gender;
//		private String m_rnumber;
//		private String m_pnumber;
//		private String m_address;
//		private String m_email;
		
		private String book_part1_cat;
		private String book_part2_cat;
		private String book_part3_cat;
		
	}
