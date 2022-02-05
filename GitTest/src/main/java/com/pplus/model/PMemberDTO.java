package com.pplus.model;

import com.pplus.model.PMemberDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
	public class PMemberDTO {
		// 회원 아이디, 비번, 닉네임, 이름 저장
		private String m_id;
		private String m_pw;
		private String m_nick;
		private String m_name;
//		private String m_gender;
//		private String m_rnumber;
//		private String m_pnumber;
//		private String m_address;
//		private String m_email;
		
		// 회원에 유형조사 저장
		private String book_part1_cat;
		private String book_part2_cat;
		private String book_part3_cat;
		
	}
