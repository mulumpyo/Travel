package com.groupone.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.groupone.common.MybatisUtil;
import com.groupone.mapper.ReservationMapper;
import com.groupone.vo.ReservationVO;

public class ReservationService {

    public List<ReservationVO> getReservationsByUser(int userNo) {
        SqlSession session = MybatisUtil.getSession();
        List<ReservationVO> list = null;

        try {
            ReservationMapper mapper = session.getMapper(ReservationMapper.class);
            list = mapper.selectReservation(userNo);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }

        return list;
    }
}
