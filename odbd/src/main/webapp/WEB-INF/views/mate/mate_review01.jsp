<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>산책메이트 후기 등록</title>
    <style>
        body {
            text-align: center;
        }
        .header {
            font-weight: bold;
            font-size: 24px;
            margin-top: 20px;
        }
        .registration-link {
            float: right;
            margin-right: 20px;
        }
        .textbox-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
        }
        .textbox {
            width: 200px;
            height: 30px;
            margin: 5px;
        }
        .pagination {
            margin-top: 20px;
        }
        .pagination-button {
            margin: 0 5px;
        }
    </style>
</head>
<body>
    <div class="header">산책메이트 참여후기</div>
    <a class="registration-link" href="review_registration.jsp">후기등록</a>
    
    <div class="textbox-container">
        <div>
            <input type="text" class="textbox" placeholder="후기 내용 1">
            <input type="text" class="textbox" placeholder="후기 내용 2">
            <input type="text" class="textbox" placeholder="후기 내용 3">
        </div>
        <div>
            <input type="text" class="textbox" placeholder="후기 내용 4">
            <input type="text" class="textbox" placeholder="후기 내용 5">
            <input type="text" class="textbox" placeholder="후기 내용 6">
        </div>
    </div>
    
    <div class="pagination">
        <button class="pagination-button">1</button>
        <button class="pagination-button">2</button>
        <button class="pagination-button">3</button>
        <!-- 이하 페이지 숫자 버튼 계속 추가 -->
    </div>
</body>
</html>
