<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
	<meta charset="UTF-8">
	<title>한강디자인</title>
	<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap&subset=korean" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="css/style.css">
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="js/app.js" defer="defer"></script>
	<link rel="shortcut icon" href="img/favicon.ico">
</head>	
<body>
	<header id="header">
		<ul class="left_menu">
			<li><a href="#">기억해요</a></li>
			<li><a href="#">당신의</a></li>
			<li><a href="#">가치를</a></li>
		</ul>
		<div class="logo"><a href="/"><img src="img/logo.png" alt="logo"></a></div>
		<ul class="right_menu">
			<li><a href="#main">메인</a></li>
			<li><a href="#gallery">갤러리</a></li>
			<li><a href="#footer">하단</a></li>
		</ul>
	</header>
	<div id="main">
		<div id="clock"></div>
		<div class="temp">
			<p class="temp_title">현재 한강의 온도는?</p>
			<div class="temp_temp"><p>${temp }도</p></div>
		</div>
	</div>
	<div id="gallery">
		<div class="g1">
			<iframe src="https://www.youtube.com/embed/d7nSSIzR5B4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
		<div class="g2">
			<div class="g2_1">
				<p>백 번을 실패해도 포기하지 않으면 성공한다</p>
			</div>
			<div class="g2_2 card">
				<div class="front"><img src="img/g2_2.jpg" alt="img"></div>
				<div class="back"><p>자신을 극복하는 사람에게는 세상이 열린다.</div>
			</div>
			<div class="g2_3 card">
				<div class="front"><img src="img/g2_3.jpg" alt="img"></div>
				<div class="back"><p>1분마다 인생을 바꿀 기회는 찾아온다.</p></div>
			</div>
			<div class="g2_4">
				<p>오늘은 내 지나온 인생의 마지막 날이자 <br>남은 인생의 첫 번째 날이다.</p>
			</div>
		</div>
		<div class="g3">
			<img src="img/g3.jpg" alt="img">
		</div>
		<div class="g4">
			<iframe width="100%" height="100%" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/636059595&color=%235b9fee&auto_play=true&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"></iframe>
		</div>
	</div>
	<footer id="footer">
		<div class="email">
			<div class="email_container">
				<form class="form-horizontal" name="form" role="form" method="post" action="/mail">
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label" required="required">Name</label>
						<div class="col-sm-15">
							<input type="text" class="form-control" id="name" name="name" placeholder="First & Last Name" value="">
						</div>
					</div>
					<div class="form-group">
						<label for="email" class="col-sm-2 control-label">Email</label>
						<div class="col-sm-15">
							<input type="email" class="form-control" id="email" name="email" placeholder="inthyungyu@gmail.com" value="inthyungyu@gmail.com" readonly="readonly">
						</div>
					</div>
					<div class="form-group">
						<label for="message" class="col-sm-2 control-label" required="required">Message</label>
						<div class="col-sm-15">
							<textarea class="form-control" rows="18" id="message" name="message"></textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-15 col-sm-offset-2">
							<input id="submit" name="submit" type="submit" value="Send" class="btn btn-primary">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-15 col-sm-offset-2">
							<! Will be used to display an alert to the user>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="copyright">
			<div class="copy_text">
				<p>&copy;2019. HyunGyu Co. all rights reserved.</p>
			</div>
			<div class="copy_sns">
				<a href="https://facebook.com/AHG0808" target="blank"><img src="img/facebook.png" alt=""></a>
				<a href="https://www.instagram.com/java_hyun.g/?hl=ko" target="blank"><img src="img/instagram.png" alt=""></a>
				<a href="https://github.com/IntHyunGyu" target="blank"><img src="img/github-logo.png" alt=""></a>
			</div>
		</div>
	</footer>
</body>
</html>