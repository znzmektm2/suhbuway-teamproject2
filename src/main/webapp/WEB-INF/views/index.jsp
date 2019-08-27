<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<div class="contentWrap main">
	<div id="container">
		<div class="main_tap_event_wrapper">
			<div>
				<div class="wrap">
					<a href="${pageContext.request.contextPath}/menu/side">
						<div class="img">
							<img alt="웨지포테이토" src="${pageContext.request.contextPath}/resources/images/main_PC02_1920x440_20190701041359608.jpg">
						</div>
					</a>
				</div>
				<div class="wrap">
					<a href="${pageContext.request.contextPath}/menu/sandwich">
						<div class="img">
							<img alt="썹!프라이즈" src="${pageContext.request.contextPath}/resources/images/PC_1920x440_20190730014635815.jpg">
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="section_subway_menu">
		<div class="hd">
			<h2>Subway's Menu</h2>
	
			<div class="tab">
				<ul>
					<li class="active"><span>샌드위치</span></li>
					<li><span>찹샐러드</span></li>
				</ul>
			</div>
		</div>
	
		<div class="subway_menu_slider_wrapper">
			<!-- 샌드위치 -->
			<div class="subway_menu_slider active" id="sandwich_cl" style="left: 0">
				<div>
					<ul>
						<li>
							<a href="${pageContext.request.contextPath}/menu/sandwich/2">
								<div class="wrap">
									<div class="img"><img alt="이탈리안 비엠티" src="${pageContext.request.contextPath}/resources/images/menu/sandwich/sandwich_cl01.jpg"></div>
									<strong class="title">이탈리안 비엠티</strong>
									<p>7시간 숙성된 페퍼로니, 살라미<br>그리고 햄이 만들어내는 최상의 조화!<br>전세계가 사랑하는 No.1 베스트셀러!<br>Biggest Meatiest Tastiest, It's B.M.T.!</p><!-- 20180207 -->
								</div>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/menu/sandwich/13">
								<div class="wrap">
									<div class="img"><img alt="비엘티" src="${pageContext.request.contextPath}/resources/images/menu/sandwich/sandwich_cl02.jpg"></div>
									<strong class="title">비엘티</strong>
									<p>오리지널 아메리칸 베이컨의<br>풍미와 바삭함 그대로~</p><!-- 20180207 -->
								</div>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/menu/sandwich/14">
								<div class="wrap">
									<div class="img"><img alt="미트볼" src="${pageContext.request.contextPath}/resources/images/menu/sandwich/sandwich_cl03.jpg"></div>
									<strong class="title">미트볼</strong>
									<p>이탈리안 스타일 비프 미트볼에<br>써브웨이만의 풍부한 토마토 향이 살아있는<br>마리나라소스를 듬뿍</p><!-- 20180207 -->
								</div>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/menu/sandwich/15">
								<div class="wrap">
									<div class="img"><img alt="햄" src="${pageContext.request.contextPath}/resources/images/menu/sandwich/sandwich_cl04.jpg"></div>
									<strong class="title">햄</strong>
									<p>기본 중에 기본!<br>풍부한 햄이 만들어내는<br>입 안 가득 넘치는 맛의 향연</p><!-- 20180207 -->
								</div>
							</a>
						</li>
					</ul>
					<ul>
						<li>
							<a href="${pageContext.request.contextPath}/menu/sandwich/16">
								<div class="wrap">
									<div class="img"><img alt="참치" src="${pageContext.request.contextPath}/resources/images/menu/sandwich/sandwich_cl05.jpg"></div>
									<strong class="title">참치</strong>
									<p>남녀노소 누구나 좋아하는<br>담백한 참치와 고소한 마요네즈의<br>완벽한 조화</p><!-- 20180207 -->
								</div>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/menu/sandwich/1">
								<div class="wrap">
									<div class="img"><img alt="에그마요" src="${pageContext.request.contextPath}/resources/images/menu/sandwich/sandwich_cl06.jpg"></div>
									<strong class="title">에그마요</strong>
									<p>친환경 인증 받은 농장에서 생산된 달걀과<br>고소한 마요네즈가 만나 더 부드러운<br>에그마요 찹 샐러드</p><!-- 20180207 -->
								</div>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<!--// 샌드위치 -->
			<!-- 찹샐러드 -->
			<div class="subway_menu_slider" id="sandwich_cl" style="left: 0">
				<div>
					<ul>
						<li>
							<a href="${pageContext.request.contextPath}/menu/salad/3">
								<div class="wrap">
									<div class="img"><img alt="쉬림프" src="${pageContext.request.contextPath}/resources/images/menu/salad/salad_pm10.jpg"></div>
									<strong class="title">쉬림프</strong>
									<p>탱글한 식감이 그대로 살아있는<br>통새우가 5마리가<br>찹샐러드에 쏙 ! Fresh함이 그대로~</p>
								</div>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/menu/salad/33">
								<div class="wrap">
									<div class="img"><img alt="로티세리 치킨" src="${pageContext.request.contextPath}/resources/images/menu/salad/salad_fl01.jpg"></div>
									<strong class="title">로티세리 치킨</strong>
									<p>촉촉한 바비큐 치킨의 풍미가득.<br>손으로 찢어 더욱 부드러운 치킨이 찹 샐러드에 쏙</p>
								</div>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/menu/salad/34">
								<div class="wrap">
									<div class="img"><img alt="풀드포크" src="${pageContext.request.contextPath}/resources/images/menu/salad/salad_pm08.jpg"></div>
									<strong class="title">풀드포크</strong>
									<p>7시간 저온 훈연한 미국 정통바비큐 풀드포크가 가득 올라간 풍미 가득한 풀드포크 찹 샐러드</p>
								</div>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/menu/salad/4">
								<div class="wrap">
									<div class="img"><img alt="쉬림프 아보카도" src="${pageContext.request.contextPath}/resources/images/menu/salad/salad_pm11.jpg"></div>
									<strong class="title">쉬림프 아보카도</strong>
									<p>탱글한 새우 5마리와 크리미한 아보카도가<br>찹샐러드와 만나 환상 궁합</p>
								</div>
							</a>
						</li>
					</ul>
					<ul>
						<li>
							<a href="${pageContext.request.contextPath}/menu/salad/35">
								<div class="wrap">
									<div class="img"><img alt="이탈리안 비엠티" src="${pageContext.request.contextPath}/resources/images/menu/salad/salad_cl01.jpg"></div>
									<strong class="title">이탈리안 비엠티</strong>
									<p>7시간 숙성된 페퍼로니 살라미 그리고 햄이 만들어내는 최상의 조화!<br>전세계가 사랑하는 No.1 베스트셀러! Biggest Meatiest Tastiest Its B.M.T 찹 샐러드</p>
								</div>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/menu/salad/37">
								<div class="wrap">
									<div class="img"><img alt="미트볼" src="${pageContext.request.contextPath}/resources/images/menu/salad/salad_cl03.jpg"></div>
									<strong class="title">미트볼</strong>
									<p>이탈리안 스타일 비프 미트볼이 토핑된 찹 샐러드</p>
								</div>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<!--// 찹샐러드 -->
		</div>
	</div>
	<div class="section_subway_wrap">
		<div class="section_subway">
			<!-- content bottom -->
			<div class="content_bottom">
				<!-- whats new -->
				<div class="whats_new">
					<div class="hd">
						<h2>What's New</h2>
						<p>
							써브웨이의 다양한 소식을<br> 빠르게 전달해드립니다.
						</p>
					</div>
					<div class="board_list">
						<ul>
							<li><a href="${pageContext.request.contextPath}/board/newsView?newsId=119">써브웨이와 함께 하는 X1 실물 영접 이벤트 당첨자 발표</a></li>
							<li><a href="${pageContext.request.contextPath}/board/newsView?newsId=118">써브웨이 모바일 상품권 런칭</a></li>
							<li><a href="${pageContext.request.contextPath}/board/newsView?newsId=117">써브웨이와 함께하는 Mnet ''쇼미더머니8"</a></li>
						</ul>
						<a class="more" href="${pageContext.request.contextPath}/board/newsList">more</a>
					</div>
				</div>
				<!--// whats new -->
		
				<!-- banner sponsor -->
				<div class="banner_sponsor">
					<a href="board/newsView?newsId=115">
						<img alt="" src="${pageContext.request.contextPath}/resources/images/하단배너제작건_20190730082959762.jpg">
					</a>
				</div>
				<!--// banner sponsor -->
			</div>
			<!--// content bottom -->
		</div>
	</div>
</div>
<script>
$(document).ready(function(){
    mainScript();
});

function mainScript(){
	//메인 슬라이드
	$('.main_tap_event_wrapper>div').bxSlider({
		auto : true,
		autoStart : true,
		stopAutoOnClick : true,
		pause : 3000,
		touchEnabled:false
	});
	
	//메인 subway menu
	var slider = $('.subway_menu_slider>div').bxSlider({
		slideWidth:1200,
		infiniteLoop:false,
		pager:false,
		touchEnabled:false
	});
	
	$('.tab ul li span').on('click', function(){
		var thisIndex = $(this).parent().index();
		$(this).parent('li').addClass('active').siblings('li').removeClass('active');
		$('.subway_menu_slider_wrapper>div').eq(thisIndex).addClass('active').siblings().removeClass('active');
	});
	
	$('.subway_menu_slider ul li').on('mouseenter', function(){
		$(this).css({'width':'350px','margin':0});
		$(this).siblings('li').css({'margin':0});
	});

	$('.subway_menu_slider ul li').on('mouseleave', function(){
		$(this).css({'width':'260px','marginLeft':30});
		$(this).siblings('li').css({'marginLeft':30});
	});
}
</script>
</body>
</html>


