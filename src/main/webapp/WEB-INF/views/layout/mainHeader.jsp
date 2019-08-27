<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<script>
	function logout() {
		document.getElementById("logoutForm").submit();
	}
</script>
<header>
	<div id="header1" class="open">
		<div class="content">
			<h1 class="logo">
				<a href="${pageContext.request.contextPath}/">SUBWAY</a>
			</h1>
			<!-- gnb -->
			<nav id="gnb">
				<ul>
					<li><span class="dp1">메뉴소개</span>
						<div class="dp2">
							<ul>
								<li><a href="${pageContext.request.contextPath}/menu/sandwich">샌드위치</a></li>
								<li><a href="${pageContext.request.contextPath}/menu/salad">찹샐러드</a></li>
								<li><a href="${pageContext.request.contextPath}/menu/topping">추가토핑</a></li>
								<li><a href="${pageContext.request.contextPath}/menu/side">사이드ㆍ음료</a></li>
							</ul>
						</div></li>
					<li><span class="dp1">주문하기</span>
						<div class="dp2">
							<ul>
								<li><a href="${pageContext.request.contextPath}/order">주문하기</a></li>
							</ul>
						</div></li>
					<li><span class="dp1">새소식</span>
						<div class="dp2">
							<ul>
								<li><a href="${pageContext.request.contextPath}/board/newsList">뉴스ㆍ공지사항</a></li>
								<li><a href="${pageContext.request.contextPath}/board/complainList">문의사항</a></li>
							</ul>
						</div></li>
					<li><span class="dp1">서부웨이</span>
						<div class="dp2">
							<ul>
								<li><a href="${pageContext.request.contextPath}/storeSearch">매장찾기</a></li>
							</ul>
						</div></li>
					<li><span class="dp1">마이페이지</span>
						<div class="dp2">
							<ul>
								<li><a href="${pageContext.request.contextPath}/myPage/orders">주문내역</a></li>
								<li><a href="${pageContext.request.contextPath}/myPage/cart">장바구니</a></li>
								<li><a href="${pageContext.request.contextPath}/myPage/point">포인트</a></li>
								<li><a href="${pageContext.request.contextPath}/myPage/info">내정보</a></li>
							</ul>
						</div></li>
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
						<li>${sessionScope.userId}님환영합니다.</li>
						<li><a href="${pageContext.request.contextPath}/kakaoLogout">로그아웃</a></li>
					</c:if>

				</ul>
			</div>
			<!--// util menu -->
		</div>
	</div>

	<!-- logout위한 form -->
	<form id="logoutForm" action="${pageContext.request.contextPath}/user/logout" method="post"
		style="display: none">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>

</header>
<script>
	$(document).ready(function() {
		gnb();
		menuActive();
		if ($('.sub_header').length > 0) {
			bodyScroll();//body scroll
		}
	});

	function gnb() {//gnb
		var spd = 0.5, eft = Power4.easeOut;
		$('#gnb >ul >li >.dp1').on(
				'mouseenter',
				function() {
					TweenLite.to($('#header1').css('overflow', 'inherit')
							.addClass('open'), spd, {
						ease : eft,
						height : 380
					})
					TweenLite.to($('.dp2'), spd, {
						ease : eft,
						top : 0,
						opacity : 1
					})
				})

		$('#gnb').on('mouseleave', function() {
			TweenLite.to($('#header1').css('overflow', 'hidden'), spd, {
				ease : eft,
				height : 165,
				onComplete : function() {
					$('#header1').removeClass('open')
				}
			})
			TweenLite.to($('.dp2'), spd, {
				ease : eft,
				top : -20,
				opacity : 0
			})
		})
	}

	function menuActive() {
		var url = this.location.href.split("/");
		var title = url[url.length - 1];
		var gnbLi = $('#gnb>ul>li');
		var dp2Li = $('.dp2>ul>li');
		var topText = "";
		var visual = title;

		for (var i = 0; i < gnbLi.length; i++) { //메뉴 active 추가 및 상단 타이틀 넣기
			for (var j = 0; j < gnbLi.eq(i).find(dp2Li).length; j++) {
				var url2 = gnbLi.eq(i).find(dp2Li).eq(j).find('a').attr('href')
						.split("/");
				var checkUrl = url2[url2.length - 1];

				if (title == checkUrl) {
					gnbLi.eq(i).find(dp2Li).eq(j).find('a').addClass('active');
					$('.sub>ul>li>a').removeClass("active");
					$('.sub>ul>li').eq(j).find('a').addClass("active");
					$('.sub_loc>ul>li').removeClass("active").eq(j).addClass(
							"active");
				}
				if (i == 0) {
					if (j == 0) {
						topText = "전세계 넘버원 브랜드 Subway!<br>50년 전통의 세계 최고의 샌드위치를 맛보세요!";
					} else if (j == 1) {
						topText = "양은 더 많이! 칼로리는 더 적게!<br>신선한 야채와 다양한 소스로 가볍게 찹샐러드를 즐겨보세요!";
					} else if (j == 2) {
						topText = "다양한 추가토핑을 추가해<br>나만의 써브웨이 레시피를 만들어보세요.";
					} else if (j == 3) {
						topText = "바삭하고 쫀득한 달콤한 쿠키와 간편하고 든든한 수프,<br>커피와 음료까지 함께 즐길 수 있습니다.";
					}
				}
				if (title == 'side') {
					visual = 'sides_drink';
				}
			}
		}
		$('.topTitle').html(title);
		$('.topText').html(topText);
		$('.visual').addClass(visual);
		$('#container').addClass(title + "Container");
	}

	function bodyScroll() {//body scroll
		var header = $('#header1');
		var subHeader = $('.sub_header')
		var subLogo = subHeader.find('.logo')
		var subTop = subHeader.find('.top')
		var spd = 0.5;
		var eft = Power3.easeOut;
		var subHeaderTop = subHeader.offset().top

		scrollBarTo();
		$(window).on('scroll touchmove', function() {//window scrollto
			scrollBarTo();
		})

		function scrollBarTo() {
			if ($(window).scrollTop() > subHeaderTop) {
				TweenLite.to(subHeader.css('position', 'fixed'), 0.5, {
					ease : Power4.easeOut,
					backgroundColor : '#fff'
				})
				subHeader.addClass('fixed');
				TweenLite.to(subLogo, spd, {
					ease : eft,
					opacity : 1
				})
				TweenLite.to(subTop, spd, {
					ease : eft,
					opacity : 1
				})
			} else {
				TweenLite.to(subHeader.css('position', 'absolute'), 0.5, {
					ease : Power4.easeOut,
					backgroundColor : 'transparent'
				})
				subHeader.removeClass('fixed');
				TweenLite.to(subLogo, spd, {
					ease : eft,
					opacity : 0
				})
				TweenLite.to(subTop, spd, {
					ease : eft,
					opacity : 0
				})
			}
		}

		subTop.on('click', function() {//top button
			$('html,body').stop(true, false).animate({
				scrollTop : 0
			}, 1000, 'easeInOutQuint')
			return false;
		})
	}
</script>