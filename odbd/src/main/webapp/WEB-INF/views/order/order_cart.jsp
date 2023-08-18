<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    
    <%
    request.setCharacterEncoding("utf-8");
    %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>order_cart</title>
    <style>
        .container {
            width : 400px;
            height: 400px;
            background-color: #f5d682;
            border: 1px solid rgb(0, 0, 0);
        }
        .textbox{
        color: white;
        background-color: green;
        box-sizing: border-box;
        width: 400px; /* 100% */
        height: 80px;
        padding: 20px;
        border: 5px dashed black;
        margin: 0;;
        }
        .td{
        
        }
    </style>
</head>
<body>
    <form>
        <section>
            <h2>장바구니</h2>
            <div class="container">장바구니 목록
                <table border="1" align="center" width="80%">
                    <tr align="center" bgcolor="#c7c7c7">
                        <td><input type="checkbox"></td>
                        <td><b>이미지</b></td>
                        <td><b>상품명</b></td>
                        <td><b>수량</b></td>
                        <td><b>가격</b></td>
                        <td><b>삭제</b></td>
                    </tr>
                    <tr align="center">
                        <td><input type="checkbox"></td>
                        <td>${가져올 데이터}</td>
                        <td>${가져올 데이터}</td>
                        <td>${가져올 데이터}</td>
                        <td>${가져올 데이터}</td>
                        <td>${삭제구현}</td>
                </table>
                <td colspan="3"><input type="checkbox"> <button class="cart__list__optionbtn">선택상품 삭제</button>

            </div>
            <div class="cart__mainbtns">
                <button class="#">쇼핑 계속하기</button>
                <button class="#">주문하기</button>
            </div>
        </section>
    </form>
</body>
</html>