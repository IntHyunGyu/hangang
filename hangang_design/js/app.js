$("a[href^='#'").click(function (event) {
	event.preventDefault();
	var target = $(this.hash);
	var header_height = $('#header').height();
	// console.log(header_height);
	var offset_top = target.offset().top - header_height;
	$('html,body').animate({scrollTop: offset_top}, 500)
});

function time() {
	var timer = new Date();
	var h = timer.getHours();
	var m = timer.getMinutes();
	var s = timer.getSeconds();
	document.getElementById('clock').innerHTML = h + ":" + m + ":" + s;
} 

setInterval(function(){       
	time();
},1000);
