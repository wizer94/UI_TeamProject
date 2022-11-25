<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Travel Seoul - 페이지1</title>
<!-- Favicon-->
<link rel="icon" type="image/png" size="96x96"
	href="/resources/templates/assets/favicon-96x96.png" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/templates/css/styles.css?문자열" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="/resources/templates/js/weather.js"></script>
</head>
<body>
	<!-- Responsive navbar-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="/">Travel Seoul</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="/">Main</a></li>
					<li class="nav-point">></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page"> 상세페이지1 </a></li>
					<li class="nav-item">
					<a class="nav-link" href="/home1" onclick="alert('추후 업데이트 예정입니다.')">Q&A</a></li>
				</ul>
			</div>
			<!-- Google 번역 -->
			<div id="google_translate_element" class="hd_lang"
				style="float: right; position: relative; top: 0px; margin-left: 15px;"></div>
			<script>
				function googleTranslateElementInit() {
					new google.translate.TranslateElement(
							{
								pageLanguage : 'ko',
								includedLanguages : 'ko,zh-CN,zh-TW,ja,vi,th,tl,km,my,mn,ru,en,fr,ar',
								layout : google.translate.TranslateElement.InlineLayout.SIMPLE,
								autoDisplay : false
							}, 'google_translate_element');
				}
			</script>
			<script
				src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
			<!-- //Google 번역 -->
		</div>
	</nav>
	<!-- Page header with logo and tagline-->
	<header class="py-5 bg-light border-bottom mb-4">
		<div class="container">
			<div class="text-center my-5">
				<h1 class="fw-bolder">서울 관광지</h1>
				<p class="lead mb-0">서울특별시의 주요 관광 명소를 소개합니다</p>
			</div>
		</div>
	</header>
	<!-- Page content-->
	<div class="container">
		<div class="row">
			<!-- Blog entries-->
			<div class="col-lg-8">
				<!-- Nested row for non-featured blog posts-->
				<div class="row">
				
				<!-- 인포 0 ~ 5번 -->
				<!-- 0,2,4페이지(짝수페이지) -->
					<div class="col-lg-6">
						<!-- Blog post-->
						<div class="card mb-4">
							<a href="info00"><img class="card-img-top"
								src="http://www.royalpalace.go.kr/content/images/data/data_03_01_15.jpg" style="height:200px;" alt="..." /></a>
							<div class="card-body">
								<div class="small text-muted">${result0.region }</div>
								<h2 class="card-title h4">${result0.location }</h2>
								<p class="card-text">
									주소 : ${result0.address }    <br>
									운영시간 : ${result0.opentime } <br> 
									입장료&nbsp;&nbsp;&nbsp;&nbsp;: ${result0.price } <br> 
								</p>
								<a class="btn btn-primary" href="info00">자세히 알아보기 →</a>
							</div>
						</div>
						<!-- Blog post-->
						<div class="card mb-4">
							<a href="info02"><img class="card-img-top"
								src="https://hanok.seoul.go.kr/images/sub/town_intro1_1.jpg" style="height:200px;" alt="..." /></a>
							<div class="card-body">
								<div class="small text-muted">${result2.region }</div>
								<h2 class="card-title h4">${result2.location }</h2>
								<p class="card-text">
									주소		: ${result2.address }    <br>
									운영시간	: ${result2.opentime } <br> 
									입장료	: ${result2.price } <br>
								</p>
								<a class="btn btn-primary" href="info02">자세히 알아보기 →</a>
							</div>
						</div>
						<!-- Blog post-->
						<div class="card mb-4">
							<a href="info04"><img class="card-img-top"
								src="https://parks.seoul.go.kr/images/egovframework/com/template/nak01.jpg" style="height:200px;" alt="..." /></a>
							<div class="card-body">
								<div class="small text-muted">${result4.region }</div>
								<h2 class="card-title h4">${result4.location }</h2>
								<p class="card-text">
									주소		: ${result4.address }    <br>
									운영시간	: ${result4.opentime } <br> 
									입장료	: ${result4.price } <br>
								</p>
								<a class="btn btn-primary" href="info04">자세히 알아보기 →</a>
							</div>
						</div>
					</div>
					
					<!-- 1,3,5페이지(홀수페이지) -->
					<div class="col-lg-6">
						<!-- Blog post-->
						<div class="card mb-4">
							<a href="info01"><img class="card-img-top"
								src="http://www.cdg.go.kr/cms_for_cdg/contents/images/tour_1_1.gif" style="height:200px;" alt="..." /></a>
							<div class="card-body">
								<div class="small text-muted">${result1.region }</div>
								<h2 class="card-title h4">${result1.location }</h2>
								<p class="card-text">
									주소		: ${result1.address }    <br>
									운영시간	: ${result1.opentime } <br> 
									입장료	: ${result1.price } <br>
								</p>
								<a class="btn btn-primary" href="info01">자세히 알아보기 →</a>
							</div>
						</div>
						<!-- Blog post-->
						<div class="card mb-4">
							<a href="info03"><img class="card-img-top"
								src="https://ldb-phinf.pstatic.net/20140407_263/1396856567250crm4K_JPEG/%BC%AD%BF%EF_%C3%BB%B0%E8%C3%B5_1.jpg?type=m500_500" style="height:200px;" alt="..." /></a>
							<div class="card-body">
								<div class="small text-muted">${result3.region }</div>
								<h2 class="card-title h4">${result3.location }</h2>
								<p class="card-text">
									주소		: ${result3.address }    <br>
									운영시간	: ${result3.opentime } <br> 
									입장료	: ${result3.price } <br>
								</p>
								<a class="btn btn-primary" href="info03">자세히 알아보기 →</a>
							</div>
						</div>
						<!-- Blog post-->
						<div class="card mb-4">
							<a href="info05"><img class="card-img-top"
								src="https://ldb-phinf.pstatic.net/20180821_197/1534835312642oACAL_JPEG/btDf0E8sAW2BF1p-5EYZ6msv.jpg" style="height:200px;" alt="..." /></a>
							<div class="card-body">
								<div class="small text-muted">${result5.region }</div>
								<h2 class="card-title h4">${result5.location }</h2>
								<p class="card-text">
									주소		: ${result5.address }    <br>
									운영시간	: ${result5.opentime } <br> 
									입장료	: ${result5.price } <br>
								</p>
								<a class="btn btn-primary" href="info05">자세히 알아보기 →</a>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Pagination-->
				<nav aria-label="Pagination">
					<hr class="my-0" />
					<ul class="pagination justify-content-center my-4">
						<li class="page-item disabled"><a class="page-link" href="#"
							tabindex="-1" aria-disabled="true">Page</a></li>
						<li class="page-item active" aria-current="page"><a
							class="page-link" href="home1">1</a></li>
						<li class="page-item"><a class="page-link" href="home2">2</a></li>
						<li class="page-item"><a class="page-link" href="home3">3</a></li>
					</ul>
				</nav>
			</div>
			<!-- Side widgets-->
			<div class="col-lg-4">
				<!-- Categories widget-->
				<div class="card mb-4">
					<div class="card-header">관광지 목록</div>
					<div class="card-body">
						<div class="row">
							<div class="col-sm-6">
								<ul class="list-unstyled mb-0">
									<li>ㄱ</li>
									<li><a href="info00">경복궁</a></li>
									<li><a href="info09">국립중앙박물관</a></li>
									<li>ㄴ</li>
									<li><a href="info04">낙산공원</a></li>
									<li><a href="info10">남산타워</a></li>
									<li>ㄷ</li>
									<li><a href="info15">덕수궁</a></li>
									<li><a href="info13">동대문디자인플라자</a></li>
									<li>ㄹ</li>
									<li><a href="info05">롯데월드타워</a></li>
									<li>ㅁ</li>
									<li><a href="info14">명동</a></li>
								</ul>
							</div>
							<div class="col-sm-6">
								<ul class="list-unstyled mb-0">
									<li>ㅂ</li>
									<li><a href="info02">북촌한옥마을</a></li>
									<li>ㅅ</li>
									<li><a href="info08">서울숲</a></li>
									<li><a href="info07">세빛섬</a></li>
									<li>ㅇ</li>
									<li><a href="info11">여의도한강공원</a></li>
									<li><a href="info06">올림픽공원</a></li>
									<li>ㅊ</li>
									<li><a href="info01">창덕궁</a></li>
									<li><a href="info03">청계천</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Side widget-->
				<div class="card mb-4">
					<div class="card-header">
						<div class="weather-date" align="center"></div>
					</div>
					<div class="card-body">
						    <ul class="list-group list-group-flush weather"
						        style="font-weight: 600;">
						        <!-- <li class="list-group-item weather"></li> -->
						    </ul>
                        </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container px-5">
				<div class="ft_block">
					<ul class="ft_list">
						<h5 class="ft_list-title">소개</h5>
						<li class="ft_list-item">국제컴퓨터아트학원 천호점</li>
						<li class="ft_list-item">서울특별시 강동구 천호대로157길 14 나비 빌딩 6층</li>
						<li class="ft_list-item">연락처: 02-472-0645</li>
					</ul>
				</div>
				<div class="ft_block">
					<ul class="ft_list">
						<h5 class="ft_list-title">프로젝트 팀원</h5>
						<li class="ft_list-item">김재훈&nbsp;kjhlm333@gmail.com<br>오지훈&nbsp;wizer9408@gmail.com</li>
						<li class="ft_list-item">이서후&nbsp;dutlstjgn@naver.com<br>이준규&nbsp;ljg0910s@gmail.com</li>
					</ul>
				</div>
				<div class="ft_block">
					<ul class="ft_list">
						<h5 class="ft_list-title">고객 문의</h5>
						<li class="ft_list-item">고객 센터</li>
						<li class="ft_list-item">이메일 : qwerty@naver.com</li>
						<li class="ft_list-item">전화 : 010-0000-0000</li>
					</ul>
				</div>

				<div class="footer_image">
					<p>
						<image id="footer_image"
							src="/resources/templates/assets/footer.jpg">
					</p>
					<p class="m-0">&copy; 2022 Seoul Tourism Organization.</p>
				</div>
			</div>
		</nav>
	</footer>
	<!-- Bootstrap core JS-->
	<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> -->
	<script
		src="/resources/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="/resources/templates/js/scripts.js"></script>
</body>
</html>
