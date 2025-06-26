package com.groupone.service;

import java.util.List;

import com.groupone.vo.ReservationVO;

public interface ReservationService {
    List<ReservationVO> getReservation(int userNo);
    
 
    boolean insertReservation(ReservationVO vo);
}