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
	<div id="header1" class="open">
	    <div class="content">
	        <h1 class="logo"><a href="${pageContext.request.contextPath}/">SUBWAY</a></h1>
	        <!-- gnb -->
	        <nav id="gnb">
	            <ul>
	                <li>
	                    <span class="dp1">메뉴소개</span>
	                    <div class="dp2">
	                        <ul>
	                            <li><a href="${pageContext.request.contextPath}/menu/sandwich">샌드위치</a></li>
	                            <li><a href="${pageContext.request.contextPath}/menu/salad">찹샐러드</a></li>
	                            <li><a href="${pageContext.request.contextPath}/menu/topping">추가토핑</a></li>
	                            <li><a href="${pageContext.request.contextPath}/menu/side">사이드ㆍ음료</a></li>
	                        </ul>
	                    </div>
	                </li>
	                <li>
	                	<span class="dp1">주문하기</span>
	                    <div class="dp2">
	                        <ul>
	                            <li><a href="${pageContext.request.contextPath}/order">주문하기</a></li>
	                        </ul>
	                    </div>
	                </li>
	                <li>
	                	<span class="dp1">새소식</span>
	                    <div class="dp2">
	                        <ul>
	                            <li><a href="${pageContext.request.contextPath}/board/newsList">뉴스ㆍ공지사항</a></li>
	                        </ul>
	                    </div>
	                </li>
	                <li>
	                	<span class="dp1">서부웨이</span>
	                    <div class="dp2">
	                        <ul>
	                            <li><a href="${pageContext.request.contextPath}/storeSearch">매장찾기</a></li>
	                        </ul>
	                    </div>
	                </li>
	                <li>
	                	<span class="dp1">마이페이지</span>
	                    <div class="dp2">
	                        <ul>
	                            <li><a href="${pageContext.request.contextPath}/myPage/orders">주문내역</a></li>
	                            <li><a href="${pageContext.request.contextPath}/myPage/cart">장바구니</a></li>
	                            <li><a href="${pageContext.request.contextPath}/myPage/qna">문의사항</a></li>
	                            <li><a href="${pageContext.request.contextPath}/myPage/point">포인트</a></li>
	                            <li><a href="${pageContext.request.contextPath}/myPage/info">내정보</a></li>
	                        </ul>
	                    </div> 
	                </li>
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
		TweenLite.to($('#header1').css('overflow','inherit').addClass('open'),spd,{ease:eft,height:380})
		TweenLite.to($('.dp2'),spd,{ease:eft,top:0,opacity:1})
	})

	$('#gnb').on('mouseleave', function(){
		TweenLite.to($('#header1').css('overflow','hidden'),spd,{ease:eft,height:165,onComplete:function(){
			$('#header1').removeClass('open')
		}})
		TweenLite.to($('.dp2'),spd,{ease:eft,top:-20,opacity:0})
	})
	
	var url = this.location.href.split("/");
	var title = url[url.length-1];
	var topText = "";
	var visual = title;
	var gnbIndex = 0;
	var subIndex = 0;
	if(title == 'sandwich'){
		gnbIndex = 0;
		subIndex = 0;
		topText = "전세계 넘버원 브랜드 Subway!<br>50년 전통의 세계 최고의 샌드위치를 맛보세요!";
	} else if(title == 'salad'){
		subIndex = 1;
		topText = "양은 더 많이! 칼로리는 더 적게!<br>신선한 야채와 다양한 소스로 가볍게 찹샐러드를 즐겨보세요!";
	} else if(title == 'topping'){
		subIndex = 2;
		topText = "다양한 추가토핑을 추가해<br>나만의 써브웨이 레시피를 만들어보세요.";
	} else if(title == 'side'){
		subIndex = 3;
		visual = 'sides_drink';
		topText = "바삭하고 쫀득한 달콤한 쿠키와 간편하고 든든한 수프,<br>커피와 음료까지 함께 즐길 수 있습니다.";
	} else if(title == 'order'){
		gnbIndex = 1;
	} else if(title == 'newsList'){
		gnbIndex = 2;
	} else if(title == 'storeSearch'){
		gnbIndex = 3;
	} else if(title == 'orders'){
		subIndex = 0;
		gnbIndex = 4;
	} else if(title == 'cart'){
		subIndex = 1;
		gnbIndex = 4;
	} else if(title == 'qna'){
		subIndex = 2;
		gnbIndex = 4;
	} else if(title == 'point'){
		subIndex = 3;
		gnbIndex = 4;
	} else if(title == 'info'){
		subIndex = 4;
		gnbIndex = 4;
	}
	$('.topTitle').html(title);
	$('.visual').addClass(visual); 
	$('.topText').html(topText);
	$('#container').addClass(title+"Container");
	$('#gnb>ul>li').eq(gnbIndex).find('.dp2>ul>li').eq(subIndex).find('a').addClass('active');
	$('.sub_loc>ul>li').eq(subIndex).addClass("active");
	$('.sub>ul>li').removeClass("active").eq(subIndex).find('a').addClass("active");
	console.log(subIndex);
}



function bodyScroll(){//body scroll
	var header = $('#header1');
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


