<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Welcome to Travel Seoul!</title>
        <!-- Favicon-->
        <link rel="icon" type="image/png" size="96x96" href="/resources/templates/assets/favicon-96x96.png"/>
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/resources/templates/css/styles.css?문자열" rel="stylesheet" />
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container px-5">
			<a class="navbar-brand" href="/">Welcome to Seoul!</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/">Main</a></li>
					<li class="nav-item">
					<a class="nav-link" href="#!" onclick="alert('추후 업데이트 예정입니다.')">Q&A</a></li>
				</ul>
			</div>
			<!-- Google 번역 -->
			<div id="google_translate_element" class="hd_lang"
				style="background-color: red; float: right; position: relative; top: 0px; margin-left: 15px;"></div>
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
        <!-- Page Content-->
        <div class="container px-4 px-lg-5">
            <!-- Heading Row-->
            <div class="row gx-4 gx-lg-5 align-items-center my-5">
                <div class="col-lg-7">
                <a href="/home1"><img class="img-fluid rounded mb-4 mb-lg-0" src="\resources\templates\assets\seoul.jpg" alt="..." /></a>
                </div>
                <div class="col-lg-5">
                    <h1 class="font-weight-light">Travel Seoul</h1>
                    <p></p>
                    <a class="btn btn-primary" href="/home1">Go to Seoul!</a>
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
        <script src="/resources/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="/resources/templates/js/scripts.js"></script>
    </body>
</html>
    