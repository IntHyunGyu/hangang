$("a[href^='#'").click(function (event) {
	event.preventDefault();
	var target = $(this.hash);
	var header_height = $('#header').height();	
	var offset_top = target.offset().top - header_height;
	$('html,body').animate({scrollTop: offset_top}, 700)
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

function checkFrom() {
	if(document.frm.name.value.trim()=="") {
		alert("이름이 등록되지 않았습니다.");
		document.frm.name.focus();
		return false;
	} else if(document.frm.message.value.trim()=="") {
		alert("보낼 내용을 입력 해주세요.");
		document.frm.message.focus();
		return false;
	} else if(document.frm.fromEmail.value.trim()=="") {
		alert("보내는 분 이메일을 입력 해주세요.");
		document.frm.message.focus();
		return false;
	}
	else return true;
}

$('#submit').on('click', function (e){
	e.preventDefault();
	
	if(checkFrom()){
		$.ajax({
			url: '/mail',
			method: 'post', 
			data: {
				name: document.querySelector('#name').value,
				message: document.querySelector('#message').value,
				toEmail: document.querySelector('#toEmail').value,
				fromEmail: document.querySelector('#fromEmail').value,
			},
			success: function(e){
				alert('발송 성공');
			},
			error: function(e) {
				alert('발송 실패');
			}
		});
	}
})

	





