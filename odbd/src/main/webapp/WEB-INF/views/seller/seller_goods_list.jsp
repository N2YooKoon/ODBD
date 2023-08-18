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
.add-goods{
	text-align: right;	
}
h2{
	text-align: center;
}
button{
	background-color: yellow;
	border: none;
	border-radius: 10px 10px;
}
.no-uline { text-decoration:none; }
.sel-page { text-decoration:none; color:black; }
.cls2 {	 text-align:center; font-size:20px; margin-top: 20px;}


.page-item{
text-decoration: none;
display: inline;
}
.pagination{
	text-align: center;
}

</style>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
	<div class="order-info">
		<h2>판매자 등록 상품 관리</h2>
		<hr>
	<table>
		<div class="cls1">	
		<table border="1px solid black;">
			
			<tr>
				<th>등록일</th>
				<th>판매상품</th>
				<th>상태</th>
				<th>가격</th>
				<th>할인율</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			<div class="add-goods">
			<button type="button" onclick="#seller_add_goods.jsp">상품등록</button>
		</div>
			<tr>				
				<td>goods_addDate</td>
				<td>goods_title</td>
				<td>goods_status</td>
				<td>goods_price</td>
				<td>goods_addDate</td>
				<td>modify</td>
				<td>delete</td>				
			</tr>
			<tr>				
				<td>goods_addDate</td>
				<td>goods_title</td>
				<td>goods_status</td>
				<td>goods_price</td>
				<td>goods_addDate</td>
				<td>modify</td>
				<td>delete</td>				
			</tr>
			<tr>				
				<td>goods_addDate</td>
				<td>goods_title</td>
				<td>goods_status</td>
				<td>goods_price</td>
				<td>goods_addDate</td>
				<td>modify</td>
				<td>delete</td>				
			</tr>
		</div>
			</table>
<div class="cls2">
	<c:if test="${ goods_title != null }">
		<c:choose>
			<c:when test="${goods_title > 100}">
				<c:forEach var="page" begin="1" end="10" step="1">
					<c:if test="${section > 1 && page == 1 }">
					<a class="no-uline" href="${contextPath}/board/listArticles.do?section=${section-1}&pageNum=${(section-1)*10+1}"> &nbsp; pre </a>
					
					</c:if>
					<a class="no-uline" href="${contextPath}/board/listArticles.do?section=${section-1}&pageNum=${(section-1)*10+page}">${section-1 }</a>
					
					<c:if test="${page == 10}">
					<a class="no-uline" href="${contextPath}/board/listArticles.do?section=${section+1}&pageNum=${section*10+1}"> &nbsp; next </a>
					</c:if>
				</c:forEach>
			</c:when>
			
			<c:when test="${goods_title == 100 }">
				<c:forEach var="page" begin="1" end="10" step="1">
						<a class="no-uline" href="">${page }</a>
				</c:forEach>
			</c:when>
				
			<c:when test="${goods_title < 100 }">
				<c:forEach var="page" begin="1" end="${goods_title/10+1}" step="1">
					<c:choose>
						<c:when test="${page == pageNum}">
						<a class="sel-page" href="${contextPath}/board/listArticles.do?section=${section}&pageNum=${page}">${page}</a>
						</c:when>
						
						<c:otherwise>
							<a class="sel-page" href="${contextPath}/board/listArticles.do?section=${section}&pageNum=${page}">${page}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				
			</c:when>
		</c:choose>
	</c:if>
</div>
<footer class="text-body-secondary py-5">
	<div class="container">
		<nav aria-label="Page navigation example">
	<ul class="pagination justify-content-center">
	  <li class="page-item disabled">
		<a class="page-link">이전</a>
	  </li>
	  <li class="page-item"><a class="page-link" href="#">1</a></li>
	  <li class="page-item"><a class="page-link" href="#">2</a></li>
	  <li class="page-item"><a class="page-link" href="#">3</a></li>
	  <li class="page-item"><a class="page-link" href="#">4</a></li>
	  <li class="page-item"><a class="page-link" href="#">5</a></li>
	  <li class="page-item">
		<a class="page-link" href="#">다음</a>
	  </li>
	</ul>
  </nav>
	</div>
  </footer>
</body>
</html>


