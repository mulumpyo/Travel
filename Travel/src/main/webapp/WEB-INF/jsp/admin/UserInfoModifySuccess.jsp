<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 정보 수정 완료</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5" style="max-width: 700px;">
    <div class="card shadow rounded-4">
        <div class="card-body p-5">
            <h3 class="text-center mb-4"><span class="me-2">✅</span>회원 정보 수정 완료</h3>
            
            <table class="table table-bordered">
                <tr>
                    <th class="bg-light">사용자 번호</th>
                    <td>${user.userNo}</td>
                </tr>
                <tr>
                    <th class="bg-light">아이디</th>
                    <td>${user.userId}</td>
                </tr>
                <tr>
                    <th class="bg-light">이름</th>
                    <td>${user.userName}</td>
                </tr>
                <tr>
                    <th class="bg-light">비밀번호</th>
                    <td>${user.userPw}</td>
                </tr>
                <tr>
                    <th class="bg-light">생년월일</th>
                    <td><fmt:formatDate value="${user.userBirth}" pattern="yyyy-MM-dd"/></td>
                </tr>
                <tr>
                    <th class="bg-light">전화번호</th>
                    <td>${user.userPhone}</td>
                </tr>
            </table>

            <div class="text-center mt-4">
                <a href="../Travel/userInfo.do" class="btn btn-primary">회원 목록으로 돌아가기</a>
            </div>
        </div>
    </div>
</div>

</body>
</html>
