/**
 *  qnalist.js
 */
 Date.prototype.format = function() {
	let yyyy = this.getFullYear();
	let MM = this.getMonth();
	let dd = this.getDate();
	
	return yyyy+ '.' +('0' + MM).slice(-2) + '.' + ('0' + dd).slice(-2);
 }  
 
 document.getElementById("btn").addEventListener("click", function(){
	const keyword = document.getElementById("search").value;
	
	fetch('qnasearch.do?keyword=' + keyword)
	.then(json => json.json())
	.then(result => {
		console.log(result);
	})
	.catch(error => {
		console.error(error);
		})
 })