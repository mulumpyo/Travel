/**
 *  faq.js
 */

document.querySelectorAll('button.faq').forEach(faq => {
	faq.addEventListener('click', function(e){
		if(e.target.innerHTML == '➕'){
		e.target.parentElement.parentElement.nextElementSibling.firstElementChild.style.display = 'block';
		e.target.innerHTML = '➖';
		return;
	} else if(e.target.innerHTML == '➖') {
		console.log('check');
		e.target.parentElement.parentElement.nextElementSibling.firstElementChild.style.display = 'none';
		e.target.innerHTML = '➕';
		return;
	}
	
})
})

