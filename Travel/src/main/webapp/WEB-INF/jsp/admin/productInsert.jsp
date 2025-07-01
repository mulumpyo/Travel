<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
String loginId = (String) session.getAttribute("user_id");
if ("user00".equals(loginId)) {
%>
<div style="text-align: right; margin: 10px;">
	<a href="productInsertForm.do" class="btn btn-primary">상품 등록</a>

</div>
<%
}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>상품 등록</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5" style="max-width: 600px;">
    <div class="card shadow rounded-4">
        <div class="card-body p-5">
            <h3 class="text-center mb-4"><span class="me-2">✏️</span>여행 상품 등록</h3>
            <form action="InsertProduct.do" method="post">
                <div class="mb-3">
                    <label class="form-label">제목</label>
                    <input type="text" name="title" class="form-control" placeholder="예: [피지] 부카니 섬 탐험 5일">
                </div>

                <div class="mb-3">
                    <label class="form-label">설명</label>
                    <textarea name="description" class="form-control" rows="4" placeholder="상품 설명을 입력하세요."></textarea>
                </div>

                <div class="mb-3">
                    <label class="form-label">가격</label>
                    <input type="number" name="price" class="form-control">
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label class="form-label">출발일</label>
                        <input type="date" name="start_day" class="form-control">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label class="form-label">종료일</label>
                        <input type="date" name="end_day" class="form-control">
                    </div>
                </div>

                <div class="mb-3">
                    <label class="form-label">나라</label>
                    <input type="text" name="country" class="form-control">
                </div>

                <div class="mb-3">
                    <label class="form-label">테마</label>
                    <select name="theme" class="form-select">
                        <option value="">테마 선택</option>
                        <option value="문화">문화</option>
                        <option value="힐링">힐링</option>
                        <option value="탐험">탐험</option>
                        <option value="휴양">휴양</option>
                        <option value="미식">미식</option>
                    </select>
                </div>

                <div class="d-grid">
                    <button type="submit" class="btn btn-primary rounded-pill">등록</button>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
