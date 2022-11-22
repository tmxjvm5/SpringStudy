package com.study.springa.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Member {
	private String memId;
	private String memName;
	private String memPwd;
	private int companyId;
	
}

