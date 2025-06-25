package com.groupone.mapper;

import java.util.List;
import com.groupone.vo.ReservationVO;

public interface ReservationMapper {
    List<ReservationVO> selectReservation(int userNo);
}