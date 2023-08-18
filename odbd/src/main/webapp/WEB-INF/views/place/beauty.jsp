<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7bd91a967b0f6c885069a06e1f677e66"></script>
<!DOCTYPE html>

<html>
<head>
<style>
.container-wrapper {
	display: flex;
	justify-content: space-between;
	margin: 20px; /* Add margin for spacing */
}

.image-container01 {
	float: left;
	display: flex;
	flex-wrap: wrap;
}

.image-container02 {
	float: right;
	display: flex;
	flex-wrap: wrap;
}

.container {
	display: flex;
	flex-wrap: wrap;
}

.id {
	font-size: 10px;
	font-weight: bold;
}

a {
	font-weight: bold;
	font-size: 80px;
}

.image-box {
	flex: 0 0 calc(33.33% - 10px);
	margin: 30px;
	.
}

.image-box img {
	width: 300px;
	height: 300px;
}

p {
	font-size: 20px;
}

button {
	background-color: transparent;
	border: none;
	cursor: pointer; /* 커서를 손가락 모양으로 변경 */
}

.hosName {
	color: gray;
	font-size: 10px;
}

.short_review {
	font-size: 10px;
}

th, td {
	font-size: 10px;
}
</style>
</head>


<body>
	<div align="center">
		<hr>
		<a>애견 미용샵</a><br>
		<hr>
	</div>
	<br>
	<br>
	<br>


	<div class="container-wrapper">
		<div class="image-container01">
			<div style="width: 800px; height: 100%;">
				<div class="container">

					<div class="image-box">
						<img src="../image/res1.jpg" alt="Image 1">
						<p>1.짱구짱아애견미용샵 4.3</p>
						<p>
						<div class="hosName">대전 동구 계족로 288 짱구짱아</div>
						<table>
							<tr>
								<th>연락처</th>
								<td>0507-1495-2212</td>
							</tr>
						</table>
						<button type="button"
							onclick="window.open('https://map.naver.com/v5/search/%EB%8C%80%EC%A0%84%20%EC%95%A0%EA%B2%AC%EB%AF%B8%EC%9A%A9%EC%83%B5/place/34406784?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=15,0,0,0,dh');">
							짱구짱아애견미용샵 더보기></button>
					</div>

					<div class="image-box">
						<img src="image\res1.jpg" alt="Image 1">
						<p>2.지아애견샵 4.3</p>
						<p>
						<div class="hosName">대전 유성구 죽동로279번길 5-3 1층 지아애견샵</div>
						<table>
							<tr>
								<th>연락처</th>
								<td>0507-1337-4060</td>
							</tr>
						</table>
						<button type="button"
							onclick="window.open('https://map.naver.com/v5/search/%EB%8C%80%EC%A0%84%20%EC%95%A0%EA%B2%AC%EB%AF%B8%EC%9A%A9%EC%83%B5/place/1222917314?placePath=%3Fentry%253Dbmp&c=15,0,0,0,dh');">
							지아애견샵 더보기></button>
					</div>

				</div>

				<div class="container">
					<div class="image-box">
						<img src="image\res1.jpg" alt="Image 1">
						<p>3.바우와우애견샵 4.3</p>
						<p>
						<div class="hosName">대전 서구 괴정로 101</div>
						<table>
							<tr>
								<th>연락처</th>
								<td>0507-1342-5922</td>
							</tr>
						</table>
						<button type="button"
							onclick="https://map.naver.com/v5/search/%EB%8C%80%EC%A0%84%20%EC%95%A0%EA%B2%AC%EB%AF%B8%EC%9A%A9%EC%83%B5/place/1875566125?placePath=%3Fentry%253Dbmp&c=15,0,0,0,dh;">
							바우와우애견샵 더보기></button>
					</div>


					<div class="image-box">
						<img src="image\res1.jpg" alt="Image 1">
						<p>4.멍데렐라 4.3</p>
						<p>
						<div class="hosName">대전 대덕구 신탄진로 843 1층 멍데렐라</div>
						<table>
							<tr>
								<th>연락처</th>
								<td>010-8624-2951</td>
							</tr>
						</table>
						<button type="button"
							onclick="https://map.naver.com/v5/search/%EB%8C%80%EC%A0%84%20%EC%95%A0%EA%B2%AC%EB%AF%B8%EC%9A%A9%EC%83%B5/place/1875566125?placePath=%3Fentry%253Dbmp&c=15,0,0,0,dh;">
							멍데렐라 더보기></button>
					</div>

				</div>

				<div class="container">
					<div class="image-box">
						<img src="image\res1.jpg" alt="Image 1">
						<p>5.블루퍼피애견샵 4.3</p>
						<p>
						<div class="hosName">대전 동구 계족로 433</div>
						<table>
							<tr>
								<th>연락처</th>
								<td>042-622-7787</td>
							</tr>
						</table>
						<button type="button"
							onclick="https://map.naver.com/v5/search/%EB%8C%80%EC%A0%84%20%EC%95%A0%EA%B2%AC%EB%AF%B8%EC%9A%A9%EC%83%B5/place/1875566125?placePath=%3Fentry%253Dbmp&c=15,0,0,0,dh;">
							블루퍼피애견샵 더보기></button>
					</div>
					<div class="image-box">
						<img src="image\res1.jpg" alt="Image 1">
						<p>6.도긴더샵 4.3</p>
						<p>
						<div class="hosName">대전 중구 천근로20번길 6 도긴더샵</div>
						<table>
							<tr>
								<th>연락처</th>
								<td>042-584-6345</td>
							</tr>
						</table>
						<button type="button"
							onclick="https://map.naver.com/v5/search/%EB%8C%80%EC%A0%84%20%EC%95%A0%EA%B2%AC%EB%AF%B8%EC%9A%A9%EC%83%B5/place/1017728028?placePath=%3Fentry%253Dbmp&c=15,0,0,0,dh;">
							도긴더샵 더보기></button>
					</div>
				</div>
			</div>
		</div>



		<div class="image-container02">



			<div style="width: 1000px; height: 510px; border: 1px solid black;">
				<div id="map" style="width: 1000px; height: 500px;"></div>

				<script>
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
					mapOption = {
						center : new kakao.maps.LatLng(36.34650158758268,
								127.3792116591183), // 지도의 중심좌표
						level : 3
					// 지도의 확대 레벨
					};

					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

					// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
					var positions = [
							{
								content : '<div>별나라병원</div>',
								latlng : new kakao.maps.LatLng(
										36.34650158758268, 127.3792116591183)
							},
							{
								content : '<div>금나라병원</div>',
								latlng : new kakao.maps.LatLng(
										36.34519568600841, 127.38178971788848)
							},
							{
								content : '<div>웰일스병원</div>',
								latlng : new kakao.maps.LatLng(
										36.346726747375634, 127.38767902346653)
							},
							{
								content : '<div>숙라병원</div>',
								latlng : new kakao.maps.LatLng(
										36.34870511265325, 127.39989839176792)
							},
							{
								content : '<div>숙라병원</div>',
								latlng : new kakao.maps.LatLng(
										36.35136474356817, 127.38021560648836)
							},
							{
								content : '<div>숙라병원</div>',
								latlng : new kakao.maps.LatLng(
										36.35797281098681, 127.37659335299477)
							} ];

					for (var i = 0; i < positions.length; i++) {
						// 마커를 생성합니다
						var marker = new kakao.maps.Marker({
							map : map, // 마커를 표시할 지도
							position : positions[i].latlng
						// 마커의 위치
						});

						// 마커에 표시할 인포윈도우를 생성합니다 
						var infowindow = new kakao.maps.InfoWindow({
							content : positions[i].content
						// 인포윈도우에 표시할 내용
						});

						// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
						// 이벤트 리스너로는 클로저를 만들어 등록합니다 
						// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
						kakao.maps.event.addListener(marker, 'mouseover',
								makeOverListener(map, marker, infowindow));
						kakao.maps.event.addListener(marker, 'mouseout',
								makeOutListener(infowindow));
					}

					// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
					function makeOverListener(map, marker, infowindow) {
						return function() {
							infowindow.open(map, marker);
						};
					}

					// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
					function makeOutListener(infowindow) {
						return function() {
							infowindow.close();
						};
					}

					/* 아래와 같이도 할 수 있습니다 */
					/*
					 for (var i = 0; i < positions.length; i ++) {
					 // 마커를 생성합니다
					 var marker = new kakao.maps.Marker({
					 map: map, // 마커를 표시할 지도
					 position: positions[i].latlng // 마커의 위치
					 });

					 // 마커에 표시할 인포윈도우를 생성합니다 
					 var infowindow = new kakao.maps.InfoWindow({
					 content: positions[i].content // 인포윈도우에 표시할 내용
					 });

					 // 마커에 이벤트를 등록하는 함수 만들고 즉시 호출하여 클로저를 만듭니다
					 // 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
					 (function(marker, infowindow) {
					 // 마커에 mouseover 이벤트를 등록하고 마우스 오버 시 인포윈도우를 표시합니다 
					 kakao.maps.event.addListener(marker, 'mouseover', function() {
					 infowindow.open(map, marker);
					 });

					 // 마커에 mouseout 이벤트를 등록하고 마우스 아웃 시 인포윈도우를 닫습니다
					 kakao.maps.event.addListener(marker, 'mouseout', function() {
					 infowindow.close();
					 });
					 })(marker, infowindow);
					 }
					 */
				</script>





				<!-- <div style="width: 100%; height:100%; border:1px solid black; ">
<div id="map" style="width:500px;height:500px;"></div>
<p>
    <button onclick="hideMarkers()">마커 감추기</button>
    <button onclick="showMarkers()">마커 보이기</button>
</p> 
<em>클릭한 위치에 마커가 표시됩니다!</em>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(36.35008986074698,127.38435360344104 ), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 지도를 클릭했을때 클릭한 위치에 마커를 추가하도록 지도에 클릭이벤트를 등록합니다
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
    // 클릭한 위치에 마커를 표시합니다 
    addMarker(mouseEvent.latLng);             
});

// 지도에 표시된 마커 객체를 가지고 있을 배열입니다
var markers = [];

// 마커 하나를 지도위에 표시합니다 
addMarker(new kakao.maps.LatLng(36.34650158758268,  127.3792116591183 ));
addMarker(new kakao.maps.LatLng(36.34519568600841, 127.38178971788848 ));
addMarker(new kakao.maps.LatLng(36.346726747375634, 127.38767902346653 ));
addMarker(new kakao.maps.LatLng(36.34870511265325,  127.39989839176792 ));
addMarker(new kakao.maps.LatLng(36.35136474356817,   127.38021560648836));
addMarker(new kakao.maps.LatLng(36.35797281098681,   127.37659335299477 ));

// 마커를 생성하고 지도위에 표시하는 함수입니다
function addMarker(position) {
    
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: position
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);
    
    // 생성된 마커를 배열에 추가합니다
    markers.push(marker);
}

// 배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
function setMarkers(map) {
    for (var i = 0; i < markers.length; i++) {
        markers[i].setMap(map);
    }            
}

// "마커 보이기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에 표시하는 함수입니다
function showMarkers() {
    setMarkers(map)    
}

// "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
function hideMarkers() {
    setMarkers(null);    
}
</script>
</div> -->
			</div>
		</div>




	</div>
</body>
</html>
