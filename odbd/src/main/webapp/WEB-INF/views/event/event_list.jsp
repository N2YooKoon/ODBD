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
      <title>event_list</title>
      <meta charset="utf-8">
      <link rel="stylesheet" href="shopcss.css">
      <link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
        <style>
        .navbar{
            height: 60px;
            padding-left: 30px;
            padding-right: 30px;
        
        }
        
        .hero-header{
            height: 450px;
            background-image: url("https://bakey-api.codeit.kr/files/629/images/hero_header.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
            }
              
        .navbar #logo{
            line-height: 60px;
        }
        
        .navbar img{
            vertical-align: top;
            border: blanchedalmond 5px solid;
        }
        
        .navbar #menu{
            float: right;
            list-style-type: none;
            padding: 0;
            margin: 0;
        }
        
        .navbar #menu li{
            float: left;
            margin-left: 50px;
            line-height: 60px;
        }
        
        .navbar #menu li a{
            color: #545454;
            font-size: 13px;
            text-decoration: none;
        }
        .product-list{
            width: 735px;
            margin-left: auto;
            margin-right: auto;
        }
        .products h3{
            font-size: 24px;
            color: #545454;
            margin-top:60px;
            margin-bottom: 60px;
            text-align: center;
        }
        
        .product{
            display: block;
            width: 225px;
            text-align: center;
            text-decoration:none;
            color: black;
            float:left;
            margin-left: 10px;
            margin-right: 10px;
            margin-bottom: 30px;
        }
        
        .product-name{
            margin-top: 20px;
            margin-bottom: 4px;
        }
        
        .clearfix{
            clear: both;
        }
        .footer{
            text-align: center;
            margin-top: 40px;
            margin-bottom: 40px;
        }
        
        .footer a{
            margin-left: 10px;
            margin-right: 10px;
            text-decoration:none;
        }
    </style>
    </head>
    
    <body>
        <div class="products">
            <h3>이벤트 게시판</h3>
    
            <div class="product-list">
                <a href="#" class="product">
                    <img src="#" width="225">
                    <div class="product-name">
                        이벤트 게시물1
                    </div>
                </a>
                
    
                
                <a href="#" class="product">
                    <img src="#" width="225">
                    <div class="product-name">
                        이벤트 게시물2
                    </div>
                </a>
                
    
                
                <a href="#" class="product">
                    <img src="#" width="225">
                    <div class="product-name">
                        이벤트 게시물3
                    </div>
                </a>
                
    
                
                <a href="#" class="product">
                    <img src="#" width="225">
                    <div class="product-name">
                        이벤트 게시물4
                    </div>
                </a>
                
    
                
                <a href="#" class="product">
                    <img src="#" width="225">
                    <div class="product-name">
                        이벤트 게시물5
                    </div>
                </a>
                
    
                
                <a href="#" class="product">
                    <img src="#" width="225">
                    <div class="product-name">
                        이벤트 게시물6
                    </div>
                </a>
                
                <div class="clearfix"></div>
            </div>
    
            <div class="footer">
                <a href="http://faceboo.com">
                    <img src="https://bakey-api.codeit.kr/files/629/images/facebook.png" height="20">
                </a>
                <a href="http://faceboo.com">
                    <img src="https://bakey-api.codeit.kr/files/629/images/instagram.png" height="20">
                </a>
                <a href="http://faceboo.com">
                    <img src="https://bakey-api.codeit.kr/files/629/images/twitter.png" height="20">
                </a>
            </div>
        </div>
    </body>
    </html>