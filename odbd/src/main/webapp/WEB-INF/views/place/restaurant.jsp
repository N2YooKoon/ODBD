<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    
 <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7bd91a967b0f6c885069a06e1f677e66"></script> 
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
   float:left;
  	display:flex;
    flex-wrap: wrap;
  }
   
  .image-container02 {
   float:right;
  	display:flex;
    flex-wrap: wrap;
  } 
   
  .container {
    display: flex;
    flex-wrap: wrap;
  }
.id{
font-size:10px;
font-weight:bold;
}


a {
font-weight:bold;
font-size:80px;
}
  .image-box {
    flex: 0 0 calc(33.33% - 10px);
    margin: 30px;.
 
  }

  .image-box img {
    width: 300px;
    height: 300px;
  }
  p{
  font-size: 20px;
  }
 button{
 background-color:transparent;
 border: none; 
 cursor: pointer; /* 커서를 손가락 모양으로 변경 */
 }
  .hosName {
  color:gray;
  font-size:10px;
  }
  .short_review{
  font-size:10px;}
</style>
</head>


<body>
<div align="center" >
<hr>
<a>애견 동반 식당</a><br>
</div>
<br>
<br>
<br>


<div class="container-wrapper">



<div class="image-container01" >


<div style="width: 800px; height:100%; "> 


<div class="container" >
  <div class="image-box">
    <img src="image/res1.jpg" alt="Image 1">
    	<p>1.유성동물병원
		4.3</p>
		<p><div class="hosName">대전유성구온천1동</div><br>		
		<button type="button" onclick="window.open('https://m.place.naver.com/place/1208922484/home?entry=ple');">웨일스병원 더보기></button>
	 </div>
  
  <div class="image-box">
    <img src="C:\spring\spring\workspace-spring-tool-suite-4-4.10.0.RELEASE\boot01\src\main\webapp\image\res2.jpg" alt="Image 2">
    <p>2.웨일스병원
		4.2</p>
		<p><div class="hosName">대전유성구온천2동</div><br>
		<button type="button" onclick="window.open('https://m.place.naver.com/place/1208922484/home?entry=ple');">웨일스병원 더보기></button>		
  </div>
    
</div>

<div class="container">
  <div class="image-box">
    <img src="C:\spring\spring\workspace-spring-tool-suite-4-4.10.0.RELEASE\boot01\src\main\resources\static\image\hos3.JPG" alt="Image 4">
    <p>3.나라병원
		3.3</p>
		<p><div class="hosName">대전중구2동</div><br>
		<button type="button" onclick="window.open('https://m.place.naver.com/place/1208922484/home?entry=ple');">나라병원 더보기></button>
		  </div>
		  
  <div class="image-box">
    <img src="C:\spring\spring\workspace-spring-tool-suite-4-4.10.0.RELEASE\boot01\src\main\resources\static\image\hos4.JPG" alt="Image 5">
    <p>4.애니멀병원
		4.3</p>
		<p><div class="hosName">대전서구천동</div><br>		
		<button type="button" onclick="window.open('https://m.place.naver.com/place/1208922484/home?entry=ple');">애니멀병원 더보기></button>		
  </div>    
</div>

<div class="container">
  <div class="image-box">
    <img src="C:\spring\spring\workspace-spring-tool-suite-4-4.10.0.RELEASE\boot01\src\main\resources\static\image\hos5.JPG" alt="Image 4">
    <p>5.금병원
		4.3</p>
		<p><div class="hosName">대전유성구온천동</div><br>		
		<button type="button" onclick="window.open('https://m.place.naver.com/place/1208922484/home?entry=ple');">금병원 더보기></button>	
  </div>
  <div class="image-box">
    <img src="C:\spring\spring\workspace-spring-tool-suite-4-4.10.0.RELEASE\boot01\src\main\resources\static\image\hos6.JPG" alt="Image 5">
    <p>6.숙라병원
		4.3</p>
		<p><div class="hosName">대전유성구상서동</div><br>
		<button type="button" onclick="window.open('https://m.place.naver.com/place/1208922484/home?entry=ple');">숙라병원 더보기></button>
		 </div>    
</div>
</div>
</div>



<div class="image-container02" >


   
 <div style="width: 1000px; height:510px; border:1px solid black; "> 
<div id="map" style="width:1000px;height:500px;"></div>

<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(36.34650158758268,  127.3792116591183), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 
// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
var positions = [
    {
        content: '<div>별나라병원</div>', 
        latlng: new kakao.maps.LatLng(36.34650158758268,  127.3792116591183)
    },
    {
        content: '<div>금나라병원</div>', 
        latlng: new kakao.maps.LatLng(36.34519568600841, 127.38178971788848 )
    },
    {
        content: '<div>웰일스병원</div>', 
        latlng: new kakao.maps.LatLng(36.346726747375634, 127.38767902346653)
    },
    {
        content: '<div>숙라병원</div>',
        latlng: new kakao.maps.LatLng(36.34870511265325,  127.39989839176792 )
    },
    {
        content: '<div>숙라병원</div>',
        latlng: new kakao.maps.LatLng(36.35136474356817,   127.38021560648836 )
    },
    {
        content: '<div>숙라병원</div>',
        latlng: new kakao.maps.LatLng(36.35797281098681,   127.37659335299477 )
    }
];

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

    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
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
