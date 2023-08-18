<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
.container01 {
  margin: 10px;
  padding: 10px;
  text-align: left; /* 텍스트 박스들을 왼쪽으로 정렬 */
  }
container01 {
	margin: 10px;
	padding: 10px;
	text-align: center;
}

h1 {
	font-weight: bold;
	text-align: center;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.button {
	padding: 10px 20px;
	font-size: 20px;
	background-color: none;
	color: black;
}

#drop-content {
	position: absolute;
	z-index: 1;
}

#drop-content a {
	display: block;
	font-size: 20px;
	background-color: #dfdfdf;
	color: black;
	text-decoration: none;
	padding: 10px 36px;
	margin: 2px 0px 0px 0px;
}
/* label{
 border: 1px solid black;
 } */
</style>
<meta charset="utf-8">
<head>
<script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js">
</script>
<script>
	function execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('roadAddress').value = fullRoadAddr;
						document.getElementById('jibunAddress').value = data.jibunAddress;

						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							//예상되는 도로명 주소에 조합형 주소를 추가한다.
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
						} else {
							document.getElementById('guide').innerHTML = '';
						}

					}
				}).open();
	}
</script>
<title>장소 등록</title>
</head>
<body>
	<h1>장소 등록</h1>
	<div class="container01">
		<table></table>
		<label for="locationType">장소 종류:</label> <select id="locationType">
			<option value="restaurant">애견 동반 식당</option>
			<option value="cafe">애견 병원</option>
			<option value="store">애견 미용샵</option>
		</select> <br>
		<br> <label for="businessName">사업장명:</label> <input type="text"
			id="businessName"> <br>
		<br> <label for="businessName">대표자:</label> <input type="text"
			id="businessName"> <br>
		<br> <label>연락처:</label> <label for="numType"></label> <select
			id="numType">
			<option value="010">010</option>
			<option value="서울">02</option>
			<option value="경기">031</option>
			<option value="인천">032</option>
			<option value="강원">033</option>
			<option value="충남">041</option>
			<option value="대전">042</option>
			<option value="충북">043</option>
			<option value="세종">044</option>
			<option value="부산">051</option>
			<option value="울산">052</option>
			<option value="대구">053</option>
			<option value="경북">054</option>
			<option value="경남">055</option>
			<option value="전남">061</option>
			<option value="광주">062</option>
			<option value="전북">063</option>
			<option value="제주">064</option>

		</select> <input type="text" id="contact2" placeholder="두 번째 연락처"> <input
			type="text" id="contact3" placeholder="세 번째 연락처"> <br>
		<br>


		<tr class="dot_line">
			<td class="fixed_join">주소:</td>
			<td><input type="text" id="zipcode" name="zipcode" size="10">
				<a href="javascript:execDaumPostcode()">우편번호검색</a> <br>
				<p>
					<!--  지번 주소:<input type="text" id="roadAddress"  name="roadAddress" size="50"><br><br> -->
					도로명 주소: <input type="text" id="jibunAddress" name="jibunAddress"
						size="50"><br>
					<br> 나머지 주소: <input type="text" name="namujiAddress" size="50" />
					<!--   <span id="guide" style="color:#999"></span> -->
				</p></td>
		</tr>

		<script>
			document.getElementById('findAddress').addEventListener('click',
					function() {
						// 주소 찾기 버튼 클릭 이벤트 처리
					});
		</script>
		
		  <input  type="button"  onClick="#" value="신규장소 등록하기"  />
		
	</div>

</body>
</html>

