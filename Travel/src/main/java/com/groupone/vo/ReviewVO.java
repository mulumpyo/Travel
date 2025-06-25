package com.groupone.vo;

import java.util.Date;

import lombok.Data;
@Data
public class ReviewVO {
    private int revCode;
    private int userNo;
    private int pCode;
    private String title;
    private String content;
    private int star;
    private Date createdAt;

}