<%@page import="com.groupone.vo.ProductVO"%>
<%@ page import="java.sql.*, java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  ProductVO product = (ProductVO) request.getAttribute("product");
%>

<!-- form 생성 -->
<form id="resForm" action="reservation.do" method="post">
  <input type="hidden" name="p_code" value="<%= product.getPCode() %>">
  <input type="hidden" name="totalAmount" id="hiddenTotalAmount">
  <input type="hidden" name="totalPrice" id="hiddenTotalPrice">
</form>

<script>
  document.addEventListener("DOMContentLoaded", function () {
    document.querySelector(".reserve-btn").addEventListener("click", function () {
      const totalPerson = 
        parseInt(document.getElementById("adultCount").textContent) +
        parseInt(document.getElementById("childCount").textContent) +
        parseInt(document.getElementById("infantCount").textContent);
      const totalPrice = document.getElementById("totalPrice").innerText.replace(/[^0-9]/g, "");

      document.getElementById("hiddenTotalAmount").value = totalPerson;
      document.getElementById("hiddenTotalPrice").value = totalPrice;

      // ✅ form을 POST 방식으로 전송
      document.getElementById("resForm").submit();
    });
  });
</script>
