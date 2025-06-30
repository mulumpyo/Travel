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
import com.groupone.control.AnswerControl;
import com.groupone.control.ChangePwControl;
import com.groupone.control.RemoveWishControl;
import com.groupone.control.ReservationAdminControl;
import com.groupone.control.DetailPageControl;
import com.groupone.control.FaqControl;
import com.groupone.control.FindPwControl;
import com.groupone.control.InsertProductControl;
import com.groupone.control.ReservationControl;
import com.groupone.control.LoginControl;
import com.groupone.control.MainControl;
import com.groupone.control.MyPageControl;
import com.groupone.control.MyQnaControl;
import com.groupone.control.MyQnaModifySuccessControl;
import com.groupone.control.ProductInsertFormControl;
import com.groupone.control.ProductListControl;
import com.groupone.control.ProductModifyControl;
import com.groupone.control.ProductModifySuccessControl;
import com.groupone.control.QnaControl;
import com.groupone.control.QnaListControl;
import com.groupone.control.QnaSearchControl;
import com.groupone.control.ReservationListControl;
import com.groupone.control.SignOutControl;
import com.groupone.control.WishListPageControl;
import com.groupone.control.userInfoModifyControl;
import com.groupone.control.userInfoSuccessControl;
import com.groupone.control.AddWishControl;
import com.groupone.control.ChangeLoginPw;
import com.groupone.control.RealLoginControl;
import com.groupone.control.RegisterControl;
import com.groupone.control.RemoveProductControl;
import com.groupone.control.RemoveQnaControl;
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
		map.put("/signout.do", new SignOutControl()); // 로그아웃 기능
		map.put("/addwish.do", new AddWishControl());
		map.put("/removewish.do", new RemoveWishControl());
		map.put("/mypage.do", new MyPageControl());
		
		
		/* 은경 */
		map.put("/detailpage.do", new DetailPageControl()); // 상세페이지
		// 06/25 detailPage.do 기능 구현
		map.put("/wishlistpage.do", new WishListPageControl()); // 찜목록페이지
		map.put("/reservationList.do", new ReservationListControl()); // 예약목록페이지
		map.put("/Reservation.do", new ReservationControl());
		map.put("/InsertProduct.do", new InsertProductControl());
		map.put("/productInsertForm.do", new ProductInsertFormControl());
		map.put("/reservationAdmin.do", new ReservationAdminControl());
		
		/* 해민 */
		map.put("/productList.do", new ProductListControl());
		map.put("/productModify.do", new ProductModifyControl());
		map.put("/productModifySuccess.do", new ProductModifySuccessControl());
		map.put("/userInfoModify.do", new userInfoModifyControl());
		map.put("/userInfoSuccess.do", new userInfoSuccessControl());
		map.put("/admin.do", new AdminControl());
		map.put("/answer.do", new AnswerControl());
		map.put("/removeProduct.do", new RemoveProductControl());
		
		/* 유경 */
		map.put("/login.do", new LoginControl());
		map.put("/realLogin.do", new RealLoginControl());
		map.put("/register.do", new RegisterControl());
		map.put("/userInfo.do", new UserInfoControl());
		map.put("/changePw.do", new ChangePwControl());
		map.put("/findPw.do", new FindPwControl());
		map.put("/changeLoginPw.do", new ChangeLoginPw());

		/* 이영 */
		map.put("/faq.do", new FaqControl());   // FAQ 메인페이지
		map.put("/qna.do", new QnaControl());   // QnA
		map.put("/qnalist.do", new QnaListControl());  // QnaList
		map.put("/qnasearch.do", new QnaSearchControl());  // QnaList
		map.put("/myqna.do", new MyQnaControl());  // 문의내역
		map.put("/myqnaModifySuccess.do", new MyQnaModifySuccessControl());  // 문의내역
		map.put("/removeQna.do", new RemoveQnaControl());
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