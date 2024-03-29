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
	<meta charset="utf-8">
	<title>회원가입 분기 페이지</title>
    <style>
        .box1 {
            position: relative;
            height: 150px;
            background: #FFCD29;
            border: 1px solid #d5d5d5;
            border-radius: 4px;
            display: inline-flex;
            align-items: center;
            padding: 0 12px;
            font-size: 14px;
            font-weight: 500;
            line-height: 1.5;
            cursor: pointer;
            box-sizing: border-box;
            margin: 30px;
            margin-top: 50px;
            font-weight: bold;
        }
    
        .box2 {
            width: 150px;
            height: 30px;
            font-size: 10px;
        }
    </style>
</head>
<body>
    <h1 align="center">회원가입</h1>
    <hr align="center" style="border: solid 2px black;">

    <div align="center">
        <input type="button" class="box1" value="일반회원 가입하기" 
        onclick="location.href='${contextPath}/member/join_user_member'">
        <input type="button" class="box1" value="사업자 회원 가입하기"
        onclick="location.href='${contextPath}/member/join_seller_member'">
    </div>
</body>
</html>