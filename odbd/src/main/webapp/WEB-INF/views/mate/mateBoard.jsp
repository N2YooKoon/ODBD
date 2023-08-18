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
<meta charset="UTF-8">
<title>산책메이트 게시판</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<style>
body{
text-align:center;
}
</style>
<body>
<div class="container">
<br>
<h1><a href="#" class="text-decoration-none">산책메이트 게시판</a></h1>
<br><br>
&nbsp;
<table class="table table-striped table-hover">
  <thead>
  <tr>
  <th>번호</th>
  <th>제목</th>
  <th>작성자</th>
  <th>매칭상태</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td>1</td>
  <td>산책 2시간 가능하신분 구해요</td>
  <td>아이디</td>
  <td>대기</td>
  </tr>
  <tr>
  <td>2</td>
  <td>오전 산책 메이트 구합니다</td>
  <td>아이디</td>
  <td>대기</td>
  </tr>
  <tr>
  <td>3</td>
  <td>내일 점심시간 산책메이트 구합니다.</td>
  <td>아이디</td>
  <td>대기</td>
  </tr>
  <tr>
  <td>4</td>
  <td>내일 점심시간 산책메이트 구합니다.</td>
  <td>아이디</td>
  <td>대기</td>
  </tr>
  <tr>
  <td>5</td>
  <td>내일 점심시간 산책메이트 구합니다.</td>
  <td>아이디</td>
  <td>대기</td>
  </tr>
  <tr>
  <td>6</td>
  <td>내일 점심시간 산책메이트 구합니다.</td>
  <td>아이디</td>
  <td>완료</td>
  </tr>
  <tr>
  <td>7</td>
  <td>내일 점심시간 산책메이트 구합니다.</td>
  <td>아이디</td>
  <td>완료</td>
  </tr>
  </tbody>
</table>
<hr>
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
</div>
</body>
</html>