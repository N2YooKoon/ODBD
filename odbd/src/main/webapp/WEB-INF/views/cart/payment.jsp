<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
<style>
table {
	border: 1px solid black;
}

body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #fff;
}

.order-user {
	/*  max-width: 400px; */
	/*  margin: 50px auto; */
/* 	padding: 20px; */
	background-color: #fff;
}

h2 {
	font-weight: bold;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th, td {
	padding: 10px;
	text-align: left;
	border-bottom: 1px solid #ccc;
}
p
th {
	background-color: #f0f0f0;
}
.total-price01{
background-color: lightblue;
}
.button-container {
    text-align: center; /* 버튼 가운데 정렬 */
    margin-top: 20px; /* 위쪽 여백 추가 */
    }
.button-container button {
    background-color: yellow; /* 배경색 노란색으로 변경 */
    border: none;
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    border-radius: 10px 10px;
	}
	a{
		color:black;
		text-decoration: none;
	}
	.popup {
  display: none;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
}

.popup-content {
  background-color: white;
  width: 50%;
  padding: 20px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

</style>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
	<div class="order-info">
		<h2>주문정보</h2>
		<hr>
		<table border="1px solid black;">
			<tr>
				<th>상품 정보</th>
				<th>상품명</th>
				<th>판매자</th>
				<th>수량</th>
				<th>상품금액</th>
			</tr>
			<tr>
				<td><img src="../image/res1.jpg" alt="상품 이미지"></td>
				<td>팡시온이용권</td>
				<td>팡시온</td>
				<td>1</td>
				<td>30,000원</td>
			</tr>
			<!-- 추가 주문 상품에 대한 정보를 추가로 넣어줄 수 있습니다. -->
			</div>
		</table>

		<div class="order-user">
			<h2>주문자 정보</h2>
			<table>
				<tr>
					<th>주문자 성함</th>
					<td>김오뎅</td>
				</tr>
				<tr>
					<th>휴대전화</th>
					<td>010-123-1234</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>odbd@odbd.com</td>
				</tr>
			</table>
		</div>
		<div class="add-info">
			<h2>배송지 정보</h2>
			<table>
				<tr>
					<th>수령자 성함</th>
					<td>김오뎅</td>
				</tr>
				<tr>
					<th>휴대전화</th>
					<td>010-123-1234</td>
				</tr>
				<tr>
					<th>배송 주소</th>
					<td>대전 서구 둔산동 오라클빌딩 10층</td>
				</tr>
				<tr>
					<th>배송요청사항</th>
					<td>문앞에 놓고 가주세요.</td>
				</tr>
			</table>
			<div class="pay-info">
				<h2>결제정보</h2>
				<table>
					<tr>
						<th>결제금액</th>
						<td>30,000</td>
					</tr>
					<tr>
						<th>배송비</th>
						<td>2,500</td>
					</tr>
					<tr>
						<th>할인쿠폰</th>
						<td>1,000원 <button id="couponButton">조회</button></td>
					  </tr>
				</table>
				<div class="total-price">
					<table class="total-price01">
						<tr>
						<td>총 결제금액</td>
							<td>31,500원</td>
						</tr>
						</table>
						<div class="pay-method">
							<h2>결제방법</h2>
							<table>
							<tr>						 
            <th>카드사 선택</th>
            <td>
              <select>
                <option value="visa">삼성카드</option>
                <option value="mastercard">국민카드</option>
                <option value="amex">카카오뱅크</option>
                <option value="amex">기타</option>
                <!-- 원하는 카드사 목록을 추가하십시오. -->
              </select>
            </td>
          </tr>
        </table>
      </div>
	  <div class="button-container">
      <button>
 <a href="last_payment.jsp">결제하기</a>
 </button>
 
 
 <div id="couponPopup" class="popup">
	<div class="popup-content">
	  <!-- Your popup content goes here -->
	  <p>쿠폰창인디...</p>
	  <button id="closePopup">Close</button>
	</div>
  </div>
 </div>
</body>
</html>


