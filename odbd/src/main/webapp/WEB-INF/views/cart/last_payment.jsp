<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
body {
    background-color: lightblue;
}

h3 {
    font-weight: bold;
    text-align: center;
}

table {
    border: 1px solid black;
    width: 400px;
    margin: 0 auto; /* 가운데 정렬을 위해 추가 */
    background-color:white;
    margin-bottom: 3px;
    border-radius: 10px 10px ;
}

th, td {
    padding: 10px;
    text-align:left;
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
/* 추가적인 스타일 정의 부분은 동일하게 유지합니다. */
</style>
</head>
<body>
    <div>
        <h3>결제확인</h3>
    </div>
    <table>
        <tr>
            <th>수령자 성함</th>
            <td style="text-align:center;">김오뎅</td>
        </tr>
    </table>
    <table>
        <tr>
            <th>주소</th>
            <td style="text-align:center;">대전 서구 둔산동 오라클빌딩 10층</td>
        </tr>
    </table>
    <table>
        <tr>
            <th>배송요청사항</th>
            <td style="text-align:center;">문앞에 놓고 가주세요.</td>
        </tr>
    </table>
    <table>
        <tr>
            <th>상품명</th>
            <td style="text-align:center;">팡시온</td>
        </tr>
    </table>
    <table>
        <tr>
            <th>주문수량</th>
            <td style="text-align:center;">1</td>
        </tr>
    </table>
    <table>
        <tr>
            <th>주문 상품 최종금액</th>
            <td style="text-align:center;">31,500원</td>
        </tr>
    </table>
    <table>
        <tr>
            <th>결제카드</th>
            <td style="text-align:center;">카카오뱅크</td>
        </tr>
    </table>
    <div class="button-container">
        <button>
            <a href="main.jsp">최종결제 확인</a>
        </button>
    </div>
   
</body>
</html>
