package com.pplus.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AchieveDTO {
	// �޼� ��ȣ, ������ �� ��, ������ ������, ������ ��ȣ, ȸ���� �г���, �� ������, (��ü)�ϼ�
	private int achieve_num;
	private String achieve_study_day;
	private int achieve_study_page;
	private int p_num;
	private String member_nick;
	private int book_page;
	private String s_num_day;
	
}
