/**
 * 
 */



const btnDelete = document.querySelectorAll('button.btn-delete');
console.log(btnDelete);

let pCode = "";

btnDelete.forEach(event => {
	event.addEventListener('click', function(b) {
	const isdelete = confirm("삭제하시겠습니까?");
	console.log(isdelete)
	if (isdelete == true){
		//b.target.parentElement.parentElement.remove();
		pCode = b.target.parentElement.parentElement.firstElementChild.innerHTML;
		console.log(pCode);
		location.href = 'admin.do?pCode=' + pCode;
		
	} else{
		return;
	}
	})
	
})

btnModify.forEach(button => {
  button.addEventListener('click', function (e) {
    const tr = e.target.closest('tr');
    const pCode = tr.children[0].textContent.trim();
    console.log("수정할 pCode:", pCode);
    location.href = 'productModify.do?pCode=' + pCode;
  });
});

