<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <div class="container">
        <header>
            <h1>예약 정보</h1>
        </header>

        <section class="search-container">
            <input type="text" id="searchInput" onkeyup="searchReservations()" placeholder="예약 정보 검색...">
        </section>

        <table class="reservation-table" id="reservationTable">
            <thead>
                <tr>
                    <th>예약 코드</th>
                    <th>사용자 ID</th>
                    <th>사용자 이름</th>
                    <th>상품 코드</th>
                    <th>상품명</th>
                    <th>예약 상태</th>
                    <th>금액</th>
                    <th>총 가격</th>
                    <th>시작 날짜</th>
                    <th>종료 날짜</th>
                </tr>
            </thead>
            <tbody>
                <!-- 예약 정보 리스트 출력 -->
                <c:forEach var="reservation" items="${reservations}">
                    <tr>
                        <td>${reservation.rCode}</td>
                        <td>${reservation.userId}</td>
                        <td>${reservation.userName}</td>
                        <td>${reservation.pCode}</td>
                        <td>${reservation.title}</td>
                        <td>${reservation.status}</td>
                        <td>${reservation.amount}</td>
                        <td>${reservation.tPrice}</td>
                        <td>${reservation.startDay}</td>
                        <td>${reservation.endDay}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <script>
        function searchReservations() {
            let input = document.getElementById("searchInput");
            let filter = input.value.toUpperCase();
            let table = document.getElementById("reservationTable");
            let tr = table.getElementsByTagName("tr");

            for (let i = 1; i < tr.length; i++) {
                let td = tr[i].getElementsByTagName("td");
                let match = false;
                for (let j = 0; j < td.length; j++) {
                    if (td[j] && td[j].textContent.toUpperCase().indexOf(filter) > -1) {
                        match = true;
                    }
                }
                tr[i].style.display = match ? "" : "none";
            }
        }
    </script>

