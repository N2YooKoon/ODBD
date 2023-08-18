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
    <title>아이디 찾기</title>

    <style>
        .container {
        width: 550px;
        margin: 20px auto;
        }

        .tab_title li {
        list-style: none;
        float: left;
        width: 150px;
        padding: 10px 15px;
        cursor: pointer;
        text-align: center;
        border: 1px solid #bebebe;
        }

        .tab_title li.on {
        background-color: #ffb715;
        font-weight: bold;
        }

        .tab_cont {
        clear: both;
        border: 1px solid #000000;
        height: 400px;
        background-color: #ffffff;
        }

        .tab_cont div {
        display: none;
        text-align: center;
        }

        .tab_cont div.on {
        display: block;
        }
    </style>

    <!-- 메뉴탭 제이쿼리 -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
    $(document).ready(function() {
        $(".tab_title li").click(function() {
          var idx = $(this).index();
          $(".tab_title li").removeClass("on");
          $(".tab_title li").eq(idx).addClass("on");
          $(".tab_cont > div").hide();
          $(".tab_cont > div").eq(idx).show();
        })
      });
    </script>
</head>

<body>

    <div class="container">
        <ul class="tab_title">
          <li class="on">아이디 찾기</li>
          <li>비밀번호 찾기</li>
        </ul>
        <div class="tab_cont">
          <div class="on">
            <h2 align="center">아이디 찾기</h2>
            <h4 align="center">아이디는 이름,이메일을 통해 찾으실 수 있습니다.</h4>
                <p><input type="text" style="height: 40px;" placeholder="이름"></p>
                <p><input type="text" style="height: 40px;" placeholder="이메일"></p>
                <p><input type="submit" value="찾기"></p>
          </div>
          <div>
            <h2 align="center">비밀번호 찾기</h2>
            <h4 align="center">비밀번호는 이름, 가입한 아이디, 이메일을 통해 찾으실 수 있습니다.</h4>
                <p><input type="text" style="height: 40px;" placeholder="아이디"></p>
                <p><input type="text" style="height: 40px;" placeholder="이름"></p>
                <p><input type="text" style="height: 40px;" placeholder="이메일"></p>
                <p><input type="submit" value="찾기"></p>
          </div>
          <div>
            tab3_content
          </div>
        </div>
      </div>

</body>
</html>