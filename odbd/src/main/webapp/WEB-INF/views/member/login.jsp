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
    <title>로그인 페이지</title>
    <style>
        .alibox{
            padding-bottom: 30px;
        }

        .aliblock{
            display: inline-block;
        }
    </style>
</head>
<body>
    <h2 align="center">로그인</h2>
        <div align="center">
            <div class="alibox">
                <input type="text" placeholder="아이디">
            </div>
            <div class="alibox">
                <input type="password" placeholder="패스워드">
                <input type="submit" value="login">
            </div>
        </div>
    <div align="center">
        <a href="#">아이디 찾기</a>
        <a href="#">비밀번호 찾기</a>
        <a href="#">회원가입</a>
    </div>

    <div align="center" style="padding-top:20px;">
        <input type="button" value="카카오 API 들어갈 자리">
    </div>

</body>
</html>