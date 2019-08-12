<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="${pageContext.request.contextPath}/resources/images/suhbuway_favicon.ico" rel="shortcut icon" type="image/x-icon"/>
<link rel="StyleSheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.12.4.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.bxslider.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/TweenMax.min.js"></script>
</head>
<body>
<header>
	<div id="header" class="open">
	    <div class="content">
	        <h1 class="logo"><a href="${pageContext.request.contextPath}/">SUBWAY</a></h1>
	        <!-- gnb -->
	        <nav id="gnb">
	            <ul>
	                <li>
	                    <span class="dp1">메뉴소개</span>
	                    <div class="dp2">
	                        <ul>
	                            <li><a href="#;">샌드위치</a></li>
	                            <li><a href="#;">찹샐러드</a></li>
	                            <li><a href="#;">추가토핑</a></li>
	                            <li><a href="#;">사이드ㆍ음료</a></li>
	                        </ul>
	                    </div>
	                </li>
	                <li>
	                	<span class="dp1">주문하기</span>
	                    <div class="dp2">
	                        <ul>
	                            <li><a href="#;">주문하기</a></li>
	                        </ul>
	                    </div>
	                </li>
	                <li>
	                	<span class="dp1">새소식</span>
	                    <div class="dp2">
	                        <ul>
	                            <li><a href="#;">뉴스ㆍ공지사항</a></li>
	                        </ul>
	                    </div>
	                </li>
	                <li>
	                	<span class="dp1">서부웨이</span>
	                    <div class="dp2">
	                        <ul>
	                            <li><a href="#;">매장찾기</a></li>
	                        </ul>
	                    </div>
	                </li>
	                <li>
	                	<span class="dp1">마이페이지</span>
	                    <div class="dp2">
	                        <ul>
	                            <li><a href="#;">주문내역</a></li>
	                            <li><a href="#;">장바구니</a></li>
	                            <li><a href="#;">포인트</a></li>
	                            <li><a href="#;">내정보</a></li>
	                        </ul>
	                    </div> 
	                </li>
	                <!-- 매장관리자 -->
	                <!-- <li>
	                    <a href="#none" class="dp1">마이페이지</a>
	                    <div class="dp2">
	                        <ul>
	                            <li><a href="#;">주문내역</a></li>
	                            <li><a href="#;">회원리스트</a></li>
	                            <li><a href="#;">매출액</a></li>
	                        </ul>
	                    </div>
	                </li> -->
	                <!-- 본사관리자 -->
	                <!-- <li>
	                    <a href="#none" class="dp1">마이페이지</a>
	                    <div class="dp2">
	                        <ul>
	                        	<li><a href="#;">주문내역</a></li>
	                            <li><a href="#;">상품리스트</a></li>
	                            <li><a href="#;">지점별 매출액</a></li>
	                        </ul>
	                    </div>
	                </li> -->
	            </ul>
	        </nav>
	        <!--// gnb -->
	
	        <!-- util menu -->
	        <div class="util_menu">
	            <ul>
	                <li><a href="${pageContext.request.contextPath}/user/login">로그인</a></li>
	                <li><a href="${pageContext.request.contextPath}/user/register">회원가입</a></li>
	            </ul>
	        </div>
	        <!--// util menu -->
	    </div>
	</div>
</header>
<script>
$(document).ready(function(){
	gnb();
	if($('.sub_header').length >0){
		bodyScroll();//body scroll
	}
});

function gnb(){//gnb
	var spd = 0.5,
		eft = Power4.easeOut;
	$('#gnb >ul >li >.dp1').on('mouseenter', function(){
		TweenLite.to($('#header').css('overflow','inherit').addClass('open'),spd,{ease:eft,height:360})
		TweenLite.to($('.dp2'),spd,{ease:eft,top:0,opacity:1})
	})

	$('#gnb').on('mouseleave', function(){
		TweenLite.to($('#header').css('overflow','hidden'),spd,{ease:eft,height:165,onComplete:function(){
			$('#header').removeClass('open')
		}})
		TweenLite.to($('.dp2'),spd,{ease:eft,top:-20,opacity:0})
	})
}

function bodyScroll(){//body scroll
	var header = $('#header');
	var subHeader = $('.sub_header')
	var subLogo = subHeader.find('.logo')
	var subTop = subHeader.find('.top')
	var spd = 0.5;
	var eft = Power3.easeOut;
	var subHeaderTop = subHeader.offset().top

	scrollBarTo();
	$(window).on('scroll touchmove', function(){//window scrollto
		scrollBarTo();
	})

	function scrollBarTo(){
		if ($(window).scrollTop() > subHeaderTop) {
			TweenLite.to(subHeader.css('position','fixed'),0.5,{ease:Power4.easeOut,backgroundColor:'#fff'})
			subHeader.addClass('fixed');
			TweenLite.to(subLogo,spd,{ease:eft,opacity:1})
			TweenLite.to(subTop,spd,{ease:eft,opacity:1})
		} else{
			TweenLite.to(subHeader.css('position','absolute'),0.5,{ease:Power4.easeOut,backgroundColor:'transparent'})
			subHeader.removeClass('fixed');
			TweenLite.to(subLogo,spd,{ease:eft,opacity:0})
			TweenLite.to(subTop,spd,{ease:eft,opacity:0})
		}
	}

	subTop.on('click', function(){//top button
		$('html,body').stop(true,false).animate({
			scrollTop:0
		},1000,'easeInOutQuint')
		return false;
	})
}
</script>


