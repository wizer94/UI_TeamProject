<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<!-- <head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head> -->
 <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>${result3.location }</title>
        <!-- Favicon-->
        <link rel="icon" type="image/png" size="96x96" href="/resources/templates/assets/favicon-96x96.png"/>
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/resources/templates/css/styles.css?문자열" rel="stylesheet" />
    </head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="/home1">Home</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
       <li class="nav-item"><a class="nav-link" href="/">Main</a></li>
						<li class="nav-point">></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page"> ${result3.location } </a></li>
						<li class="nav-item">
					<a class="nav-link" href="#!" onclick="alert('추후 업데이트 예정입니다.')">Q&A</a></li>
                    </ul>
                </div>
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
        </nav>
         <header class="py-1 bg-light border-bottom mb-4">
            <div class="container">
                <div class="text-center my-5">
                    <h1 class="fw-bolder">${result3.location }</h1>
                    
                </div>
            </div>
        </header>
        <!-- 아래 지도 본문 코드 -->
         <div class="container">
            <div class="row">
                <!-- Blog entries-->
                <div class="col-lg-8-info"> <!-- css 에 1400줄 복사하여 추가 생성 -->
                    <!-- Featured blog post-->
                    <div class="card mb-4">
                        <a href="https://www.sisul.or.kr/open_content/cheonggye/"><img class="card-img-top" 
                        src=https://ldb-phinf.pstatic.net/20140407_263/1396856567250crm4K_JPEG/%BC%AD%BF%EF_%C3%BB%B0%E8%C3%B5_1.jpg?type=m500_500 alt="..." /></a>
                        <div class="card-body">
                            <div class="small text-muted">${result3.region }</div>
                            <h2 class="card-title">${result3.location }&nbsp;&nbsp;&nbsp;&nbsp;
							<script
								src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.1/kakao.min.js"
								integrity="sha384-eKjgHJ9+vwU/FCSUG3nV1RKFolUXLsc6nLQ2R1tD0t4YFPCvRmkcF8saIfOZNWf/"
								crossorigin="anonymous"></script>
							<script>
							Kakao.init('78d0f718f55398d0e4d72dc6447306f9'); // 사용하려는 앱의 JavaScript 키 입력
						</script>

							<a id="kakaotalk-sharing-btn" href="javascript:;"> <img
								src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_small.png"
								alt="카카오톡 공유 보내기 버튼" />
							</a>
							<p1>카카오톡 공유하기</p1>

							<script>
						Kakao.Share.createCustomButton({
							  container: '#kakaotalk-sharing-btn',
							  templateId: ${86332},
							  templateArgs: {
							    title: '제목 영역입니다.',
							    description: '설명 영역입니다.',
							  },
							});
						</script>
                            
                            </h2>
                            <p class="card-text">
								
								<!-- index 3번 -->
                                요금 : ${result3.price }<br>
								운영시간 : ${result3.opentime }<br>
								<br>
								${result3.info }<br>
								<br>
								</p>							
                            <a class="btn btn-primary" href="https://www.sisul.or.kr/open_content/cheonggye/">공식 사이트</a>
                        </div>
                    </div>
                 </div> 
 			 </div>
 			 <!-- 지도영역 -->
 				<div><h5>지도 위치</h5></div><br>  <!-- 스타일 추가 작성 -->
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=43f27a012c4843c87231e34c40221b00"></script>
				<div id="map" style="width:100%;height:350px;"></div>
				<script>
				var mapContainer = document.getElementById('map'),
				    mapOption = { 
				        center: new kakao.maps.LatLng(37.56912420595198, 126.9798571190168), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };
				var map = new kakao.maps.Map(mapContainer, mapOption); 
				</script>
 		  </div>
 		 
 		  <!-- 하단영역 생성 -->
	<div>
		<br>
		<br>
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
				<div class="ft_block1">
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

</body>
</html>