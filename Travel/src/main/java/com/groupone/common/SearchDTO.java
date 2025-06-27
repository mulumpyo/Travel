package com.groupone.common;

import lombok.Data;

@Data
public class SearchDTO {
	//FAQ 검색조건
	private String keyword;
	private String theme;
	private String country;
	private int pCode;
	
}
