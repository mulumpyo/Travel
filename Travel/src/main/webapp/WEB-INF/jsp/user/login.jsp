<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<body>
  <div id="container">
    <form action="login.do" method="post">
      <h3>아이디를 입력하여<br>로그인 또는 회원가입</h3>
      <input type="text" id="loginId" name="loginId" autofocus placeholder="아이디 입력" required><br>
    
      <p><input type="submit" value="다음"></p>
    </form>
  </div>



	<script>
	function checkId() {
	  const id = document.getElementById("user_id").value;
	
	  if (id.trim() === "") return;
	
	  fetch("checkId.do?user_id=" + encodeURIComponent(id))
	    .then(response => response.text())
	    .then(result => {
	      const msg = document.getElementById("idCheckMsg");
	      if (result === "ok") {
	        msg.style.color = "green";
	        msg.innerText = "사용 가능한 아이디입니다.";
	      } else {
	        msg.style.color = "red";
	        msg.innerText = "이미 사용 중인 아이디입니다.";
	      }
	    })
	    .catch(error => console.error("에러 발생:", error));
	}
	</script>


</body>
