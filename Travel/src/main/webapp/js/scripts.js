/*!
* Start Bootstrap - Shop Homepage v5.0.6 (https://startbootstrap.com/template/shop-homepage)
* Copyright 2013-2023 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-shop-homepage/blob/master/LICENSE)
*/
// This file is intentionally blank
// Use this file to add JavaScript to your project

/* "The troll guest" Just open the developer tools (with the F12 key) on any browser and, in the console tab, copy and paste this */

_img = document.createElement("img");
_img.style.position = 'absolute';
_img.style.margin = '0';
_img.style.zIndex = '1000';
_img.onload = function() {
  document.body.insertBefore(_img, document.body.firstChild);
  setInterval(function(){
    document.getElementById('char1').style.left = Math.floor(Math.random() * (window.innerWidth - _img.width))+'px';
    document.getElementById('char1').style.top = Math.floor(Math.random() * (window.innerHeight - _img.height))+'px';
    var randomRot = (-45+Math.floor((Math.random()*90)));
    document.getElementById('char1').style.transform = 'rotate('+randomRot+'deg)';
    document.getElementById('char1').style.webkitTransform = 'rotate('+randomRot+'deg)';

  }, 1500);
}
_img.id = "char1";
/* you can use whatever image you like */
_img.src = "https://i.imgur.com/FmXCDNG.gif";