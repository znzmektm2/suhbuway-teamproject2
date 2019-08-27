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
<div class="innerWrap errorWrap">
	<h2 class="whoops">주문완료!</h2>
	<p class="txt">주문해 주셔서 감사합니다.<br>주문상태는 마이페이지 주문내역에서 확인 가능합니다.</p>
	<h2 class="num">주문번호 [${orderId}번]</h2>
	<div class="errorBtn">
		<a href="${pageContext.request.contextPath}/myPage/orders"><span>주문내역 확인</span></a>
	</div>
	<audio controls="" autoplay="" loop="infinite" style="opacity:0">
		<source src="${pageContext.request.contextPath}/resources/audio/orderComplete1.m4a" type="audio/mp4" />
	</audio>
</div>
<script> 
$(document).ready(function(){
	selectBox();
});

function selectBox() {
	$('.slct_head').click(function () {
		if(!$(this).parent().hasClass('on')){
			$(this).parent().addClass('on').children('.slct_list').stop().slideDown('fast');
		} else{
			$(this).parent().removeClass('on').children('.slct_list').hide();
		}
		$(this).parent().siblings().removeClass('on').children('.slct_list').hide();
	});
	
	$(document).on("click", function(event){ //바깥 클릭시 셀렉트박스 닫기
        if(!$(event.target).closest(".slct_head").length){
            $(".slct_list").hide();
        }
    });
}
</script>
</body>
</html>