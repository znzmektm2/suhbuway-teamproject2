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
	<div class="contentWrap">
		<div class="sub_header type01"><!-- 메뉴소개일경우 type01클래스 추가 -->
			<div class="content">
				<a class="logo" href="/" style="opacity: 0;">HOME</a>
				<!-- sub location -->
				<div class="sub_loc">
					<ul>
						<li class="active"><a href="#">샌드위치</a></li>
						<li><a href="/saladList">찹샐러드</a></li>
						<li><a href="/toppingList">추가토핑</a></li>
						<li><a href="/sideDrink">사이드ㆍ음료</a></li>
						<li><a href="/catering">단체메뉴</a></li>
						<li><a href="/freshInfo">신선한 재료 소개</a></li>
					</ul>
				</div>
				<!--// sub location -->
				<a class="top" href="#none">TOP</a>
			</div>
		</div>
		<div class="menu_list_wrapper">
			<!-- 상품 visual -->
			<div class="visual sandwich">
				<h2>Sandwich</h2>
				<p>
					전세계 넘버원 브랜드 Subway!<br>
					50년 전통의 세계 최고의 샌드위치를 맛보세요!
				</p>
				<div class="img01"></div>
			</div>
			<!--// 상품 visual -->
			<!-- 상품목록 -->
			<div class="pd_list_wrapper">
				<ul>
					<c:forEach items="${list}" var="list" varStatus="state">
						<li class="pm new">
							<!-- label -->
							<div class="label">
								<span class="new">NEW</span>
							</div>
							<!--// label -->
							<div class="img"><img alt="쉬림프" src="${pageContext.request.contextPath}/resources/images/menu/sandwich_pm10.jpg"></div>
							<strong class="tit">${list.name}</strong>
							<span class="eng">${list.nameEng}</span>
							<span class="cal">${list.nutrition.calory} kcal</span>
							<span class="price">￦  <fmt:formatNumber value="${list.price}"/></span>
							<div class="summary">
								<p>${list.name}</p>
							</div>
							<a class="btn_view" data-id="pm10" href="${pageContext.request.contextPath}/menu/sandwich/${state.count}"></a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<!--// 상품목록 -->
		</div>
	</div>
<script>
$(document).ready(function(){
	pdVisual_sandwich();
	pdVisual_sidesDrink();
	pdVisual_fresh();
	pdVisual_salad();
});
function pdVisual_sandwich(){//메뉴소개 : 샌드위치 visual
	TweenLite.to($('.visual.sandwich h2'),0.7,{ease:Power2.easeInOut,top:0,opacity:1})
	TweenLite.to($('.visual.sandwich p'),0.7,{ease:Power2.easeOut,top:0,opacity:1,delay:0.3})
	TweenLite.to($('.visual.sandwich .img01'),1,{ease:Power4.easeOut,top:0,opacity:1,delay:0.3})
};

function pdVisual_sidesDrink(){//메뉴소개 : 사이드ㆍ음료 visual
	TweenLite.to($('.visual.sides_drink h2'),0.7,{ease:Power2.easeInOut,top:0,opacity:1})
	TweenLite.to($('.visual.sides_drink p'),0.7,{ease:Power2.easeOut,top:0,opacity:1,delay:0.3})
	TweenLite.to($('.visual.sides_drink .img01'),1,{ease:Power4.easeOut,bottom:0,opacity:1,delay:0.5})
	TweenLite.to($('.visual.sides_drink .img02'),1,{ease:Power4.easeOut,top:0,opacity:1,delay:0.3})
};

function pdVisual_fresh(){//메뉴소개 : 신선한재료소개 visual
	TweenLite.to($('.visual.fresh h2'),0.7,{ease:Power2.easeInOut,top:0,opacity:1})
	TweenLite.to($('.visual.fresh p'),0.7,{ease:Power2.easeOut,top:0,opacity:1,delay:0.3})
	TweenLite.to($('.visual.fresh .img01'),0.5,{ease:Power3.easeInOut,top:0,opacity:1,delay:0.3})
	TweenLite.to($('.visual.fresh .img02'),0.6,{ease:Power3.easeOut,top:74,opacity:1,delay:0.5})
	TweenLite.to($('.visual.fresh .img03'),0.6,{ease:Power3.easeOut,top:168,opacity:1,delay:0.6})
};

function pdVisual_salad(){//메뉴소개 : 찹샐러드 visual
	TweenLite.to($('.visual.salad h2'),0.7,{ease:Power2.easeInOut,top:0,opacity:1})
	TweenLite.to($('.visual.salad p'),0.7,{ease:Power2.easeOut,top:0,opacity:1,delay:0.3})
	TweenLite.to($('.visual.salad .img01'),0.7,{ease:Power3.easeOut,top:0,opacity:1,x:50,delay:0.5})
	TweenLite.to($('.visual.salad .img02'),0.7,{ease:Power3.easeOut,top:0,opacity:1, x:'-50',delay:0.3})
};

function pdVisual_topping(){//메뉴소개 : 추가토핑 visual
	TweenLite.to($('.visual.topping h2'),0.7,{ease:Power2.easeInOut,top:0,opacity:1})
	TweenLite.to($('.visual.topping p'),0.7,{ease:Power2.easeOut,top:0,opacity:1,delay:0.3})
	TweenLite.to($('.visual.topping .img01'),1,{ease:Power4.easeOut,left:'-=100',opacity:1,delay:0.2})
	TweenLite.to($('.visual.topping .img02'),1,{ease:Power4.easeOut,bottom:0,opacity:1,delay:0.3})
};

function pdVisual_catering(){//메뉴소개 : 단체메뉴 visual
	TweenLite.to($('.visual.catering h2'),0.7,{ease:Power2.easeInOut,top:0,opacity:1})
	TweenLite.to($('.visual.catering p'),0.7,{ease:Power2.easeOut,top:0,opacity:1,delay:0.3})
	TweenLite.to($('.visual.catering .img01'),1,{ease:Power4.easeOut,left:'-=100',opacity:1,delay:0.4})
	TweenLite.to($('.visual.catering .img02'),1,{ease:Power4.easeOut,top:0,opacity:1,delay:0.2})
};
</script>

</body>
</html>