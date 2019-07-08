$("a[href^='#'").click(function (event) {
	event.preventDefault();
	var target = $(this.hash);
	var header_height = $('#header').height();
	// console.log(header_height);
	var offset_top = target.offset().top - header_height;
	$('html,body').animate({scrollTop: offset_top}, 500)
});

time();

function time() {
	var timer = new Date();
	var h = addZeros(timer.getHours(), 2);
	var m = addZeros(timer.getMinutes(), 2);

	var s = addZeros(timer.getSeconds(), 2);
	document.getElementById('clock').innerHTML = h + ":" + m + ":" + s;
} 

function addZeros(num, digit) { 
	  var zero = '';
	  num = num.toString();
	  if (num.length < digit) {
	    for (i = 0; i < digit - num.length; i++) {
	      zero += '0';
	    }
	  }
	  return zero + num;
}


setInterval(function(){       
	time();
},1000);
