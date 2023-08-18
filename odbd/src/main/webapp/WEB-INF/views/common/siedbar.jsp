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
    <title>사이드 바</title>

    <style type="text/css">
        /* 전체영역에서 여백을 없애줌 */
        * {
            margin: 0;
            padding: 0;
        }

        /* ul li태그에 리스트 스타일을 없앰 */
        ul li {
            list-style: none;
        }

        /* a태그에 텍스트 밑줄을 없애고 색상을 #333 */
        a {
            text-decoration: none;
            color: #000000;
        }

        /* 글자크기를 16px 맑은 고딕 굵게하고 width넓이 700, 높이 50만큼 배경색은 #ccc, 글자색은 검정색, 라인높이50px
            menu박스 가운데정렬, 글자가운데 정렬 */
        #menu {
            font: bold 16px "malgun gothic";
            width: 700px;
            height: 50px;
            color: black;
            line-height: 50px;
            margin: 0 auto;
            text-align: center;
        }

        /* menu태그 자식의 ul의 자식 li를 왼쪽정렬과 넓이 140설정 */
        #menu>ul>li {
            background: #FFCD29;
            width: 140px;
            position: relative;
        }

        #menu>ul>li>ul {
            width: 130px;
            display: none;
            position: relative;
            font-size: 14px;
            background: #b4b4b4;
        }

        #menu>ul>li:hover>ul {
            display: inline-block
        }

        #menu>ul>li>ul>li:hover {
            background: orange;
            transition: ease 1s;
        }
    </style>
</head>
<body>
    <div id="menu">

        <ul>
            <li><a href="#">사료</a>
                <ul>
                    <li><a href="#">SUB_MENU</a></li>
                    <li><a href="#">SUB_MENU2</a></li>
                    <li><a href="#">SUB_MENU3</a></li>
                </ul>
            </li>
            <li><a href="#">간식</a>
                <ul>
                    <li><a href="#">SUB_MENU</a></li>
                    <li><a href="#">SUB_MENU2</a></li>
                    <li><a href="#">SUB_MENU3</a></li>
                </ul>
            </li>
            <li><a href="#">위생/배변</a>
                <ul>
                    <li><a href="#">SUB_MENU</a></li>
                    <li><a href="#">SUB_MENU2</a></li>
                    <li><a href="#">SUB_MENU3</a></li>
                </ul>
            </li>
            <li><a href="#">미용/목욕</a>
                <ul>
                    <li><a href="#">SUB_MENU</a></li>
                    <li><a href="#">SUB_MENU2</a></li>
                    <li><a href="#">SUB_MENU3</a></li>
                </ul>
            </li>
            <li><a href="#">의류/악세사리</a>
                <ul>
                    <li><a href="#">SUB_MENU</a></li>
                    <li><a href="#">SUB_MENU2</a></li>
                    <li><a href="#">SUB_MENU3</a></li>
                </ul>
            </li>
            <li><a href="#">장난감/훈련</a>
                <ul>
                    <li><a href="#">SUB_MENU</a></li>
                    <li><a href="#">SUB_MENU2</a></li>
                    <li><a href="#">SUB_MENU3</a></li>
                </ul>
            </li>
        </ul>
    </div>

    <div style="background-color: aqua;">
    </div>

</body>
</html>