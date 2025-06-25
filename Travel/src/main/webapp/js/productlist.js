/**
 
 * 
 */


const div = document.querySelector('div.product-list');



const ftheme = document.querySelector('ul.theme-ul');
const fcountry = document.querySelector('ul.country-ul');


document.querySelectorAll('li.filter-theme').forEach(event => {
	event.addEventListener('click', function(e) {
		theme = e.target.innerHTML;
		theme = theme.trim()
		e.currentTarget.classList.add('active');
		e.currentTarget.firstElementChild.style.backgroundColor = "gray";
		location.href = 'productList.do?theme=' + theme + '&country=' + country;
	})
})

document.querySelectorAll('li.filter-country').forEach(event => {
	event.addEventListener('click', function(e) {
		country = e.target.innerHTML;
		country = country.trim()
		location.href = 'productList.do?theme=' + theme + '&country=' + country;
	})
})
