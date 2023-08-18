<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <style>
    .review-box {
      border: 2px solid yellow;
      padding: 10px;
      margin-bottom: 10px;
      display:flex;
    }
    .pagination {
      margin-top: 20px;
    }
    .addreview {
    text-align:right;
    }
  </style>
  <title>산책메이트 후기</title>
</head>
<body>
  <div style="text-align: center;">
    <h1><strong>산책메이트 참여후기</strong></h1>
    <div class="addreview">
    <a href="review_form.jsp">후기등록</a>
    </div>
  </div>
  
  <!-- 후기 목록을 표시하는 부분 -->
  <div class="review-box">
    <p>후기 내용 1...</p>
  </div>
  <div class="review-box">
    <p>후기 내용 2...</p>
  </div>
  <div class="review-box">
    <p>후기 내용 1...</p>
  </div>
  <div class="review-box">
    <p>후기 내용 2...</p>
  </div>
  <div class="review-box">
    <p>후기 내용 1...</p>
  </div>
  <div class="review-box">
    <p>후기 내용 2...</p>
  </div>
  <div class="review-box">
    <p>후기 내용 1...</p>
  </div>
  <div class="review-box">
    <p>후기 내용 2...</p>
  </div>
  
  
  <!-- 더 많은 후기 목록 ... -->
  
  <!-- 페이지 이동 버튼 -->
  <div class="pagination">
    <a href="reviews.jsp?page=1">1</a>
    <a href="reviews.jsp?page=2">2</a>
    <a href="reviews.jsp?page=3">3</a>
    <!-- 페이지 수에 따라 더 많은 페이지 버튼 ... -->
    
  </div>
</body>
</html>

