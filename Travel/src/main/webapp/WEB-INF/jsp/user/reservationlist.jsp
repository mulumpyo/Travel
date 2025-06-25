<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*, com.groupone.vo.ReservationVO" %>
<%
    List<ReservationVO> resList = (List<ReservationVO>) request.getAttribute("resList");
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

    String[] statusText = { "취소", "접수", "완료" };
%>

<h2>예약 내역</h2>
<% if (resList != null && !resList.isEmpty()) { %>
    <ul>
    <% for (ReservationVO resv : resList) { %>
        <li>
            <strong><%= resv.getTitle() %></strong><br>
            여행일자: <%= sdf.format(resv.getStartDay()) %> ~ <%= sdf.format(resv.getEndDay()) %><br>
            예약 인원: <%= resv.getAmount() %>명<br>
            예약 상태: <%= statusText[resv.getStatus()] %><br>
        </li>
    <% } %>
    </ul>
<% } else { %>
    <p>예약 내역이 없습니다.</p>
<% } %>