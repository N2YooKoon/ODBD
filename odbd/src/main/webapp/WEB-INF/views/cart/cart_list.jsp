<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>장바구니 목록</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 20px;
        }
        .header {
            font-weight: bold;
            font-size: 24px;
            margin-bottom: 10px;
        }
        .product-container {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            padding: 10px;
        }
        .product-image {
            width: 100px;
            height: 100px;
            margin-right: 10px;
        }
        .product-text {
            flex-grow: 1;
            text-align: left;
        }
        .quantity-box {
            display: flex;
            align-items: center;
            margin-right: 10px;
        }
        .quantity-input {
            width: 30px;
            text-align: center;
        }
        .delete-button {
            color: red;
            cursor: pointer;
        }
        .total {
            font-weight: bold;
            margin-top: 10px;
        }
        .purchase-button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="header">장바구니 목록</div>
    
    <div class="product-container">
        <img src="../image/res1.jpg" alt="상품 이미지" class="product-image">
        <div class="product-text">
            상품명: 상품 1<br>
             가격: 10,000원
            <div class="product-price"></div>
        </div>
        <div class="quantity-box">
            <button class="quantity-button" onclick="changeQuantity(-1)">-</button>
            <input type="number" class="quantity-input" value="1">
            <button class="quantity-button" onclick="changeQuantity(1)">+</button>
        </div>
        <div class="delete-button" onclick="deleteProduct(this)">삭제하기</div>
    </div>
    
    <!-- 상품 목록 계속 추가 -->
     <div class="product-container">
        <img src="../image/res1.jpg" alt="상품 이미지" class="product-image">
        <div class="product-text">
            상품명: 상품 1<br>
            가격: 10,000원
        </div>
        <div class="quantity-box">
            <button class="quantity-button" onclick="changeQuantity(-1)">-</button>
            <input type="number" class="quantity-input" value="1">
            <button class="quantity-button" onclick="changeQuantity(1)">+</button>
        </div>
        <div class="delete-button" onclick="deleteProduct(this)">삭제하기</div>
    </div>
     <div class="product-container">
        <img src="../image/res1.jpg" alt="상품 이미지" class="product-image">
        <div class="product-text">
            상품명: 상품 1<br>
            가격: 10,000원
        </div>
        <div class="quantity-box">
            <button class="quantity-button" onclick="changeQuantity(-1)">-</button>
            <input type="number" class="quantity-input" value="1">
            <button class="quantity-button" onclick="changeQuantity(1)">+</button>
        </div>
        <div class="delete-button" onclick="deleteProduct(this)">삭제하기</div>
    </div>
    
    
    
   <div class="total">총 합계: 30,000원</div>
    
    
     <button class="payment">
    <a href="payment.jsp">구매하기</a>
    </button>
    
    
    
    <script>
        // 수량 변경 함수
        function changeQuantity(value) {
            var quantityInput = event.target.parentElement.querySelector('.quantity-input');
            var currentQuantity = parseInt(quantityInput.value);
            var newQuantity = currentQuantity + value;
            if (newQuantity >= 1) {
                quantityInput.value = newQuantity;
            }
        }
        
        // 상품 삭제 함수
        function deleteProduct(deleteButton) {
            var productContainer = deleteButton.parentElement;
            productContainer.remove();
            calculateTotal();
        }
        
        // 총 합계 계산 함수
        function calculateTotal() {
            var productContainers = document.querySelectorAll('.product-container');
            var total = 0;
            productContainers.forEach(function(container) {
                var price = parseInt(container.querySelector('.product-text').querySelectorAll('br')[1].textContent.trim().split(':')[1].replace(',', ''));
                var quantity = parseInt(container.querySelector('.quantity-input').value);
                total += price * quantity;
            });
            document.querySelector('.total').textContent = '총 합계: ' + numberWithCommas(total) + '원';
        }
        
        // 숫자에 콤마 추가하는 함수
        function numberWithCommas(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }
        
        // 초기화
        calculateTotal();
        
        // 상품 추가 시 총 합계 업데이트
        function updateTotal() {
            calculateTotal();
        }
        
    </script>
</body>
</html>