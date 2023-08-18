<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    %>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>상품 상세 페이지</title>
<style>
#layer {
	z-index: 2;
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
}

#popup {
	z-index: 3;
	position: fixed;
	text-align: center;
	left: 50%;
	top: 45%;
	width: 300px;
	height: 200px;
	background-color: #ccffff;
	border: 3px solid #87cb42;
}

#close {
	z-index: 4;
	float: right;
}
 .row {
    display: flex;
    justify-content: center;
    width: 100%;
    margin: 10px 0;
  }

  .button {
    flex: 1;
    padding: 10px 20px;
    margin: 5px;
    background-color: #3498db;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }

  .button-container {
    display: flex;
    flex-wrap: wrap;
    width: 100%;
    justify-content: space-between;
  }
  .title{
  text-align:left;
  }
</style>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<hgroup>
		<h1>사료</h1><hr>
		<h2>사료&gt; OOO사료</h2>
	</hgroup>
<div class="container text-center">
  <div class="row">
    <div class="col">
	<div id="goods_image">
		<figure>
			 <img src="image/dogfood6.png" alt="dogfood" width="800" height="600">
		</figure>
	</div>
    </div>
    <hr>
    <div class="col2">
      <div id="detail_table text-center">
		<table>
			<tbody>
				<tr>
					<td class="fixed">상품가격 </td>
					<td class="fixed"><strong> 22,000 won</strong></td>
				</tr>
				<tr>
					<td class="fixed">배송료</td>
					<td class="fixed"><strong>무료</strong></td>
				</tr>
    </div>
  </div>
</div>
				<tr>
					<td class="fixed">수량</td>
					<td class="fixed">
			      <select style="width: 60px;" id="order_goods_qty">
				      		<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
			     </select>
					 </td>
				</tr>
			</tbody>
		</table>
		<hr>
   <div class="row">
    <button class="button">바로구매</button>
  </div>
  <div class="row button-container">
    <button class="button">장바구니</button>
    <button class="button">찜하기</button>
  </div>
	</div>
	<div class="clear"></div><hr>
<div class="container text-center">
  <div class="row">
    <div class="col">
      상품정보 
    </div>
    <div class="col">
      상품문의 
    </div>
    <div class="col">
      구매후기 
    </div>
    <div class="col">
      취소/교환 반품 안내
    </div>
  </div>
</div>
<hr>
	</div>
	<span class="border-bottom border-black">
	<div class="title">
	<h1 class="display-6">상품정보</h1>
	</div><br>
	</span>
	<hr>
	<p class="text-center">로얄캐닌 미디엄 어덜트는 자연 면역력을 향상시키고, 높은 소화율을 지닌 중형견 사료 입니다. 
	특허받은 항산화 복합물과 만난-올리고당의 함유로 중형견의 자연 면역력 향상에 도움을 줍니다. 
	최고 품질의 단백질과 균형잡힌 식이섬유등 로얄캐닌만의 성분 배합을 통해 최적의 소화를 도우며, 풍부한 오메가3 지방산이 건강한 피모를 유지할 수 있도록 도와줍니다.
	중형견의 턱 사이즈에 맞는 알갱이 크기로 치아 위생의 관리에 도움을 주며, 특히 치석형성 예방에 큰 효과가 있습니다.</p>
	<br>
	<div id="goods_detail_image">
		<figure>
			 <img src="image/detail.jpg" alt="goods_detail">
		</figure>
	</div>
	<span class="border-top border-black"><br>
	<div class="container text-center">
    <div class="row">
    <div class="col">
    <div class="title">
	<h1 class="display-6">상품문의</h1>
	</div><br>
    </div>
    <div class="col"></div>
    <div class="col"></div>
    <div class="col">
    <button type="button" class="btn btn-primary btn-sm">문의 등록</button>
    </div>
    </div>
</div>
</span>
  <div class="row">
    <div class="col-2">
    <img src="image/quest.jpg" alt="quest1" width="150" height="150">
    </div>
    <div class="col-10">
        상품문의 내용 1
    </div>
  </div>
   <div class="row">
    <div class="col-2">
    <img src="image/quest.jpg" alt="quest1" width="150" height="150">
    </div>
    <div class="col-10">
        상품문의 내용 2
    </div>
  </div>
  </div>
<br><hr>
<span class="border-top border-black"><br>
	<div class="container text-center">
  <div class="row">
    <div class="col">
    <div class="title">
	<h1 class="display-6">구매후기</h1>
	</div><br>
    </div>
    <div class="col"></div>
    <div class="col"></div>
    <div class="col">
    <button type="button" class="btn btn-primary btn-sm">구매후기 등록</button>
    </div>
  </div>
  <div class="row">
    <div class="col-2"><img src="image/dogfood6.png" alt="quest1" width="160" height="150"></div>
    <div class="col-2"><img src="image/star.png" alt="star" width="100" height="50"></div>
    <div class="col-8">구매후기 내용 1</div>
  </div>
  <div class="row">
    <div class="col-2"><img src="image/dogfood6.png" alt="quest1" width="160" height="150"></div>
    <div class="col-2"><img src="image/star.png" alt="star" width="100" height="50"></div>
    <div class="col-8">구매후기 내용 2</div>
  </div>
</div>
<br><hr>
</span>
<div class="container text-center">
  <div class="row">
    <div class="title">
	<h1 class="display-6">취소/교환 안내</h1><br>
    </div>
  </div>
  <div class="row">
<span class="border border-success-subtle">
<br><p>주문취소는 '입금대기, 입금완료' 단계에서만 가능합니다.
주문 내 일부 상품의 부분 취소는 불가능합니다.
주문취소는 '마이페이지 > 주문 · 배송 > 주문취소 > 주문 상세 보기' 를 통해 직접 취소하실 수 있습니다.
입금완료 후 신속한 발송을 위하여 주문 상태가 빠르게 '발송준비중' 으로 변경될 수 있으며, '발송준비중' 단계에서는 주문 취소가 불가능합니다.
'발송준비중, 발송처리완료' 단계에서는 상품 수령 후 교환 또는 반품만 가능합니다.</p><br>
</span>
  </div>
</div>
</body>
</html>