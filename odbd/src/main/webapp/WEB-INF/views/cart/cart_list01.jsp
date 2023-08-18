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
            margin: 0;
            padding: 0;
        }
        .header {
            font-weight: bold;
            font-size: 24px;
            margin: 20px 0;
            padding-left: 20px;
        }
        .cart-item {
            display: flex;
            align-items: center;
            padding: 10px;
            border-bottom: 1px solid #ccc;
        }
        .product-image {
            width: 100px;
            height: 100px;
            margin-right: 20px;
        }
        .product-details {
            flex: 1;
            display: flex;
            flex-direction: column;
        }
        .quantity {
            display: flex;
            align-items: center;
        }
        .quantity-box {
            width: 30px;
            text-align: center;
            margin: 0 10px;
        }
        .total-price {
            margin-top: 10px;
        }
        .checkout-button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="header">장바구니 목록</div>
    
    <div class="cart-item">
        <img src="../image/res1.jpg" alt="상품 이미지" class="product-image">
        <div class="product-details">
            <p>상품 이름 및 설명</p>
            <div class="quantity">
                <button class="quantity-box">-</button>
                <input type="text" class="quantity-box" value="1">
                <button class="quantity-box">+</button>
            </div>
            <p class="total-price">상품 가격: $100</p>
            <button class="remove-button">삭제하기</button>
        </div>
    </div>
    
    <!-- 추가 상품 아이템들도 동일한 방식으로 추가 -->
    
    <p class="total-price">총 합계: $300</p>
    <button class="checkout-button">구매하기</button>
    
    <script>
        // 삭제 기능 구현
        const removeButtons = document.querySelectorAll('.remove-button');
        removeButtons.forEach(button => {
            button.addEventListener('click', () => {
                button.parentElement.parentElement.remove();
                calculateTotalPrice();
            });
        });

        // 수량 변경 기능 구현
        const quantityButtons = document.querySelectorAll('.quantity-box');
        quantityButtons.forEach(button => {
            button.addEventListener('click', () => {
                const input = button.parentElement.querySelector('input');
                let quantity = parseInt(input.value);
                if (button.textContent === '+') {
                    quantity++;
                } else if (button.textContent === '-' && quantity > 1) {
                    quantity--;
                }
                input.value = quantity;
                calculateTotalPrice();
            });
        });

        // 총 합계 계산
        function calculateTotalPrice() {
            const totalPrices = document.querySelectorAll('.total-price');
            let totalPrice = 0;
            totalPrices.forEach(priceElement => {
                const priceText = priceElement.textContent;
                const price = parseFloat(priceText.replace('상품 가격: $', ''));
                totalPrice += price;
            });
            const totalElement = document.querySelector('.total-price:last-child');
            totalElement.textContent = `총 합계: $${totalPrice}`;
        }
    </script>
</body>
</html>
