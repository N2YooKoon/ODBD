<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
	<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<c:set var="contextPath" value="${pageContext.request.contextPath}" />
			<link rel="stylesheet" type="text/css" href="/css/main.css">
			<script type="text/javascript">
				var loopSearch = true;
				function keywordSearch() {
					if (loopSearch == false)
						return;
					var value = document.frmSearch.searchWord.value;
					$.ajax({
						type: "get",
						async: true, //false인 경우 동기식으로 처리한다.
						url: "${contextPath}/goods/keywordSearch.do",
						data: { keyword: value },
						success: function (data, textStatus) {
							var jsonInfo = JSON.parse(data);
							displayResult(jsonInfo);
						},
						error: function (data, textStatus) {
							alert("에러가 발생했습니다." + data);
						},
						complete: function (data, textStatus) {
							//alert("작업을완료 했습니다");

						}
					}); //end ajax	
				}

				function displayResult(jsonInfo) {
					var count = jsonInfo.keyword.length;
					if (count > 0) {
						var html = '';
						for (var i in jsonInfo.keyword) {
							html += "<a href=\"javascript:select('" + jsonInfo.keyword[i] + "')\">" + jsonInfo.keyword[i] + "</a><br/>";
						}
						var listView = document.getElementById("suggestList");
						listView.innerHTML = html;
						show('suggest');
					} else {
						hide('suggest');
					}
				}

				function select(selectedKeyword) {
					document.frmSearch.searchWord.value = selectedKeyword;
					loopSearch = false;
					hide('suggest');
				}

				function show(elementId) {
					var element = document.getElementById(elementId);
					if (element) {
						element.style.display = 'block';
					}
				}

				function hide(elementId) {

					var element = document.getElementById(elementId);
					if (element) {
						element.style.display = 'none';
					}
				}

			</script>
			<style type="text/css">
				* {
					margin: 0;
					padding: 0;
				}

				ul li {
					list-style: none;
				}

				a {
					text-decoration: none;
					color: #333;
				}

				#menu {
					clear: both;
					width: auto;
					height: 50px;
					font-weight: bold;
					color: black;
					line-height: 50px;
					text-align: center;
					font-size: 25px;
					margin-left: 100px;
				}

				#menu>ul>li {
					float: left;
					width: 140px;
					position: relative;
				}

				#menu>ul>li>ul {
					width: 130px;
					display: none;
					position: absolute;
					font-size: 14px;
					background: #FFFFFF;
					z-index: 999;
				}

				#menu>ul>li:hover>ul {
					display: block;

				}

				#menu>ul>li>ul>li:hover {
					background: rgb(216, 215, 214);
					transition: ease 1s;
				}
			</style>

			<body>
				<div>
					<div id="head_link">
						<ul>
							<c:choose>
								<c:when test="${isLogOn==true and not empty memberInfo }">
									<li><a href="${contextPath}/member/logout.do">로그아웃</a></li>
									<li><a href="${contextPath}/mypage/myPageMain.do">마이페이지</a></li>
									<li><a href="${contextPath}/cart/myCartList.do">장바구니</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="${contextPath}/member/loginForm.do">로그인</a></li>
									<li><a href="${contextPath}/member/memberForm.do">회원가입</a></li>
								</c:otherwise>
							</c:choose>
							<c:if test="${isLogOn==true and memberInfo.member_id =='admin' }">
								<li class="no_line"><a href="${contextPath}/admin/goods/adminGoodsMain.do">관리자</a></li>
							</c:if>
						</ul>
					</div>

					<div class="main_navi">
						<div id="logo">
							<a href="${contextPath}/main/main.do">
								<img width="500" height="200" alt="오두방댕" src="/image/main_logo.png">
							</a>
						</div>

						<div id="menu" class="headernavi">
							<ul>
								<li><a href="#" class="MENU1">애견용품</a>
									<ul>
										<li><a href="#">사료</a></li>
										<li><a href="#">간식</a></li>
										<li><a href="#">위생/배변</a></li>
										<li><a href="#">미용/목욕</a></li>
										<li><a href="#">의류/스타일</a></li>
										<li><a href="#">장난감</a></li>
									</ul>
								</li>
								<li><a href="#">플레이스</a>
									<ul>
										<li><a href="#">애견동반 식당</a></li>
										<li><a href="#">애견 병원</a></li>
										<li><a href="#">애견 미용샵</a></li>
									</ul>
								</li>
								<li><a href="#">산책메이트</a>
									<ul>
										<li><a href="#">메이트 소개</a></li>
										<li><a href="#">의뢰 목록</a></li>
										<li><a href="#">후기</a></li>
										<li><a href="#">산책로 안내</a></li>
									</ul>
								</li>
								<li><a href="#">이벤트</a>
								</li>
							</ul>
						</div>
					</div>



				</div>



				<br>
				<div id="suggest">
					<div id="suggestList"></div>
				</div>
			</body>

			</html>