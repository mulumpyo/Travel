package com.groupone.common;

public class WishDTO {
    private int userNo;
    private String pCode;

    // 기본 생성자
    public WishDTO() {}

    // 생성자 (선택)
    public WishDTO(int userNo, String pCode) {
        this.userNo = userNo;
        this.pCode = pCode;
    }

    // Getter / Setter
    public int getUserNo() {
        return userNo;
    }

    public void setUserNo(int userNo) {
        this.userNo = userNo;
    }

    public String getPCode() {
        return pCode;
    }

    public void setPCode(String pCode) {
        this.pCode = pCode;
    }

    // toString() (선택, 디버깅용)
    @Override
    public String toString() {
        return "WishDTO [userNo=" + userNo + ", pCode=" + pCode + "]";
    }
}
