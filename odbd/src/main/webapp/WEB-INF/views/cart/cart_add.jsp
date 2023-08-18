<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>상품 정보</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f7f7f7;
      margin: 0;
      padding: 0;
    }
    .product-container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 20px;
    }
    .product {
      display: flex;
      margin-bottom: 20px;
      padding: 10px;
      background-color: white;
      border: 1px solid #ddd;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    .product-image {
      flex: 0 0 150px;
      margin-right: 20px;
    }
    .product-image img {
      width: 100%;
      max-height: 150px;
      object-fit: cover;
    }
    .product-info {
      flex: 1;
      padding: 10px;
    }
    .product-name {
      font-size: 18px;
      font-weight: bold;
      margin-bottom: 10px;
    }
    .product-price {
      font-size: 16px;
      color: #e74c3c;
    }
  </style>
</head>
<body>
  <div class="product-container">
    <div class="product">
      <div class="product-image">
        <img src="product1.jpg" alt="상품 이미지">
      </div>
      <div class="product-info">
        <div class="product-name">상품명 1</div>
        <div class="product-price">100원</div>
        <button onclick="addToCart(1)">장바구니에 담기</button>
      </div>
    </div>
    
    <div class="product">
      <div class="product-image">
        <img src="product2.jpg" alt="상품 이미지">
      </div>
      <div class="product-info">
        <div class="product-name">상품명 2</div>
        <div class="product-price">150원</div>
        <button onclick="addToCart(2)">장바구니에 담기</button>
      </div>
    </div>
    
    <!-- 추가 상품 정보들을 동일한 방식으로 추가 -->
  </div>

  <script>
    function addToCart(productId) {
      // 실제로는 장바구니에 상품을 추가하는 로직을 구현해야 합니다.
      alert('상품이 장바구니에 추가되었습니다.');
    }
  </script>
</body>
</html>
