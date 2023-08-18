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
<title>게시판 글 상세창</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<style>
/* 입력 폼 간격 조정 */
.input{
width: 50%;
margin: 0 auto;
}
/* 입력 폼 간격 조정 */
#form{
margin: 5px;
}
</style>
</head>
<body>
<div class="input">
<br><br>
<!-- 의뢰 글 제목 -->
<div class="mx-auto p-2">
<p class="fw-bolder fs-4">산책 2시간 가능하신 메이트님 찾아요</p>
</div>
<hr>
<!-- 의뢰 글 상세보기 내용 -->
<form class="row mb-3">
  <div class="col-md-7">
    <label for="#" class="form-label">닉네임</label>
    <input type="text" class="form-control" id="form" placeholder="작성자 닉네임" disabled>
  </div>
  &nbsp;
  <div class="col-md-7">
    <label for="#" class="form-label">산책 날짜</label>
    <input type="date" class="form-control" id="form">
  </div>
  &nbsp;
    <div class="col-md-7">
    <label for="#" class="form-label">산책 시작</label>
    <input type="time" class="form-control" id="form">
    <label for="#" class="form-label">산책 종료</label>
    <input type="time" class="form-control" id="form">
  </div>
  <br>
  <div class="col-md-7">
    <label for="#" class="form-label">강아지 이름</label>
    <input type="text" class="form-control" id="form" placeholder="이름을 입력해주세요">
  </div>
  <div class="col-md-7">
    <label for="#" class="form-label">강아지 나이</label>
    <select class="form-select" aria-label="Default select example" id="form">
  <option selected>나이를 선택해주세요</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="1">4</option>
  <option value="2">5</option>
  <option value="3">6</option>
  <option value="1">7</option>
  <option value="2">8</option>
  <option value="3">9</option>
  <option value="1">10</option>
</select>
  </div>
  <br>
<div class="row">
<label for="#" class="form-label">크기/견종 선택해주세요</label>
  <div class="col">
    <select class="form-select" aria-label="Default select example" id="form">
  <option selected>크기</option>
  <option value="1">소형견</option>
  <option value="2">중형견</option>
  <option value="3">대형견</option>
</select>
  </div>
  <div class="col">
    <select class="form-select" aria-label="Default select example" id="form">
  <option selected>견종</option>
  <option value="1">치와와</option>
  <option value="2">시츄</option>
  <option value="3">진돗개</option>
</select>
  </div>
</div>
  <div class="mb-3">
  <label for="#" class="form-label">특이사항</label>
  <textarea class="form-control" id="form" rows="5" placeholder="메이트님께 전달되는 내용입니다." ></textarea>
</div>
  <div class="col-md-7">
    <label for="#" class="form-label">매칭상태</label>
    <input type="text" class="form-control" id="form" placeholder="매칭완료" disabled>
  </div>
</form>
<hr>
<section class="mb-5">
    <div class="card bg-light">
        <div class="card-body">
            <!-- Comment with nested comments-->
            <div class="d-flex mb-4">
                <!-- Parent comment-->
                <div class="flex-shrink-0"><img class="rounded-circle" src="image/mate.jpg" alt="메이트" width="80" height="80"></div>
                <div class="ms-3">
                    <div class="fw-bold">OOO 메이트님</div>
                    안녕하세요 OOO메이트 입니다^^ 의뢰하신 날짜에 찾아뵙겠습니다.
                </div>
            </div>
        </div>
    </div>
</section>
<!-- 뒤로 가기 버튼(기능 추가하시면 됩니다.) -->
  <div class="col text-center">
    <button type="submit" class="btn btn-outline-primary">목록 보기</button>
  </div>
  &nbsp;
</div>
</body>
