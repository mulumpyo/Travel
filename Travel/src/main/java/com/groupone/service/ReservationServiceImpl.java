package com.groupone.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.groupone.common.DataSource;
import com.groupone.mapper.ReservationMapper;
import com.groupone.vo.ReservationVO;

public class ReservationServiceImpl implements ReservationService {

    SqlSession sqlSession = DataSource.getInstance().openSession();
    ReservationMapper mapper = sqlSession.getMapper(ReservationMapper.class);

    @Override
    public List<ReservationVO> getReservation(int userNo) {
        return mapper.selectReservation(userNo);
    }
    
	@Override
	public List<ReservationVO> getReservationAdmin() {
		return mapper.selectReservationAll();
	}

    @Override
    public boolean insertReservation(ReservationVO reservation) {
        int result = mapper.insertReservation(reservation);
        if (result > 0) {
            sqlSession.commit();
            return true;
        } 
        return false;
    }
}