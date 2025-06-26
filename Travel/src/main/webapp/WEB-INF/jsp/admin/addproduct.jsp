<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>상품 등록 페이지</h1>
<form action="addproduct.do" method="post" enctype="multipart/form-data">
<input type="text" name="title" placeholder="상품 제목"/>
<input type="text" name="desc" placeholder="상품 설명"/>
<input type="text" name="theme" placeholder="상품 테마"/>
<input type="text" name="country" placeholder="국가"/>
<input type="number" name="price" placeholder="가격"/>
<input type="date" name="startDay" placeholder="시작일"/>
<input type="date" name="endDay" placeholder="끝나는 날"/>
<input type="number" name="maxQty" placeholder="구매 가능 수량"/>
<input type="number" name="status" placeholder="상품 상태"/>
<button type="submit">POST 요청</button>
</form>