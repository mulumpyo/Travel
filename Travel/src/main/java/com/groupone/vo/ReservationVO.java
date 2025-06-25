package com.groupone.vo;

import java.util.Date;

import lombok.Data;
@Data
public class ReservationVO {
    private int rCode;
    private int userNo;
    private int pCode;
    private int status;
    private int amount;

    private String title;
    private Date startDay;
    private Date endDay;

    // 게터/세터 생략
}