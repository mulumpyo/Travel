<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    <header class="navbar">
        <div class="navbar-container">
        
            <div class="navbar-left">
                <h1 class="logo"><a href="main.do">GROUPONE</a></h1>
                <div class="search-box">
	                <form action="productList.do" method="get">
	                    <input type="text" name="keyword" placeholder="가고싶은 곳을 입력하세요">
	                    <button class="search-btn"><i class="fas fa-search search-icon"></i></button>
                	</form>
                </div>
            </div>
 
            <div class="navbar-right">
            	<c:choose>
            		<c:when test="${isLogin == true}">
            		<c:if test="${isAdmin == true}">
            			<button type="button"  onclick="location.href='admin.do'">어드민</button>
            		</c:if>
                        <a href="mypage.do" class="icon-link" title="회원 정보">
                            <i class="fas fa-user"></i>
                        </a>
                        <a href="wishlistpage.do" class="icon-link" title="찜 리스트">
                            <i class="fas fa-heart"></i>
                        </a>
                        <a href="signout.do" class="icon-link" title="로그아웃">
                            <i class="fas fa-right-to-bracket"></i>
                        </a>
            		</c:when>
            		<c:otherwise>
            		    <a href="login.do" class="icon-link" title="로그인">
            		    	<i class="fas fa-lock"></i>
            		    </a>
            		</c:otherwise>
            	</c:choose>
            
            	<a href="qnalist.do" class="icon-link" title="고객센터"><i class="fas fa-headset"></i></a>
            </div>
        </div>
    </header>
