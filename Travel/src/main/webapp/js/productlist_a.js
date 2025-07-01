const btnModify = document.querySelectorAll('button.btn-modify');

function removeProduct(e, pCode) {
	
	if(!confirm("정말 삭제하시겠습니까?")) {
		return;
	}
	
	fetch('removeProduct.do?pCode=' + pCode)
		.then(json => json.json())
		.then(data => {
			if (data.retCode == 'Success') {
				e.target.parentElement.parentElement.parentElement.remove();
				alert("삭제하였습니다.")
			} else if (data.retCode == 'Fail') {
				alert("실패하였습니다.")
			} else if (data.retCode == 'No Permission') {
				alert('권한이 없습니다.');
				location.href = 'login.do';
			} else {
				alert("오류가 발생하였습니다.")
			}
		})
		.catch(err => console.error(err));
}

btnModify.forEach(button => {
  button.addEventListener('click', function (e) {
    const tr = e.target.closest('tr');
    const pCode = tr.children[0].textContent.trim();
    console.log("수정할 pCode:", pCode);

    location.href = 'productModify.do?pCode=' + pCode;
  });
});