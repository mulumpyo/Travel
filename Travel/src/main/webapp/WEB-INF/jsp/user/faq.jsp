<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="page-container">
  <aside class="sidebar">
    <div id="subnav">
      <ul>
        <li><a href="faq.do" class="active-nav-item">FAQ</a></li>
        <li><a href="qna.do">1:1 문의</a></li>
        <li><a href="qnalist.do">문의 내역</a></li>
      </ul>
    </div>
  </aside>
 <main class="main-content">
  <table id="faq-table">
    <thead>
      <tr>
        <th colspan="2"><h2>자주묻는 질문</h2></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>항공권 예약은 어떻게 하나요?</td>
        <td class="faq-btn-cell"><button class="faq-btn" type="button"><i class="fas fa-chevron-down"></i></button></td>
      </tr>
      <tr class="faq-answer-row">
        <td colspan="2">홈페이지 또는 모바일 앱에서 항공권 예약이 가능합니다. 원하시는 날짜와 목적지를 입력해 주세요.</td>
      </tr>

      <tr>
        <td>예약 후 일정 변경이 가능한가요?</td>
        <td class="faq-btn-cell"><button class="faq-btn"><i class="fas fa-chevron-down"></i></button></td>
      </tr>
      <tr class="faq-answer-row">
        <td colspan="2">일부 상품은 일정 변경이 가능하지만, 변경 수수료가 발생할 수 있습니다. 자세한 사항은 고객센터로 문의 주세요.</td>
      </tr>

      <tr>
        <td>여행 취소 시 환불은 어떻게 되나요?</td>
        <td class="faq-btn-cell"><button class="faq-btn"><i class="fas fa-chevron-down"></i></button></td>
      </tr>
      <tr class="faq-answer-row">
        <td colspan="2">취소 시점과 상품 유형에 따라 환불 정책이 다릅니다. 예약 시 약관을 확인해 주세요.</td>
      </tr>

      <tr>
        <td>비회원도 예약할 수 있나요?</td>
        <td class="faq-btn-cell"><button class="faq-btn"><i class="fas fa-chevron-down"></i></button></td>
      </tr>
      <tr class="faq-answer-row">
        <td colspan="2">네, 비회원도 예약이 가능하지만 회원가입을 하시면 할인 혜택과 예약 조회가 더 편리합니다.</td>
      </tr>

      <tr>
        <td>해외 여행 시 비자는 어떻게 발급받나요?</td>
        <td class="faq-btn-cell"><button class="faq-btn"><i class="fas fa-chevron-down"></i></button></td>
      </tr>
      <tr class="faq-answer-row">
        <td colspan="2">목적지 국가에 따라 비자 요건이 다릅니다. 당사에서는 비자 대행 서비스도 제공하고 있으니 문의 주세요.</td>
      </tr>

      <tr>
        <td>여행자 보험은 필수인가요?</td>
        <td class="faq-btn-cell"><button class="faq-btn"><i class="fas fa-chevron-down"></i></button></td>
      </tr>
      <tr class="faq-answer-row">
        <td colspan="2">필수는 아니지만, 예기치 못한 상황에 대비하기 위해 가입을 권장합니다. 예약 시 함께 신청 가능합니다.</td>
      </tr>

      <tr>
        <td>공항에서 가이드는 어떻게 만나나요?</td>
        <td class="faq-btn-cell"><button class="faq-btn"><i class="fas fa-chevron-down"></i></button></td>
      </tr>
      <tr class="faq-answer-row">
        <td colspan="2">도착 로비에 가이드가 고객님의 이름이 적힌 피켓을 들고 대기하고 있습니다. 자세한 위치는 출발 전 안내드립니다.</td>
      </tr>

      <tr>
        <td>항공 마일리지 적립이 가능한가요?</td>
        <td class="faq-btn-cell"><button class="faq-btn"><i class="fas fa-chevron-down"></i></button></td>
      </tr>
      <tr class="faq-answer-row">
        <td colspan="2">일부 항공사에 한해 마일리지 적립이 가능합니다. 예약 시 항공사와 마일리지 번호를 입력해 주세요.</td>
      </tr>

      <tr>
        <td>여행 일정표는 언제 받을 수 있나요?</td>
        <td class="faq-btn-cell"><button class="faq-btn"><i class="fas fa-chevron-down"></i></button></td>
      </tr>
      <tr class="faq-answer-row">
        <td colspan="2">출발 3일 전까지 이메일 또는 문자로 상세 일정표를 보내드립니다. 마이페이지에서도 확인 가능합니다.</td>
      </tr>

      <tr>
        <td>어린이 요금은 어떻게 적용되나요?</td>
        <td class="faq-btn-cell"><button class="faq-btn"><i class="fas fa-chevron-down"></i></button></td>
      </tr>
      <tr class="faq-answer-row">
        <td colspan="2">일반적으로 만 12세 미만은 어린이 요금이 적용되며, 항공사나 호텔 정책에 따라 다를 수 있습니다.</td>
      </tr>
    </tbody>
  </table>
</main>
 
</div>

<script>
document.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('.faq-btn').forEach(btn => {
    btn.onclick = () => {
      const answer = btn.closest('tr')?.nextElementSibling;
      const icon = btn.querySelector('i');

      if (!answer) return;

      const isVisible = window.getComputedStyle(answer).display === 'table-row';
      answer.style.display = isVisible ? 'none' : 'table-row';

      if (icon) {
        icon.classList.toggle('fa-chevron-down', isVisible);
        icon.classList.toggle('fa-chevron-up', !isVisible);
      }
    };
  });
});
</script>


