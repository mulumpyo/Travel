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

