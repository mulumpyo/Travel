/**
 * 
 */

function checkOnlyOne(element) {
  
  const checkboxes 
      = document.getElementsByName("theme");
  
  checkboxes.forEach((cb) => {
    cb.checked = false;
  })
  
  element.checked = true;
}


const btnSubmit = document.querySelector('button.btnSubmit');
let pCode="";
let title="";
let description="";
let theme="";
let country="";
let startDay="";
let endDay="";
let maxQty="";
let status="";

console.log(btnSubmit);

btnSubmit.addEventListener('click', function(e) {
	pCode = document.querySelector(input[name="pcode"]);
	console.log(pCode);
	title = e.target.parentElement.parentElement.firstElementChild.innerHTML;
	console.log(title);
	description = e.target.parentElement.parentElement.firstElementChild.innerHTML;
	console.log(description);
	theme = e.target.parentElement.parentElement.firstElementChild.innerHTML;
	console.log(theme);
	country = e.target.parentElement.parentElement.firstElementChild.innerHTML;
	console.log(country);
	startDay = e.target.parentElement.parentElement.firstElementChild.innerHTML;
	console.log(startDay);
	endDay = e.target.parentElement.parentElement.firstElementChild.innerHTML;
	console.log(endDay);
	maxQty = e.target.parentElement.parentElement.firstElementChild.innerHTML;
	console.log(maxQty);
	status = e.target.parentElement.parentElement.firstElementChild.innerHTML;
	console.log(status);

	})