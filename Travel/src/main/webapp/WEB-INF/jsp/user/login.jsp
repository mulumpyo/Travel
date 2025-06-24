<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>로그인</title>
</head>

<body>
  <div id="container">
    <form action="login.do" method="post">
      <h3>아이디를 입력하여<br>로그인 또는 회원가입</h3>
      <input type="text" id="loginId" name="loginId" autofocus placeholder="user01" required><br>
      <input type="password" id="loginPw" name="loginPw" autofocus required>
      <p><input type="submit" value="다음"></p>
    </form>
  </div>


</body>

</html>