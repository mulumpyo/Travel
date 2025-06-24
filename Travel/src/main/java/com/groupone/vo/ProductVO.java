package com.groupone.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ProductVO {
	private int pCode; // 상품번호
	private int userNo; // 상품 등록 유저 고유 번호
	private String title; // 패키지 상품 제목
	private String description; // 상품 설명
	private String theme; // 상품 테마
	private String country; //여행지
	private int price; // 가격
	private Date startDay; // 시작일
	private Date endDay; // 끝나는 날
	private int maxQty; // 최대 구매 가능 수량
	private int status; // 등록 상태	/* 0: 미노출, 1: 노출 */
	private Date createdAt; // 등록 일자
}


