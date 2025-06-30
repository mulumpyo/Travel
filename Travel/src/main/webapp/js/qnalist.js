/**
 *  qnalist.js
 */


Date.prototype.format = function() {
	let yyyy = this.getFullYear();
	let MM = this.getMonth();
	let dd = this.getDate();

	return yyyy + '.' + ('0' + MM).slice(-2) + '.' + ('0' + dd).slice(-2);
}

document.getElementById("btn").addEventListener("click", function() {
	const keyword = document.getElementById("search").value;

	let str = `	<tr>
	     <th>순서</th>
	     <th>유형</th>
	     <th>제목</th>
	     <th>작성일</th>
	     <th>답변상태</th>
	   </tr>`;
	fetch('qnasearch.do?keyword=' + keyword)
		.then(json => json.json())
		.then(result => {
			document.querySelector("#target").innerHTML = "";
			for(let qna of result) {
				let dateObj = new Date(qna.qDate);   // 문자열 → Date 객체
				let formattedDate = dateObj.format();
				
				str += "<tr>";
				str += "<td>" + qna.qCode + "</td>";
				str += "<td>" + qna.type + "</td>";
				str += `<td><a href="myqna.do?qCode=${qna.qCode}">${qna.title}</a></td>`;
				str += "<td>" + formattedDate + "</td>";
				str += "<td>" + qna.status + "</td>";
				str += `<td><button class="btn-delete" type="button">삭제</button></td>`
				str += "</tr>";
			}
			
			document.querySelector("#target").innerHTML = str;
		})
		.catch(error => {
			console.error(error);
		})
})


const btnDelete = document.querySelectorAll('button.btn-delete');
console.log(btnDelete);

let qCode = "";

btnDelete.forEach(event => {
	event.addEventListener('click', function(e){
	qCode = e.target.parentElement.parentElement.firstElementChild.innerHTML;
	console.log(e.target.parentElement.parentElement.firstElementChild.innerHTML);
	
	

	 
	const isdelete = confirm("삭제하시겠습니까?");
	console.log(isdelete);
	if(isdelete == true) {
		const tr = e.target.closest('tr');
		console.log(tr);
		tr.remove();
		
	} else {
		return;
	}
		
	})
})


