<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    <title>견종정보 입력</title>
    <!-- 제이쿼리 CDN -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
        $('document').ready(function () {
            var area0 = ["강아지 크기 선택", "소형견", "중형견", "대형견"];
            var area1 = ["미니핀", "요크셔테리어"];
            var area2 = ["보더콜리", "진도견"];
            var area3 = ["말라뮤트", "레브라도 리트리버"];

            // 강아지 크기 박스 초기화

        $("select[name^=sido]").each(function () {
            $selsido = $(this);
            $.each(eval(area0), function () {
                $selsido.append("<option value='" + this + "'>" + this + "</option>");
            });
            $selsido.next().append("<option value=''>강아지 종 선택</option>");
        });

            // 강아지 크기 선택시 강아지 종 선택

        $("select[name^=sido]").change(function () {
            var area = "area" + $("option", $(this)).index($("option:selected", $(this))); // 선택지역의 구군 Array
            var $gugun = $(this).next(); // 선택영역 강아지 종 객체
            $("option", $gugun).remove(); //강아지 종 초기화

            if (area == "area0")
                $gugun.append("<option value=''>강아지 종 선택</option>");
            else {
                $.each(eval(area), function () {
                    $gugun.append("<option value='" + this + "'>" + this + "</option>");
                });
            }
        });
    });

    //체크박스 펑션
    function toggleCheckbox(checkbox) {
    const otherCheckbox = checkbox.id === 'checkbox1' ? document.getElementById('checkbox2') : document.getElementById('checkbox1');
    otherCheckbox.checked = !checkbox.checked;
    }

    </script>
    <style>      
        .textbox1{
            width: 150px;
            height: 30px;
            border: 1px solid black;
            text-align: center;
            font-size: 12px;
        }
    </style>
</head>
<body>
<form>
    <h2 align="center">견종정보 입력</h2>
        <table border=0 align="center">
            <tr>
                <td>
                    <input type="hidden" name="originalFileName" value="${article.imageFileName}"/>
                    <img src="${contextPath}/download.do?imageFileName=${article.imageFileName}&articleNO=${article.articleNO}" id=preview/><br>
                </td>
            </tr>

            <tr>
                <td>
                    <input type="file" name="imageFileName" id="i_imageFilename" disabled onchange="readURL(this);"/>
                </td>
            </tr>

            <tr>
                <td>
                    <input type="text" placeholder="강아지 이름">
                </td>
            </tr>

            <tr>
                <td>
                    <select name="sido1" id="sido1"></select>
                    <select name="gugun1" id="gugun1"></select>
                    
                </td>
            </tr>

            <tr>
                <td>
                    태어난 날짜
                    <input type="date">
                </td>
            </tr>
            
            <tr>
                <td>
                    <input type="checkbox" id="checkbox1" onchange="toggleCheckbox(this)">
                    <label for="checkbox1">남자</label>
            
                    <input type="checkbox" id="checkbox2" onchange="toggleCheckbox(this)">
                    <label for="checkbox2">여자</label>
                </td>
            </tr>
        </table>

        <div align="center" style="padding: 15px;">
            <input type="submit" value="가입하기">
        </div>
        <div align="center">
            <input type="button" value="나중에 하고 가입하기">
        </div>
</form>
</body>
</html>