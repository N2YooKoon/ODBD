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
<>
    <meta charset="UTF-8">
    <title>goods_inquiry</title>
        <script language="javascript">
        function /*팝업명()*/ { window.open("08_2_popup.html", "a", "width=400, height=300, left=100, top=50"); }
        </script>
        
        <!--부트스트랩 CDN-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" 
        rel="stylesheet" 
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" 
        crossorigin="anonymous">

</head>
<body>
    <h3 align="center">결제 확인</h3>
    <div>
    <table align="center">
        <tr>
            <td class="textbox1">주문자명</td>
            <td><input type="text" class="form-control"></input>
            </td>
        </tr>
        <tr>
            <td class="textbox1">휴대폰 번호</td>
            <td><input type="text" class="form-control" name=name size=20></td>
        </tr>
        <tr>
            <td class="textbox1">주소</td>
            <td><input type="text" class="form-control" name=name size=20></td>
        </tr>
        <tr>
            <td class="textbox1">배송방법</td>
            <td><input type="text" class="form-control" name=name size=20></td>
        </tr>
        <tr>
            <td class="textbox1">배송요청사항</td>
            <td><input type="text" class="form-control" name=name size=20></td>
        </tr>
        <tr>
            <td class="textbox1">주문 상품 수량</td>
            <td><input type="text" class="form-control" name=name size=20></td>
        </tr>
        <tr>
            <td class="textbox1">주문상품금액</td>
            <td><input type="text" class="form-control" name=name size=20></td>
        </tr>
    </table>
    </div>
    <div align="center">
        <input type="submit" class="btn btn-primary" value="최종결제하기">
    </div>
</body>
</html>