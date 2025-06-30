/**
 *  qnalist_a.js
 */
  
let submit = "";
 
 submit = document.querySelector('adminAnswer.answer');
 console.log(submit);
 
 submit.forEach(event => {
	event.addEventListener('click', function(e){
		location.href ="answer.do?"
	})
 })
