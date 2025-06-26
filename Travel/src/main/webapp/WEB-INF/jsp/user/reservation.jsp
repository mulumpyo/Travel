<%@page import="com.groupone.vo.ProductVO"%>
<%@ page import="java.sql.*, java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  ProductVO product = (ProductVO) request.getAttribute("product");
%>
<script>

  function submitReservation() {
    const pCode = '<%= product.getPCode() %>';
    const totalPerson = 
        parseInt(document.getElementById("adultCount").textContent) +
        parseInt(document.getElementById("childCount").textContent) +
        parseInt(document.getElementById("infantCount").textContent);
    const totalPrice = document.getElementById("totalPrice").innerText.replace(/[^0-9]/g, "");

    location.href = `InsertReservationController.do?p_code=${pCode}&adult=${totalPerson}&t_price=${totalPrice}`;
  }

  document.querySelector(".reserve-btn").addEventListener("click", submitReservation);
</script>