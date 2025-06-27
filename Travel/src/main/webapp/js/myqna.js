/**
 * myqna.js 
 */

fetch('myqna.do?qCode=' + qCode)
.then(json => json.json())
.then(result => { 
	console.log(result);
})
