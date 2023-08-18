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
	<title>admin_seller_list</title>
</head>
<body>
    <section>
    <table border="1" align="center" width="80%">
		<tr align="center" bgcolor="#c7c7c7">
			<td><b>번호</b></td>
			<td><b>아이디</b></td>
			<td><b>상호명</b></td>
			<td><b>사업자 등록번호</b></td>
			<td><b>사업자등록증 이미지</b></td>
            <td><b>휴대폰번호</b></td>
			<td><b>반려동물 이름</b></td>
            <td><b>이메일</b></td>
			<td><b>우편번호</b></td>
            <td><b>주소</b></td>
            <td><b>대표이미지</b></td>
            <td><b>회원가입 날짜</b></td>
            <td><b>수정</b></td>
            <td><b>회원 삭제</b></td>
            <td><b>승인상태</b></td>
		</tr>
	<c:forEach var="member" items="${membersList}">
		<tr align="center">
			<td>${가져올 데이터}</td>
			<td>${가져올 데이터}</td>
            <td>${가져올 데이터}</td>
            <td>${가져올 데이터}</td>
            <td>${가져올 데이터}</td>
            <td>${가져올 데이터}</td>
            <td>${가져올 데이터}</td>
            <td>${가져올 데이터}</td>
            <td>${가져올 데이터}</td>
            <td>${가져올 데이터}</td>
            <td>${가져올 데이터}</td>
            <td>${가져올 데이터}</td>
            <td>${mod링크}</td>
            <td>${삭제구현}</td>
            <td>
                <select>
                    <option value="">승인대기</option>
                    <option value="">승인</option>
                </select>
            </td>
		</tr>
	</c:forEach>
	</table>
    <div>페이징 처리 삽입할곳</div>
</section>

</body>
</html>