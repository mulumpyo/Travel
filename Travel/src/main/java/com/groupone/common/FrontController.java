package com.groupone.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.groupone.control.FaqControl;
import com.groupone.control.MainControl;
import com.groupone.control.TestControl;


public class FrontController extends HttpServlet {
	Map<String, Control> map;

	public FrontController() {
		map = new HashMap<String, Control>();
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		
		/* 대환 */
		map.put("/test.do", new TestControl()); // 타일즈 테스트
		map.put("/main.do", new MainControl()); // 메인페이지
		
		/* 은경 */
		// 06/24 ProductDetailControl, JSP 파일 구현 부탁드리겠습니다. (작업이 끝나면 Service 및 Mapper 구현)
		
		/* 해민 */
		// 06/24 ERD Cloud 기준으로 OracleDB 테이블 생성 부탁드리겠습니다.  --> db 생성 완료.
		// 상세목록페이지
		map.put("/main.do", new MainControl());
		
		/* 유경 */
		// 06/24 LoginControl, JSP 파일 구현 부탁드리겠습니다. (작업이 끝나면 Service 및 Mapper 구현)
		
		/* 이영 */
		// 06/24 고객센터 페이지 FAQ (자주묻는 질문) 페이지 JSP 작성 후 시간 여유가 있으시면 QNA 페이지 천천히 부탁드려요.
		map.put("/faq.do", new FaqControl());   // FAQ 메인페이지
		
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		String uri = req.getRequestURI();
		String context = req.getContextPath();
		String page = uri.substring(context.length());
		Control sub = map.get(page);
		sub.exec(req, res);

	}
}