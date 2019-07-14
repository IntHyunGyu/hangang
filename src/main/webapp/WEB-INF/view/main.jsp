<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
	<meta charset="UTF-8">
	<title>한강디자인</title>
	<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap&subset=korean" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="js/app.js" defer="defer"></script>
	<link rel="stylesheet" href="css/style.css">
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
			<div class="temp_temp"><img src="img/icon.svg" alt=""><p>${temp }도</p></div>
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
			<form action="/email" method="post">
				<input type="text" name="name"><br>
				<input type="text" name="email"><br>
				<input type="text" name="text"><br>
				<input type="submit" value="전송">
			</form>
		</div>
		<div class="copyright">
			<p class="copy_text">
				©2019. HyunGyu Co. all rights reserved.
			</p>
		</div>
	</footer>
</body>
</html>