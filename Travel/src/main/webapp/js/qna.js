/**
 *  qna.js
 */

// 댓글 등록
document.querySelector('#insert').addEventListener('click', insert);

function insert(e) {
	let type = document.querySelector('#select').value; // 분류
	let title = document.querySelector('#title').value; // 제목
	let question = document.querySelector('#question').value; // 내용
	
	if(!type || !title || !question) {
		alert('내용을 입력하세요');
		return;
	} 
	
	fetch('qna.do', {
		method: 'post',
		headers: {'Content-Type':  'application/x-www-form-urlencoded' },
		body: 'type=' + type + '&title=' + title + '&question=' + question
	})
	.then(json => {
		json.json()
		console.log(json.json());
		}
	)
	.then(result => {

		if(result.retCode == 'Success') {
			alert('등록되었습니다');
			let tr = makeRow(result.retVal);
		}
		
	})
	
	

} // end of insert