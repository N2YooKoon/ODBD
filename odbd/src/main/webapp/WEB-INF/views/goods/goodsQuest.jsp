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
<title>문의 등록</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<style>
.input{
width: 50%;
margin: 0 auto;
}

</style>
</head>
<body>
<div class="input">
<div class="mx-auto p-2" style="width: 300px;">
  <img src="image/logo.png" alt="logo" width="300" height="100">
</div>
<br><br>
<div class="mx-auto p-2" style="width: 230px;">
  <p class="fs-2">상품문의 등록</p>
</div>
<hr><br>
<form class="row mb-3">
  <div class="col-md-7">
    <label for="#" class="form-label">아이디</label>
    <input type="text" class="form-control" id="#" disabled>
  </div>
  <div class="col-md-7">
    <label for="#" class="form-label">제품명</label>
    <input type="password" class="form-control" id="#">
  </div>
  <div class="col-7">
    <label for="#" class="form-label">문의 제목</label>
    <input type="text" class="form-control" id="#">
  </div>
  <div class="col-7">
    <label for="#" class="form-label">문의하시는 날짜</label>
    <input type="text" class="form-control" id="#" disabled>
  </div>
  <div class="mb-3">
  <label for="#" class="form-label">문의 내용</label>
  <textarea class="form-control" id="#" rows="5" placeholder="문의 내용을 입력해주세요" ></textarea>
</div>
<label>이미지 첨부(jpg,png)</label>
<div class="col-7">
  <input type="file" class="form-control" id="#" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
</div>
</form>
<br><hr>
  <div class="col text-center">
    <button type="submit" class="btn btn-outline-primary">문의 등록</button>
  </div>
  &nbsp;
</div>
</body>
</html>