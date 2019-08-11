<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<%@ include file="/header.jsp"%>

<div class="contentWrap">
	<div id="container">
		<div class="main_tap_event_wrapper">
			<div>
				<div class="wrap">
					<a href="#;">
						<div class="img">
							<img alt="웨지포테이토" src="${pageContext.request.contextPath}/resources/images/main_PC02_1920x440_20190701041359608.jpg">
						</div>
					</a>
				</div>
				<div class="wrap">
					<a href="#;">
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
					<li class="active"><span>클래식</span></li>
					<li><span>프레쉬&amp;라이트</span></li>
					<li><span>프리미엄</span></li>
				</ul>
			</div>
		</div>
	
		<div class="subway_menu_slider_wrapper">
			<!-- 클래식 -->
			<div class="subway_menu_slider active" id="sandwich_cl" style="left: 0">
				<div>
					<ul>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="이탈리안 비엠티" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_cl01.jpg"></div>
									<strong class="title">이탈리안 비엠티</strong>
									<p>7시간 숙성된 페퍼로니, 살라미<br>그리고 햄이 만들어내는 최상의 조화!<br>전세계가 사랑하는 No.1 베스트셀러!<br>Biggest Meatiest Tastiest, It's B.M.T.!</p><!-- 20180207 -->
								</div>
							</a>
						</li>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="비엘티" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_cl02.jpg"></div>
									<strong class="title">비엘티</strong>
									<p>오리지널 아메리칸 베이컨의<br>풍미와 바삭함 그대로~</p><!-- 20180207 -->
								</div>
							</a>
						</li>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="미트볼" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_cl03.jpg"></div>
									<strong class="title">미트볼</strong>
									<p>이탈리안 스타일 비프 미트볼에<br>써브웨이만의 풍부한 토마토 향이 살아있는<br>마리나라소스를 듬뿍</p><!-- 20180207 -->
								</div>
							</a>
						</li>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="햄" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_cl04.jpg"></div>
									<strong class="title">햄</strong>
									<p>기본 중에 기본!<br>풍부한 햄이 만들어내는<br>입 안 가득 넘치는 맛의 향연</p><!-- 20180207 -->
								</div>
							</a>
						</li>
					</ul>
					<ul>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="참치" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_cl05.jpg"></div>
									<strong class="title">참치</strong>
									<p>남녀노소 누구나 좋아하는<br>담백한 참치와 고소한 마요네즈의<br>완벽한 조화</p><!-- 20180207 -->
								</div>
							</a>
						</li>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="에그마요" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_cl06.jpg"></div>
									<strong class="title">에그마요</strong>
									<p>친환경 인증 받은 농장에서 생산된 달걀과<br>고소한 마요네즈가 만나 더 부드러운<br>에그마요 찹 샐러드</p><!-- 20180207 -->
								</div>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<!--// 클래식 -->
			<!-- 프레쉬&amp;라이트 -->
			<div class="subway_menu_slider" id="sandwich_cl" style="left: 0">
				<div>
					<ul>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="로티세리 바비큐 치킨" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_fl01.jpg"></div>
									<strong class="title">로티세리 바비큐 치킨</strong>
									<p>촉촉한 바비큐 치킨의 풍미가득.<br>손으로 찢어 더욱 부드러운 치킨의 혁명</p><!-- 20180207 -->
								</div>
							</a>
						</li>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="로스트 치킨" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_fl02.jpg"></div>
									<strong class="title">로스트 치킨</strong>
									<p>오븐에 구워 담백한 저칼로리<br>닭가슴살의 건강한 풍미</p><!-- 20180207 -->
								</div>
							</a>
						</li>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="로스트 비프" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_fl03.jpg"></div>
									<strong class="title">로스트 비프</strong>
									<p>청정 호주 쇠고기를 오븐에 구워 더욱 담백하고<br>풍부한 맛이 살아있는 비프 샌드위치</p><!-- 20180207 -->
								</div>
							</a>
						</li>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="써브웨이 클럽" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_fl04.jpg"></div>
									<strong class="title">써브웨이 클럽</strong>
									<p>명실공히 시그니처 써브!<br>터키, 비프, 포크 햄의 완벽한 앙상블</p><!-- 20180207 -->
								</div>
							</a>
						</li>
					</ul>
					<ul>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="터키" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_fl05.jpg"></div>
									<strong class="title">터키</strong>
									<p>280kcal로 슬림하게 즐기는<br>오리지날 터키 샌드위치</p><!-- 20180207 -->
								</div>
							</a>
						</li>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="베지" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_fl06.jpg"></div>
									<strong class="title">베지</strong>
									<p>갓 구운 빵과 신선한 7가지 야채로<br>즐기는 깔끔한 한끼</p><!-- 20180207 -->
								</div>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<!--// 프레쉬&amp;라이트 -->
			<!-- 프리미엄 -->
			<div class="subway_menu_slider" id="sandwich_pm" style="left: 0px;">
				<div>
					<ul>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="스테이크&amp;치즈" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_pm01.jpg"></div>
									<strong class="title">스테이크&amp;치즈</strong>
									<p>육즙이 쫙~<br>풍부한 비프 스테이크의 풍미가 입안 한가득</p><!-- 20180207 -->
								</div>
							</a>
						</li>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="터키 베이컨 아보카도" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_pm02.jpg"></div>
									<strong class="title">터키 베이컨 아보카도</strong>
									<p>담백한 터키와 바삭한 베이컨 환상조합에<br>부드러운 아보카도는 신의 한수</p><!-- 20180207 -->
								</div>
							</a>
						</li>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="치킨 베이컨 랜치" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_pm03.jpg"></div>
									<strong class="title">치킨 베이컨 랜치</strong>
									<p>바삭한 베이컨과 담백한 치킨의 이중주</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="써브웨이 멜트" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_pm04.jpg"></div>
									<strong class="title">써브웨이 멜트</strong>
									<p>자신있게 추천하는 터키, 햄, 베이컨의<br>완벽한 맛의 밸런스</p><!-- 20180207 -->
								</div>
							</a>
						</li>
					</ul>
					<ul>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="터키 베이컨" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_pm05.jpg"></div>
									<strong class="title">터키 베이컨</strong>
									<p>담백한 터키와 바삭한 베이컨의 기분 좋은 만남</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="스파이시 이탈리안" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_pm06.jpg"></div>
									<strong class="title">스파이시 이탈리안</strong>
									<p>살라미, 페퍼로니가 입안 한가득!<br>쏘 핫한 이탈리아의 맛</p><!-- 20180207 -->
								</div>
							</a>
						</li>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="치킨 데리야끼" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_pm07.jpg"></div>
									<strong class="title">치킨 데리야끼</strong>
									<p>담백한 치킨 스트립에 달콤짭쪼름한 써브웨이<br>특제 데리야끼 소스와의 환상적인 만남</p><!-- 20180207 -->
								</div>
							</a>
						</li>
						<li>
							<a href="#;">
								<div class="wrap">
									<div class="img"><img alt="풀드포크" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_pm08.jpg"></div>
									<strong class="title">풀드포크</strong>
									<p>7시간 저온 훈연한 미국 정통 스타일의<br>리얼 바비큐 풀드포크는 오직 써브웨이에서</p><!-- 20180207 -->
								</div>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- //프리미엄 -->
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
							<li><a href="#" onclick="view.noticeView(this);return false;"
								data-idx="213">써브웨이와 함께하는 Mnet ''쇼미더머니8"</a></li>
							<li><a href="#" onclick="view.noticeView(this);return false;"
								data-idx="212">써브웨이와 함께하는 SBS '의사요한' </a></li>
							<li><a href="#" onclick="view.noticeView(this);return false;"
								data-idx="211">써브웨이와 함께하는 tvN '호텔델루나' </a></li>
						</ul>
						<a class="more" href="/newsList">more</a>
					</div>
				</div>
				<!--// whats new -->
		
				<!-- banner sponsor -->
				<div class="banner_sponsor">
					<a href="#;">
						<img alt="별책부록 우측하단 배너" src="${pageContext.request.contextPath}/resources/images/하단배너제작건_20190730082959762.jpg">
					</a>
				</div>
				<!--// banner sponsor -->
			</div>
			<!--// content bottom -->
		</div>
	</div>
</div>

<%@ include file="/footer.jsp"%>
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
	})

	$('.subway_menu_slider ul li').on('mouseleave', function(){
		$(this).css({'width':'260px','marginLeft':30});
		$(this).siblings('li').css({'marginLeft':30});
	})
	

}
</script>
</body>
</html>


