<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2 class="subTitle">써브웨이 이용방법</h2>
	<!-- 써브웨이 이용방법 -->
	<div class="utilization_subway_wrapper">
		<!-- 매장에서 주문하기 s -->
		<div class="utilization_subway_content" id="store_order" style="display:block;">
			<div class="slider_wrapper">
				<div class="step_content">
					<ol>
						<li class="active"><div class="step">STEP<strong>1</strong></div></li>
						<li><div class="step">STEP<strong>2</strong></div></li>
						<li><div class="step">STEP<strong>3</strong></div></li>
						<li><div class="step">STEP<strong>4</strong></div></li>
						<li><div class="step">STEP<strong>5</strong></div></li>
					</ol>
				</div>
				<div class="img_content">
					<ol>
						<!-- 20180202 -->
						<li class="active"><div class="img"><img alt="메뉴 선택" src="${pageContext.request.contextPath}/resources/images/utilization/img_store_order01.png"></div></li>
						<li ><div class="img"><img alt="빵 선택 " src="${pageContext.request.contextPath}/resources/images/utilization/img_store_order02.png"></div></li>
						<li><div class="img"><img alt="토핑 추가" src="${pageContext.request.contextPath}/resources/images/utilization/img_store_order03.png"></div></li>
						<li><div class="img"><img alt="야채&amp;소스 선택" src="${pageContext.request.contextPath}/resources/images/utilization/img_store_order04.png"></div></li>
						<li><div class="img"><img alt="세트 선택" src="${pageContext.request.contextPath}/resources/images/utilization/img_store_order05.png"></div></li>
						<!--// 20180202 -->
					</ol>
				</div>
				<div class="info_content">
					<p class="step_num">STEP 1</p>
					<ol>
						<li class="active" style="margin-top:0;opacity:1;">
							<strong>메뉴 선택</strong>
							<p class="txt1">메뉴를 고르세요.<br>샌드위치(15cm 또는 30cm)와<br>찹샐러드 중 선택 가능합니다.</p>
							<div class="select_box selectM">
								<span class="slct_head">메뉴 선택</span>
								<div class="slct_list">
									<ul>
										<li>
											<a href="#" class="default">메뉴 선택</a>
										</li>
										<li>
											<a href="#" data-val="sandwich">샌드위치</a>
										</li>
										<li>
											<a href="#" data-val="salad">찹샐러드</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="select_box selectL">
								<span class="slct_head">길이 선택</span>
								<div class="slct_list">
									<ul>
										<li>
											<a href="#" class="default">길이 선택</a>
										</li>
										<li>
											<a href="#" data-val="15">15cm</a>
										</li>
										<li>
											<a href="#" data-val="30">30cm</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="select_box selectK">
								<span class="slct_head">종류 선택</span>
								<div class="slct_list">
									<ul>
										<li>
											<a href="#" class="default">종류 선택</a>
										</li>
										<li>
											<a href="#" data-val="AAPBUWI">쉬림프 아보카도</a>
										</li>
										<li>
											<a href="#" data-val="AAPBUWI">에그마요</a>
										</li>
										<li>
											<a href="#" data-val="AAPBUWI">쉬림프 아보카도</a>
										</li>
										<li>
											<a href="#" data-val="AAPBUWI">에그마요</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<strong>빵 선택 <span>(찹샐러드 선택 시 제외)</span></strong>
							<p class="txt1">매장에서 직접 구운 6가지 종류 중<br>고객님이 원하는 빵으로<br>추가비용 없이 선택 가능합니다.</p>
							<div class="select_box bread">
								<span class="slct_head">빵 선택</span>
								<div class="slct_list">
									<ul>
										<li>
											<a href="#" class="default">빵 선택</a>
										</li>
										<li>
											<a href="#" data-val="sandwich">허니오트</a>
										</li>
										<li>
											<a href="#" data-val="sandwich">하티</a>
										</li>
										<li>
											<a href="#" data-val="sandwich">위트</a>
										</li>
										<li>
											<a href="#" data-val="sandwich">파마산 오레가노</a>
										</li>
										<li>
											<a href="#" data-val="sandwich">화이트</a>
										</li>
										<li>
											<a href="#" data-val="sandwich">플랫브레드</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<strong>추가토핑 선택</strong>
							<p class="txt1">나만의 메뉴를 더욱 풍성하게 즐기세요.</p>
							<div class="select_box">
								<span class="slct_head">추가토핑 선택</span>
								<div class="slct_list">
									<ul>
										<li>
											<a href="#" class="default">추가토핑 선택</a>
										</li>
										<li>
											<a href="#" data-val="sandwich">베이컨 비츠</a>
										</li>
										<li>
											<a href="#" data-val="sandwich">쉬림프 더블업</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<strong>야채&amp;소스 선택</strong>
							<p class="txt1">나만의 스타일을 완성하는 단계!<br>원하지 않는 야채는 빼고 좋아하는 야채는 더하세요. <br>오늘의 기분에 맞는 소스를 선택해주세요. </p>
							<div class="select_box">
								<span class="slct_head">야채 선택</span>
								<div class="slct_list">
									<ul>
										<li>
											<a href="#" data-val="sandwich">양상추</a>
										</li>
										<li>
											<a href="#" data-val="sandwich">토마토</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="select_box">
								<span class="slct_head">소스 선택</span>
								<div class="slct_list">
									<ul>
										<li>
											<a href="#" data-val="sandwich">스위트 어니언</a>
										</li>
										<li>
											<a href="#" data-val="sandwich">마요네즈</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<strong>사이드메뉴&amp;음료 선택</strong>
							<p class="txt1">바삭하고 쫀득한 달콤한 쿠키와<br>간편하고 든든한 수프,<br>커피와 음료까지 함께 즐길 수 있습니다.</p>
							<div class="select_box">
								<span class="slct_head">사이드메뉴 선택</span>
								<div class="slct_list">
									<ul>
										<li>
											<a href="#" class="default">사이드메뉴 선택</a>
										</li>
										<li>
											<a href="#" data-val="sandwich">웨지 포테이토</a>
										</li>
										<li>
											<a href="#" data-val="sandwich">더블 초코칩 쿠키</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="select_box">
								<span class="slct_head">음료 선택</span>
								<div class="slct_list">
									<ul>
										<li>
											<a href="#" class="default">음료 선택</a>
										</li>
										<li>
											<a href="#" data-val="sandwich">탄산음료</a>
										</li>
										<li>
											<a href="#" data-val="sandwich">커피</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
					</ol>
				</div>

				<div class="arr_controls">
					<a class="prev arr" href="#none">prev</a>
					<a class="next arr" href="#none">next</a>
				</div>
			</div>
			<!-- 선택한 메뉴 -->
		<div class="board_list_wrapper step1">
			<table>
				<thead>
					<tr>
						<th scope="col">메뉴</th>
						<th scope="col">빵</th>
						<th scope="col">추가토핑</th>
						<th scope="col">야채종류</th>
						<th scope="col">소스종류</th>
						<th scope="col">사이드메뉴&amp;음료</th>
						<th scope="col">총금액</th>
					</tr>
				  </thead>
				<tbody>
					
					<!-- <tr>
						<td>
							<ul>
								<li>
									<span class="delete">삭제</span>
									<span>이탈리안 비엠티 15cm</span>
									<span class="price">￦6,000</span>
								</li>
							</ul>
						</td>
						<td>허니오트</td>
						<td>
							<ul>
								<li>
									<span>더블치즈</span>
									<span class="price">￦800</span>
								</li>
							</ul>
						</td>
						<td>
							<ul>
								<li>
									<span>양상추</span>
								</li>
							</ul>
						</td>
						<td>
							<ul>
								<li>
									<span>스위트어니언</span>
								</li>
							</ul>
						</td>
						<td>
							<ul>
								<li>
									<span>웨지 포테이토</span>
									<span class="price">￦200</span>
								</li>
							</ul>
						</td>
						<td><span class="orderPrice">￦  8,500</span></td>
					</tr> -->
				</tbody>
			</table>
			<!-- 장바구니, 주문하기 버튼 -->
			<div class="inquiry_wrapper orderBtn">
				<div class="btns_wrapper">
					<a class="btn bgc_point i_reg" style="width:170px"><span>장바구니</span></a>
					<a class="btn bgc_point i_reg od" style="width:170px"><span>주문하기</span></a>
				</div> 
			</div>
			<!-- //장바구니, 주문하기 버튼 --> 
		</div>
		<!-- //선택한 메뉴 -->
		</div>
		<!--// 매장에서 주문하기 e -->
	</div>
	<!--// 써브웨이 이용방법 -->
<script>
$(document).ready(function(){
	subwayUtilization();
	selectBox();
	selectMenu();
	cartOrderBtn();
});
function selectBox() { //셀렉트박스 슬라이드 토글
	$('.slct_head').click(function () {
		if($(this).parent().hasClass('on')){
			$(this).parent().removeClass('on').children('.slct_list').hide();
		} else{
			$(this).parent().addClass('on').children('.slct_list').stop().slideDown('fast');
			$(this).parent().siblings().removeClass('on').children('.slct_list').hide();
		}
	});
	
	$(document).on("click", function(event){
        if(!$(event.target).closest(".select_box").length){
            $(".slct_list").hide();
        }
    });
}

function selectMenu() { //셀렉트박스 메뉴선택
	$('.slct_list>ul>li>a').click(function (e) {
		e.preventDefault(e);
		var txt = $(this).text();
		var trTd = "<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><tr>";
		
		$(this).parents('.slct_list').prev('.slct_head').text(txt); //텍스트 넣기
		if($(this).parents('.select_box').hasClass('selectM')){ 
			if(txt == '샌드위치'){ //길이 선택 셀렉트박스 노출 
				$('.selectL').show();
			} else{
				$('.selectL').hide();
			}
			$('.selectK .slct_head,.selectL .slct_head').text("종류 선택"); //장바구니, 주문하기 버튼 노출
			$('.board_list_wrapper table tbody').append(trTd);
		}
		if($(this).parents('.select_box').hasClass('selectM')){ //메뉴 선택시 다른 셀렉트박스 초기화
			$('.selectK .slct_head,.selectL .slct_head').text("종류 선택");
		}
		if($(this).parents('.select_box').hasClass('bread')){ //장바구니, 주문하기 버튼 노출
			$('.orderBtn').show();
		}
		$('.slct_list').hide(); //셀렉트박스 닫기
		
		
	});
}

function cartOrderBtn() { //장바구니, 주문하기 버튼 노출
	$('.slct_list>ul>li>a').click(function (e) {
		
	});
}

function subwayUtilization(){//써브웨이 이용방법
	var stepIndex = 0;
	var btnArr = $('#store_order .arr_controls .arr');
	var stepNum = $('#store_order .slider_wrapper .step_content ol li');
	var slider_img = $('#store_order .slider_wrapper .img_content ol li');
	var slider_info = $('#store_order .info_content>ol>li');
	var spd = 1;
	var eft = Power3.easeOut;

	store_order();//써브웨이 이용방법 : 매장에서 주문하기

	$('.utilization_subway_wrapper .tab>ul>li>a').on('click', function(){//써브웨이 이용방법 : tab
		if($(this).parent('li').hasClass('active')){
			return false;
		}else{
			var tg = $(this).attr('href');
			$(this).parent('li').addClass('active').siblings('li').removeClass('active')
			$(tg).show().siblings('.utilization_subway_content').hide();

			if(tg == '#store_order'){
				stepIndex = 0;

				$('#store_order .step_num').text('STEP '+(stepIndex+1))
				$(stepNum).removeClass('prev active');
				$(stepNum).eq(stepIndex).addClass('active');
				$(slider_info).removeClass('active').attr('style','')
				$(slider_info).eq(stepIndex).addClass('active').css({'marginTop':'0','opacity':'1'})
				$(slider_img).attr('style','').removeClass('active');
				$(slider_img).find('.img').attr('style','');
				$(slider_img).eq(stepIndex).addClass('active').css({'left':'50%',marginLeft:'-585px'})

				TweenLite.to($(slider_img).eq(stepIndex).find('.img'),spd,{ease:eft,width:700})
				TweenLite.to($(slider_img).eq(stepIndex).next(),spd,{ease:eft,marginLeft:'-280'})
			}else{
				AOS.init({
					once:'data-aos-once',
					duration:600,
					easing: 'ease-out-ease',
					delay: 100,
				});
			}
			return false;
		}
	})

	function store_order(){//써브웨이 이용방법 : 매장에서 주문하기 20180131
		var prevIndex;
		
		$(slider_img).eq(stepIndex).css({'left':'50%',marginLeft:'-585px'})
		TweenLite.to($(slider_img).eq(stepIndex).find('.img'),spd,{ease:eft,width:700})
		TweenLite.to($(slider_img).eq(stepIndex).next(),spd,{ease:eft,marginLeft:'-280'})

		$(btnArr).on('click', function(){
			if(TweenMax.isTweening(slider_img)){
				return false;
			}else{
				prevIndex = stepIndex;
				if($(this).hasClass('prev')){
					if(stepIndex <= 0){
						return false;
					}else{
						stepIndex--;
						$(stepNum).eq(stepIndex).removeClass('prev').addClass('active')
						$(stepNum).eq(prevIndex).removeClass('active')

						TweenLite.to($(slider_img).eq(stepIndex).prev(),spd,{ease:eft,left:'0',marginLeft:'-280'})
						TweenLite.to($(slider_img).eq(prevIndex),spd,{ease:eft,left:'100%',marginLeft:'-280'})
						TweenLite.to($(slider_img).eq(prevIndex).find('.img'),spd,{ease:eft,width:560})
						TweenLite.to($(slider_img).eq(stepIndex),spd,{ease:eft,left:'50%',marginLeft:'-585'})
						TweenLite.to($(slider_img).eq(stepIndex).find('.img'),spd,{ease:eft,width:700})
						TweenLite.to($(slider_img).eq(prevIndex).next(),spd,{ease:eft,marginLeft:'560'})
					}
				} else{
					if(stepIndex >= 4){
						return false;
					}else{
						stepIndex++;
						$(stepNum).eq(stepIndex).addClass('active')
						$(stepNum).eq(prevIndex).removeClass('active').addClass('prev')

						TweenLite.to($(slider_img).eq(prevIndex).prev(),spd,{ease:eft,left:'-560',marginLeft:'-560'})
						TweenLite.to($(slider_img).eq(prevIndex),spd,{ease:eft,left:'0',marginLeft:'-280'})
						TweenLite.to($(slider_img).eq(prevIndex).find('.img'),spd,{ease:eft,width:560})
						TweenLite.to($(slider_img).eq(stepIndex),spd,{ease:eft,left:'50%',marginLeft:'-585'})
						TweenLite.to($(slider_img).eq(stepIndex).find('.img'),spd,{ease:eft,width:700})
						TweenLite.to($(slider_img).eq(stepIndex).next(),spd,{ease:eft,marginLeft:'-280'})
					}
				}

				$(slider_info).eq(prevIndex).removeClass('active').css('opacity','0')
				TweenLite.to($(slider_info).eq(stepIndex).addClass('active'),0.7,{ease:Power4.easeOut,marginTop:0,opacity:1,onComplete:function(){
					$(slider_info).eq(prevIndex).attr('style','')
				}});
				$('#store_order .step_num').text('STEP '+(stepIndex+1))
				return false;
			}
		})
	}
}
</script>
</body>
</html>