/**
 * 
 */


const btnDeleteList = document.querySelectorAll('button.btn-delete');
let userNo = "";
btnDeleteList.forEach((btn) => {
  btn.addEventListener('click', function (event) {
    const isDelete = confirm("삭제하시겠습니까?");
    if (isDelete) {
      userNo = event.target.closest('tr').children[0].textContent.trim();
      console.log("삭제할 사용자 번호:", userNo);
      location.href = 'userInfo.do?userNo=' + userNo;
    }
  });
});


const btnModifyList = document.querySelectorAll('button.btn-modify');

btnModifyList.forEach((btn) => {
  btn.addEventListener('click', function (event) {
      userNo = event.target.closest('tr').children[0].textContent.trim();
      location.href = 'userInfoModify.do?userNo=' + userNo;
  });
});
