<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
			<c:set var="contextPath" value="${pageContext.request.contextPath}" />
			<% request.setCharacterEncoding("UTF-8"); %>

				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
					integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
					crossorigin="anonymous">
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
					integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
					crossorigin="anonymous"></script>
				<link rel="stylesheet" type="text/css" href="/css/main.css">

				<div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="/image/main_banner01.png" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/image/main_banner02.png" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/image/main_banner03.png" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/image/main_banner04.png" class="d-block w-100" alt="...">
						</div>
					</div>
					<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
						data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
						data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
				<div class="main_layout">
					<div class="main_goods">
						<c:set var="goods_count" value="0" />
						<h3>이 달의 추천상품</h3>
						<c:forEach var="item" items="${goodsMap.bestseller }">
							<c:set var="goods_count" value="${goods_count+1 }" />
							<div class="goods">
								<a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">
									<img class="link" src="/image/1px.gif">
								</a>
								<!--<img width="121" height="154"
									src="${contextPath}/thumbnails.do?goods_id=${item.goods_id}&fileName=${item.goods_fileName}">
								-->
								<img width="121" height="154" src="/image/feed01.png">
								<div class="title">${item.goods_title }</div>
								<div class="price">
									<fmt:formatNumber value="${item.goods_price}" type="number" var="goods_price" />
									${goods_price}원
								</div>
							</div>
							<c:if test="${goods_count==15}">
								<div class="goods">
									<font size=20> <a href="#">more</a></font>
								</div>
							</c:if>
						</c:forEach>
					</div>
					<div class="clear"></div>

					<div class="main_goods">
						<c:set var="goods_count" value="0" />
						<h3>할인 상품</h3>
						<c:forEach var="item" items="${goodsMap.newbook }">
							<c:set var="goods_count" value="${goods_count+1 }" />
							<div class="goods">
								<a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">
									<img class="link" src="/image/1px.gif">
								</a>
								<img width="121" height="154"
									src="${contextPath}/thumbnails.do?goods_id=${item.goods_id}&fileName=${item.goods_fileName}">
								<div class="title">${item.goods_title }</div>
								<div class="price">상품
									<fmt:formatNumber value="${item.goods_price}" type="number" var="goods_price" />
									${goods_price}원
								</div>
							</div>
							<c:if test="${goods_count==15}">
								<div class="goods">
									<font size=20> <a href="#">more</a></font>
								</div>
							</c:if>
						</c:forEach>
					</div>

					<div class="clear"></div>
					<div id="ad_sub_banner">
						<img width="1000" height="120" src="/image/sub_banner.jpg">
					</div>


					<div class="main_goods">
						<c:set var="goods_count" value="0" />
						<h3>간식 상품</h3>
						<c:forEach var="item" items="${goodsMap.steadyseller }">
							<c:set var="goods_count" value="${goods_count+1 }" />
							<div class="goods">
								<a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">
									<img class="link" src="/image/1px.gif">
								</a>
								<img width="121" height="154"
									src="${contextPath}/thumbnails.do?goods_id=${item.goods_id}&fileName=${item.goods_fileName}">
								<div class="title">${item.goods_title }</div>
								<div class="price">
									<fmt:formatNumber value="${item.goods_price}" type="number" var="goods_price" />
									${goods_price}원
								</div>
							</div>
							<c:if test="${goods_count==15   }">
								<div class="goods">
									<font size=20> <a href="#">more</a></font>
								</div>
							</c:if>
						</c:forEach>
					</div>
					<div class="clear"></div>
					<div class="main_goods">
						<c:set var="goods_count" value="0" />
						<h3>장난감 상품</h3>
						<c:forEach var="item" items="${goodsMap.steadyseller }">
							<c:set var="goods_count" value="${goods_count+1 }" />
							<div class="goods">
								<a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">
									<img class="link" src="/image/1px.gif">
								</a>
								<img width="121" height="154"
									src="${contextPath}/thumbnails.do?goods_id=${item.goods_id}&fileName=${item.goods_fileName}">
								<div class="title">${item.goods_title }</div>
								<div class="price">
									<fmt:formatNumber value="${item.goods_price}" type="number" var="goods_price" />
									${goods_price}원
								</div>
							</div>
							<c:if test="${goods_count==15   }">
								<div class="goods">
									<font size=20> <a href="#">more</a></font>
								</div>
							</c:if>
						</c:forEach>
					</div>
				</div>