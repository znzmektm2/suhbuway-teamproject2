<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script>
	function logout() {
		document.getElementById("logoutForm").submit();
	}
</script>
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
	            	<!-- 비로그인 -->
	            	<c:if test="${sessionScope.kakaoToken==null}">
	            	<sec:authorize access="isAnonymous()">
						<li><a href="${pageContext.request.contextPath}/user/login">로그인</a></li>
						<li><a href="${pageContext.request.contextPath}/user/register">회원가입</a></li>
					</sec:authorize>
					</c:if>
					<!-- 일반 로그인 -->
					<sec:authorize access="isAuthenticated()">
							<sec:authorize access="hasRole('ROLE_USER')">
								<li><sec:authentication property="principal.userId" />님 환영합니다.</li>
							</sec:authorize>
							<sec:authorize access="hasRole('ROLE_ADMIN')">
								<li>admin님 환영합니다.</li>
								<li><a href="${pageContext.request.contextPath}/admin/main">관리자 페이지</a></li>
							</sec:authorize>
							<li><a href="javascript:logout();">로그아웃</a></li>
					</sec:authorize>
					
					<!-- kakao 로그인 -->
					<c:if test="${sessionScope.kakaoToken!=null}">
						<li>${sessionScope.userId}님 환영합니다.</li>
						<li><a href="${pageContext.request.contextPath}/kakaoLogout">로그아웃</a></li>
					</c:if>
					
	            </ul>
	        </div>
	        <!--// util menu -->
	    </div>
	</div>
	
	<!-- logout위한 form -->
	<form id="logoutForm" 
				action="${pageContext.request.contextPath}/user/logout"
				method="post" style="display: none">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>
	
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


