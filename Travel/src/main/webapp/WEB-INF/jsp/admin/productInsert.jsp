<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
String loginId = (String) session.getAttribute("user_id");
%>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<html>
<body>
<div class="container my-5">
  <div class="row justify-content-center">
    <div class="col-lg-6">
      <div class="card shadow">
        <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
          <h4 class="mb-0">📦 상품 등록</h4>
          <% if ("user00".equals(loginId)) { %>
            <a href="productInsertForm.do" class="btn btn-light btn-sm">+ 상품 관리</a>
          <% } %>
        </div>
        <div class="card-body">
          <form action="InsertProduct.do" method="post">
            <div class="mb-3">
              <label for="title" class="form-label">상품명</label>
              <input type="text" class="form-control" id="title" name="title" placeholder="예) 파리 여행 패키지" required>
            </div>

            <div class="mb-3">
              <label for="description" class="form-label">상세 설명</label>
              <textarea class="form-control" id="description" name="description" rows="3" placeholder="상품에 대한 설명을 입력하세요" required></textarea>
            </div>

            <div class="mb-3">
              <label for="price" class="form-label">가격 (₩)</label>
              <input type="number" class="form-control" id="price" name="price" placeholder="100000" required>
            </div>

            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="start_day" class="form-label">출발일</label>
                <input type="date" class="form-control" id="start_day" name="start_day" required>
              </div>
              <div class="col-md-6 mb-3">
                <label for="end_day" class="form-label">종료일</label>
                <input type="date" class="form-control" id="end_day" name="end_day" required>
              </div>
            </div>

            <div class="mb-3">
              <label for="country" class="form-label">여행 국가</label>
              <input type="text" class="form-control" id="country" name="country" placeholder="예) 프랑스" required>
            </div>

            <div class="mb-4">
              <label for="theme" class="form-label">여행 테마</label>
              <input type="text" class="form-control" id="theme" name="theme" placeholder="예) 문화 / 힐링 / 미식 / 탐험 / 휴양" required>
            </div>

            <div class="d-grid">
              <button type="submit" class="btn btn-success btn-lg">등록하기</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
