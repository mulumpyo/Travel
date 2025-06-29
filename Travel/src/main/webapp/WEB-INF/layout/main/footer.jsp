<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   

	<footer class="main-footer">
	    <div class="footer-container">
	        <div class="footer-section footer-brand">
	            <h3 class="brand-name">지금이라도 당장 떠나버릴 1조</h3>
	            <p class="brand-motto">안녕히 계세요 여러분</p>
	            <div class="footer-social">
	                <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
	                <a href="#" class="social-icon"><i class="fab fa-twitter"></i></a>
	                <a href="#" class="social-icon"><i class="fab fa-instagram"></i></a>
	                <a href="#" class="social-icon"><i class="fab fa-linkedin-in"></i></a>
	            </div>
	        </div>
	
	        <div class="footer-section footer-contact">
	        	<h4 class="customer-contact">회사</h4>
	            <p>대구광역시 중구 중앙대로 403 5층 1조</p>
	            <p>전화: 하지마세요</p>
	            
	            <h4 class="customer-service-title">고객센터</h4>
	            <ul class="customer-service-links">
	                <li><a href="faq.do">자주하는 질문</a></li>
	                <li><a href="qna.do">1:1 문의</a></li>
	                <li><a href="qnalist.do">문의 내역</a></li>
	            </ul>
	        </div>
	    </div>
	
	    <div class="footer-bottom">
	        <p>&copy; 2025 지금이라도 당장 떠나버릴 1조. All rights reserved.</p>
	    </div>
	</footer>

    <c:if test="${isLogin == true}">
	    <button class="logout-button" onclick="location.href='signout.do'">
	    	<i class="fas fa-sign-out-alt"></i>
	    </button>
    </c:if>
