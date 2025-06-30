const btnDelete = document.querySelectorAll('button.btn-delete');
const btnModify = document.querySelectorAll('button.btn-modify');

btnDelete.forEach(button => {
  button.addEventListener('click', function (e) {
    const isDelete = confirm("삭제하시겠습니까?");
    if (!isDelete) return;

    const tr = e.target.closest('tr');
    const pCode = tr.children[0].textContent.trim();
    console.log("삭제할 pCode:", pCode);

    location.href = 'admin.do?pCode=' + pCode;
  });
});

btnModify.forEach(button => {
  button.addEventListener('click', function (e) {
    const tr = e.target.closest('tr');
    const pCode = tr.children[0].textContent.trim();
    console.log("수정할 pCode:", pCode);

    location.href = 'productModify.do?pCode=' + pCode;
  });
});
