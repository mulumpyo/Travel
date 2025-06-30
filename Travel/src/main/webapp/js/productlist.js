const btnResetTheme = document.getElementById('btnResetTheme');
const btnResetCountry = document.getElementById('btnResetCountry');

// 현재 URL 파라미터에서 theme과 country 값을 가져옴
const urlParams = new URLSearchParams(window.location.search);
let theme = urlParams.get('theme') || "";
let country = urlParams.get('country') || "";

// 테마 필터 클릭 이벤트
document.querySelectorAll('li.filter-theme').forEach(item => {
	item.addEventListener('click', function(e) {
		const selectedTheme = e.target.innerText.trim();
		location.href = `productList.do?theme=${encodeURIComponent(selectedTheme)}&country=${encodeURIComponent(country)}`;
	});
});

// 나라 필터 클릭 이벤트
document.querySelectorAll('li.filter-country').forEach(item => {
	item.addEventListener('click', function(e) {
		const selectedCountry = e.target.innerText.trim();
		location.href = `productList.do?theme=${encodeURIComponent(theme)}&country=${encodeURIComponent(selectedCountry)}`;
	});
});

// 테마 리셋
if (btnResetTheme) {
	btnResetTheme.addEventListener('click', function() {
		const newUrl = country ? `productList.do?country=${encodeURIComponent(country)}` : 'productList.do';
		location.href = newUrl;
	});
}

// 나라 리셋
if (btnResetCountry) {
	btnResetCountry.addEventListener('click', function() {
		const newUrl = theme ? `productList.do?theme=${encodeURIComponent(theme)}` : 'productList.do';
		location.href = newUrl;
	});
}

// 선택된 테마 및 나라 강조 표시
if (theme) {
	const activeTheme = [...document.querySelectorAll('li.filter-theme')].find(li => li.textContent.trim() === theme);
	if (activeTheme) activeTheme.firstElementChild.style.backgroundColor = 'gray';
}

if (country) {
	const activeCountry = [...document.querySelectorAll('li.filter-country')].find(li => li.textContent.trim() === country);
	if (activeCountry) activeCountry.firstElementChild.style.backgroundColor = 'gray';
}
