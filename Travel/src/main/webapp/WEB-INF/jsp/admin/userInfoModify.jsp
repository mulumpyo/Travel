<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>사용자 정보 수정</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5" style="max-width: 600px;">
    <div class="card shadow rounded-4">
        <div class="card-body p-5">
            <h3 class="text-center mb-4"><span class="me-2">✏️</span>사용자 정보 수정</h3>
            <form action="userInfoSuccess.do" method="post">
                <input type="hidden" name="action" value="update">

                <div class="mb-3">
                    <label class="form-label">사용자번호</label>
                    <input type="text" name="userNo" id="userNo" value="${user.userNo }" class="form-control" readonly>
                </div>

                <div class="mb-3">
                    <label class="form-label">아이디</label>
                    <input type="text" name="userId" id="userId" value="${user.userId }" class="form-control">
                </div>

                <div class="mb-3">
                    <label class="form-label">비밀번호</label>
                    <input type="password" name="userPw" id="userPw" value="${user.userPw }" class="form-control">
                </div>

                <div class="mb-3">
                    <label class="form-label">이름</label>
                    <input type="text" name="userName" id="userName" value="${user.userName }" class="form-control">
                </div>

                <div class="mb-3">
                    <label class="form-label">생년월일</label>
                    <input type="date" name="userBirth" value="<fmt:formatDate value='${user.userBirth}' pattern='yyyy-MM-dd'/>" class="form-control">
                </div>

                <div class="mb-3">
                    <label class="form-label">전화번호</label>
                    <input type="tel" name="userPhone" value="${user.userPhone}" class="form-control">
                </div>

                <div class="mb-4">
                    <label class="form-label">권한</label>
                    <c:choose>
                        <c:when test="${user.isAdmin eq 1}">
                            <input type="text" name="isAdmin" value="관리자" class="form-control" readonly>
                        </c:when>
                        <c:otherwise>
                            <input type="text" name="isAdmin" value="고객" class="form-control" readonly>
                        </c:otherwise>
                    </c:choose>
                </div>

                <div class="d-grid gap-2 d-md-flex justify-content-md-center">
                    <button type="submit" class="btn btn-primary rounded-pill px-4">수정</button>
                    <button type="reset" class="btn btn-secondary rounded-pill px-4">취소</button>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
