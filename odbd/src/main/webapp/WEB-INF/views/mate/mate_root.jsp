<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7bd91a967b0f6c885069a06e1f677e66"></script>

<!DOCTYPE html>
<html>
<head>
<style>
#mateRoot {
	font-weight: bold;
	font-size: 38px;
	background-color: orange;
	float: middle;
	
}
.mate-info{
background-color: orange;
font-size: 15px;
width: 350px; height: 30px;
font-weight: bold;
}
#map{
    border: 1px solid black;
    margin-top: 10px;
}
.mate-info-container {
  display: flex;
  align-items: center; 
 margin-top: 10px;
}

.mate-img { 
position: relative;
  margin-right: 10px; /* Add some spacing between images and text */
}

.mate-img img {
  display: block;
}
img{

}
</style>
<meta charset="utf-8">
<title>산책메이트 코스알림</title>
</head>


<body>
	<div align="center">
		<div style="width: 300px; height: 50px; border: 1px solid black;">
			<div id="mateRoot">반려견 산책 코스</div>
		</div>
		<br> <br>
		<div align="center">
			<div style="width: 450px; height: 100px; border: 1px solid black;">
                <div class="mate-info-container">
				<div class="mate-img">
                <img src="../image/we1.jpg" alt="Image 1" width="120px" height="90px">
            </div>

               <div class="mate-img01">(사용자 닉네임)김오뎅님, (반려견이름)오뎅<br>
				(산책메이트)와 아래 코스로 산책 중입니다.</div>
			</div>
		</div>
        </div>
    <button class="mate-info">
 <a href="mate_info.jsp">산책메이트 정보 보기</a>
 </button>
	
<div id="map" style="width:100%;height:350px;"></div>
<p id="result"></p>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 2 // 지도의 확대 레벨  
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 다각형을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 다각형을 표시합니다 
var polygonPath = [
        new kakao.maps.LatLng(33.450965145649576, 126.57020280169624),
        new kakao.maps.LatLng(33.450958085478554, 126.57011679275952),
        new kakao.maps.LatLng(33.45098043867851, 126.57006290510864),
        new kakao.maps.LatLng(33.45097328515681, 126.56995000794919),
        new kakao.maps.LatLng(33.450990859851004, 126.56981816664641),
        new kakao.maps.LatLng(33.45101296099739, 126.5696916806749),
        new kakao.maps.LatLng(33.45098334215462, 126.56960040542974),
        new kakao.maps.LatLng(33.450985176064975, 126.56947939729541),
        new kakao.maps.LatLng(33.450917277011726, 126.56939906680272),
        new kakao.maps.LatLng(33.45086322853736, 126.56941277823229),
        new kakao.maps.LatLng(33.45081577388131, 126.56937805752437),
        new kakao.maps.LatLng(33.450779813154405, 126.56940781273165),
        new kakao.maps.LatLng(33.45081633405741, 126.56953938654304),
        new kakao.maps.LatLng(33.45080569884398, 126.56972228175628),
        new kakao.maps.LatLng(33.450752219367345, 126.56990001069012),
        new kakao.maps.LatLng(33.45065801908533, 126.57003491859678),
        new kakao.maps.LatLng(33.45063139100987, 126.57015604858434),
        new kakao.maps.LatLng(33.45064506393239, 126.5701990028593)
];

// 지도에 표시할 다각형을 생성합니다
var polygon = new kakao.maps.Polygon({
    path:polygonPath, // 그려질 다각형의 좌표 배열입니다
    strokeWeight: 3, // 선의 두께입니다
    strokeColor: '#39DE2A', // 선의 색깔입니다
    strokeOpacity: 0.8, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
    strokeStyle: 'solid', // 선의 스타일입니다
    fillColor: 'none', // 채우기 색깔입니다
    fillOpacity: 0.7 // 채우기 불투명도 입니다
});

// 지도에 다각형을 표시합니다
polygon.setMap(map);

// 다각형에 마우스오버 이벤트가 발생했을 때 변경할 채우기 옵션입니다
var mouseoverOption = { 
    fillColor: '#EFFFED', // 채우기 색깔입니다
    fillOpacity: 0.8 // 채우기 불투명도 입니다        
};

// 다각형에 마우스아웃 이벤트가 발생했을 때 변경할 채우기 옵션입니다
var mouseoutOption = {
    fillColor: '#A2FF99', // 채우기 색깔입니다 
    fillOpacity: 0.7 // 채우기 불투명도 입니다        
};

// 다각형에 마우스오버 이벤트를 등록합니다
kakao.maps.event.addListener(polygon, 'mouseover', function() { 

    // 다각형의 채우기 옵션을 변경합니다
    polygon.setOptions(mouseoverOption);

});   

kakao.maps.event.addListener(polygon, 'mouseout', function() { 

    // 다각형의 채우기 옵션을 변경합니다
    polygon.setOptions(mouseoutOption);
    
}); 

// 다각형에 마우스다운 이벤트를 등록합니다
var downCount = 0;
kakao.maps.event.addListener(polygon, 'mousedown', function() { 
    console.log(event);
    var resultDiv = document.getElementById('result');
    resultDiv.innerHTML = '다각형에 mousedown 이벤트가 발생했습니다!' + (++downCount);
}); 
</script>



</body>
</html>
