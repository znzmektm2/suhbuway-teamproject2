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
		<div class="menu_list_wrapper">
			<!-- 상품 visual -->
			<div class="visual sandwich">
				<h2 class="topTitle"></h2>
				<p class="topText"></p>
				<div class="img01"></div>
				<div class="img02"></div>
			</div>
			<!--// 상품 visual -->
			<!-- 상품목록 -->
			<div class="pd_list_wrapper">
				<ul>
					<c:forEach items="${list}" var="item" varStatus="state">
						<li class="pm new">
							<!-- label -->
							<div class="label">
								<span class="new">NEW</span>
							</div>
							<!--// label -->
							<div class="img"><img alt="${item.name}" src="${pageContext.request.contextPath}/resources/images/menu/${item.category}/${item.imgUrl}"></div>
							<strong class="tit">${item.name}</strong>
							<span class="eng">${item.nameEng}</span>
							<span class="cal">${item.nutrition.calory} kcal</span>
							<span class="price">￦  <fmt:formatNumber value="${item.price}"/></span>
							<div class="summary">
								<p>${item.description}</p>
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
	pdVisual_salad();
	pdVisual_topping();
	pdVisual_sidesDrink();
	subHeaderAddClass();
});

function pdVisual_sandwich(){//메뉴소개 : 샌드위치 visual
	TweenLite.to($('.visual.sandwich h2'),0.7,{ease:Power2.easeInOut,top:0,opacity:1})
	TweenLite.to($('.visual.sandwich p'),0.7,{ease:Power2.easeOut,top:0,opacity:1,delay:0.3})
	TweenLite.to($('.visual.sandwich .img01'),1,{ease:Power4.easeOut,top:0,opacity:1,delay:0.3})
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

function pdVisual_sidesDrink(){//메뉴소개 : 사이드ㆍ음료 visual
	TweenLite.to($('.visual.sides_drink h2'),0.7,{ease:Power2.easeInOut,top:0,opacity:1})
	TweenLite.to($('.visual.sides_drink p'),0.7,{ease:Power2.easeOut,top:0,opacity:1,delay:0.3})
	TweenLite.to($('.visual.sides_drink .img01'),1,{ease:Power4.easeOut,bottom:0,opacity:1,delay:0.5})
	TweenLite.to($('.visual.sides_drink .img02'),1,{ease:Power4.easeOut,top:0,opacity:1,delay:0.3})
};

function subHeaderAddClass() { // 메뉴소개 : 클래스 추가
	$('.sub_header').addClass('type01');
}
</script>

</body>
</html>