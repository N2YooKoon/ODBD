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
    <title>goods_review</title>
    <style>
        .textbox1{
            width: 150px;
            height: 30px;
            border: 1px solid black;
            text-align: center;
            font-size: 12px;
        }
        .textbox2{
            width: 300px;
            height: 30px;
            border: 1px solid black;
            text-align: center;
            font-size: 12px;
            margin-left: 50px;
        }
        .textbox3{
            width: 300px;
            height: 300px;
            border: 1px solid black;
            text-align: center;
            font-size: 12px;
            margin-left: 50px;
        }

        #myform fieldset{
        display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
        direction: rtl; /* 이모지 순서 반전 */
        border: 0; /* 필드셋 테두리 제거 */
        }
        #myform input[type=radio]{
            display: none; /* 라디오박스 감춤 */
        }
        #myform label{
            font-size: 3em; /* 이모지 크기 */
            color: transparent; /* 기존 이모지 컬러 제거 */
            text-shadow: 0 0 0 #a1a1a1; /* 새 이모지 색상 부여 */
        }
        #myform label:hover{
            text-shadow: 0 0 0 #FFCD29; /* 마우스 호버 */
        }
        #myform label:hover ~ label{
            text-shadow: 0 0 0 #FFCD29; /* 마우스 호버 뒤에오는 이모지들 */
        }
        #myform fieldset legend{
            text-align: left;
        }
        #myform input[type=radio]:checked ~ label{
            text-shadow: 0 0 0 #FFCD29; /* 마우스 클릭 체크 */
        }
</style>
<body>
    <form>
        <h2 align="center">상품 후기 등록</h2>
        <hr color="black" size="2">
        <table align="center">
            <tr>
                <td class="textbox1">작성자</td>
                <td><input type="text" class="textbox2" name=name size=20></td>
            </tr>

            <tr>
                <td class="textbox1">제품명</td>
                <td><input type="text" class="textbox2" name=title size=60></td>
            </tr>

            <tr>
                <td class="textbox1">제목</td>
                <td><input type="text" class="textbox2" name=title size=60></td>
            </tr>

            <tr>
                <td class="textbox1">작성일자</td>
                <td><input type="text" class="textbox2" name=title size=60></td>
            </tr>

            <tr>
                <td class="textbox1">별점</td>
                <td class="textbox2">
                    <div name="myform" id="myform" method="post" action="./save">
                        <fieldset>
                            <input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
                            <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
                            <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
                            <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
                            <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
                        </fieldset>
                    </div>
            
            </tr>

            <tr>
                <td class="textbox1">내용</td>
                <td><textarea class="textbox3" name=content></textarea></td>
            </tr>

            <tr>
                <td class="textbox1">첨부파일</td>
                <td>
                    <input type="button" value="이미지 첨부하기">
                </td>
                <td>
                    <p class="textbox2"></p>
                </td>
              </tr>
        </table>

        <div style=padding:20px align="center">
            <input type="submit" value="작성">
        </div>
    </form>
</body>
</html>