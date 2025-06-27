package com.groupone.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.groupone.control.AdminControl;
import com.groupone.control.ChangePwControl;
import com.groupone.control.DetailPageControl;
import com.groupone.control.FaqControl;
import com.groupone.control.ReservationControl;
import com.groupone.control.LoginControl;
import com.groupone.control.MainControl;
import com.groupone.control.MyQnaControl;
import com.groupone.control.ProductListControl;
import com.groupone.control.ProductModifyControl;
import com.groupone.control.ProductModifySuccessControl;
import com.groupone.control.QnaControl;
import com.groupone.control.QnaListControl;
import com.groupone.control.QnaSearchControl;
import com.groupone.control.ReservationListControl;
import com.groupone.control.SignOutControl;
import com.groupone.control.WishListPageControl;
import com.groupone.control.RealLoginControl;
import com.groupone.control.RegisterControl;
import com.groupone.control.TestControl;
import com.groupone.control.UserInfoControl;

public class FrontController extends HttpServlet {
	Map<String, Control> map;

	public FrontController() {
		map = new HashMap<String, Control>();
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		
		/* 대환 */
		// 06/25 오전 중 화면설계 PDF 작성 후 파일 제출
		// main.do 기능 구현, faq 사이드메뉴
		map.put("/test.do", new TestControl()); // 타일즈 테스트
		map.put("/main.do", new MainControl()); // 메인페이지
		map.put("/admin.do", new AdminControl()); // 어드민페이지
		map.put("/signout.do", new SignOutControl()); // 로그아웃 기능
		
		
		/* 은경 */
		map.put("/detailpage.do", new DetailPageControl()); // 상세페이지
		// 06/25 detailPage.do 기능 구현
		map.put("/wishlistpage.do", new WishListPageControl()); // 찜목록페이지
		map.put("/reservationList.do", new ReservationListControl()); // 예약목록페이지
		map.put("/Reservation.do", new ReservationControl());

		
		// 해민님하고 은경 누나는 같이 mapper 파일 sql 쿼리도 이야기 나누어보시고
		// 필요한 기능들 미리 구상해두시면 좋을거 같아요

		
		/* 해민 */
		// 06/25 productList.do 카드리스트 구현해두었습니다. 계속 진행 부탁드릴게요.
		map.put("/productList.do", new ProductListControl());
		map.put("/productModify.do", new ProductModifyControl());
		map.put("/productModifySuccess.do", new ProductModifySuccessControl());
		
		/* 유경 */
		// 06/25 login.do 코드 확인 후 다음 페이지 흐름에 맞게 기능 구현부탁드려요
		// login_password.jsp, register.jsp 파일 만들고 작업하시면 될거 같아요.
		map.put("/login.do", new LoginControl());
		map.put("/realLogin.do", new RealLoginControl());
		map.put("/register.do", new RegisterControl());
		map.put("/userInfo.do", new UserInfoControl());
		map.put("/changePw.do", new ChangePwControl());

		/* 이영 */
		// 06/25 1:1 문의 기능 구현 부탁드려요. 최대한 자신감 가지고 막 눌러주세요.
		// 늦어져도 괜찮으니 천천히 작업해주세요.
		map.put("/faq.do", new FaqControl());   // FAQ 메인페이지
		map.put("/qna.do", new QnaControl());   // QnA
		map.put("/qnalist.do", new QnaListControl());  // QnaList
		map.put("/qnasearch.do", new QnaSearchControl());  // QnaList
		
		map.put("/myqna.do", new MyQnaControl());  // 문의내역
  		
		

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