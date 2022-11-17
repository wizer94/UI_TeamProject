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
        <title>창덕궁</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/templates/assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/tour/resources/templates/css/styles.css" rel="stylesheet" />
    </head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="/tour/">Home</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#">Blog</a></li>
                    </ul>
                </div>
            </div>
        </nav>
         <header class="py-5 bg-light border-bottom mb-4">
            <div class="container">
                <div class="text-center my-5">
                    <h1 class="fw-bolder">창덕궁</h1>
                    <p class="lead mb-0">CHANGDUKGUNG</p>
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
                        <a href="http://www.cdg.go.kr/default.jsp"><img class="card-img-top" 
                        src=http://www.cdg.go.kr/cms_for_cdg/contents/images/tour_1_1.gif alt="..." /></a>
                        <div class="card-body">
                            <div class="small text-muted">창덕궁 홈페이지 연결</div>
                            <h2 class="card-title">창덕궁</h2>
                            <p class="card-text">
								창덕궁은 북악산 왼쪽 봉우리인 응봉자락에 자리 잡고 있는 조선의 궁궐이다. <br>
								1405년(태종5) 경복궁의 이궁으로 동쪽에 지어진 창덕궁은 이웃한 창경궁과 서로 다른 별개의 용도로 사용되었으나 하나의 궁역을 이루고 있어 조선 시대에는 이 두 궁궐을 형제궁궐이라 하여 ‘동궐’이라 불렀다. <br>
								1592년(선조25) 임진왜란으로 모든 궁궐이 소실되어 광해군 때에 재건된 창덕궁은 1867년 흥선대원군에 의해 경복궁이 중건되기 전까지 조선의 법궁(法宮) 역할을 하였다. 또한 조선의 궁궐 중 가장 오랜 기간 동안 임금들이 거처했던 궁궐이다.
								<br>
								경복궁의 주요 건물들이 좌우대칭의 일직선상으로 왕의 권위를 상징한다면 창덕궁은 응봉자락의 지형에 따라 건물을 배치하여 한국 궁궐건축의 비정형적 조형미를 대표하고 있다. 더불어 비원으로 잘 알려진 후원은 각 권역마다 정자, 연못, 괴석이 어우러진 왕실의 후원이다. 현재 남아있는 조선의 궁궐 중 그 원형이 가장 잘 보존되어 있는 창덕궁은 자연과의 조화로운 배치와 한국의 정서가 담겨있다는 점에서 1997년 유네스코 세계유산으로 등록되었다.
								</p>							
                            <a class="btn btn-primary" href="#!">Read more →</a>
                        </div>
                    </div>
                 </div> 
 			 </div>
 			 <!-- 지도영역 -->
 			
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=43f27a012c4843c87231e34c40221b00"></script>
				<div id="map" style="width:100%;height:350px;"></div>
				<script>
				var mapContainer = document.getElementById('map'),
				    mapOption = { 
				        center: new kakao.maps.LatLng(37.57964919944846, 126.99099414600114), // 지도의 중심좌표
				        level: 4 // 지도의 확대 레벨
				    };
				var map = new kakao.maps.Map(mapContainer, mapOption); 
				</script>
 		  </div>
 		 
 		  <!-- 하단영역 생성 -->
 		  <div></div>
 			

</body>
</html>