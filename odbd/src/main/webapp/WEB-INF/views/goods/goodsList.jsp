<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    %>
<%
request.setCharacterEncoding("UTF-8");
%>
<!doctype html>
<html lang="en" data-bs-theme="auto">
  <head><script src="../assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.115.4">
    <title>상품 목록</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/album/">

    

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
      }
      .bd-mode-toggle {
        z-index: 1500;
      }
    </style>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  </head>
  <body>

<main>

  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
       <p class="fs-1">사료</p>
      </div>
    </div>
  </section>
<hr>
  <div class="album py-5 bg-body-tertiary">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <div class="col">
          <div class="card shadow-sm">
           <img src= "#" alt="dogfood" width="100%" height="320">
            <div class="card-body">
              <p class="fs-4">OOO 사료</p>
              <div class="d-flex justify-content-between align-items-center">
                <p class="fs-5">00,000원</p>
          <button type="button" class="btn btn-outline-primary">쿠폰 사용 가능</button>
              </div>
            </div>
          </div>
        </div>
         <div class="col">
          <div class="card shadow-sm">
           <img src="#" alt="dogfood" width="100%" height="320">
            <div class="card-body">
              <p class="fs-4">OOO 사료</p>
              <div class="d-flex justify-content-between align-items-center">
                <p class="fs-5">00,000원</p>
          <button type="button" class="btn btn-outline-primary">쿠폰 사용 가능</button>
              </div>
            </div>
          </div>
        </div>
         <div class="col">
          <div class="card shadow-sm">
           <img src="#" alt="dogfood" width="100%" height="320">
            <div class="card-body">
              <p class="fs-4">OOO 사료</p>
              <div class="d-flex justify-content-between align-items-center">
                <p class="fs-5">00,000원</p>
           <button type="button" class="btn btn-outline-primary">쿠폰 사용 가능</button>
              </div>
            </div>
          </div>
        </div>
 <div class="col">
          <div class="card shadow-sm">
           <img src="#" alt="dogfood" width="100%" height="320">
            <div class="card-body">
              <p class="fs-4">OOO 사료</p>
              <div class="d-flex justify-content-between align-items-center">
                <p class="fs-5">00,000원</p>
         <button type="button" class="btn btn-outline-primary">쿠폰 사용 가능</button>
              </div>
            </div>
          </div>
        </div>
         <div class="col">
          <div class="card shadow-sm">
           <img src="#" alt="dogfood" width="100%" height="320">
            <div class="card-body">
              <p class="fs-4">OOO 사료</p>
              <div class="d-flex justify-content-between align-items-center">
                <p class="fs-5">00,000원</p>
                <button type="button" class="btn btn-outline-primary">쿠폰 사용 가능</button>
              </div>
            </div>
          </div>
        </div>
         <div class="col">
          <div class="card shadow-sm">
           <img src="#" alt="dogfood" width="100%" height="320">
            <div class="card-body">
              <p class="fs-4">OOO 사료</p>
              <div class="d-flex justify-content-between align-items-center">
                <p class="fs-5">00,000원</p>
                <button type="button" class="btn btn-outline-primary">쿠폰 사용 가능</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</main>
<hr>
<footer class="text-body-secondary py-5">
  <div class="container">
      <nav aria-label="Page navigation example">
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
</nav>
  </div>
</footer>
    </body>
</html>
