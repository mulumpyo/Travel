package com.groupone.service;

import java.util.List;

import com.groupone.common.SearchDTO;
import com.groupone.vo.FaqVO;

public interface FaqService {
	public List<FaqVO> faqList(SearchDTO search);
	public FaqVO getFaq(int bno);

		


}
