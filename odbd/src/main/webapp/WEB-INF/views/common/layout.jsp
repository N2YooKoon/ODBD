<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
	<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<c:set var="contextPath" value="${pageContext.request.contextPath}" />
			<% request.setCharacterEncoding("utf-8"); %>

				<head>
					<meta charset="utf-8">
					<meta name="viewport" content="width=device-width">
					<link href="/css/main.css" rel="stylesheet" type="text/css" media="screen">
					<link href="/css/basic-jquery-slider.css" rel="stylesheet" type="text/css" media="screen">
					<script src="/jquery/jquery-1.6.2.min.js" type="text/javascript"></script>
					<script src="/jquery/jquery.easing.1.3.js" type="text/javascript"></script>
					<script src="/jquery/stickysidebar.jquery.js" type="text/javascript"></script>
					<script src="/jquery/basic-jquery-slider.js" type="text/javascript"></script>
					<script src="/jquery/tabs.js" type="text/javascript"></script>
					<script src="/jquery/carousel.js" type="text/javascript"></script>
					<script>
						// 슬라이드 
						$(document).ready(function () {
							$('#ad_main_banner').bjqs({
								'width': 1000,
								'height': 250,
								'showMarkers': true,
								'showControls': false,
								'centerMarkers': false
							});
						});
						// 스티키 		
						$(function () {
							$("#sticky").stickySidebar({
								timer: 100,
								easing: "easeInBounce"
							});
						});
					</script>
					<title>
						<tiles:insertAttribute name="title" />
					</title>

				</head>

				<body>
					<div id="outer_wrap">
						<div id="wrap">
							<header>
								<tiles:insertAttribute name="header" />
							</header>
							<div class="clear"></div>

							<article>
								<tiles:insertAttribute name="body" />
							</article>
							<div class="clear"></div>
							<footer>
								<tiles:insertAttribute name="footer" />
							</footer>
						</div>
					</div>
				</body>