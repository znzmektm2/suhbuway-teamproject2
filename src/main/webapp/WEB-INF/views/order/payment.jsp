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
	<h2 class="subTitle">결제하기</h2>
	<div class="board_list_wrapper step1"> 
		<table>
			<thead>
				<tr>
					<th scope="col">메뉴</th>
					<th scope="col">빵</th>
					<th scope="col">추가토핑</th>
					<th scope="col">뺄 야채종류</th>
					<th scope="col">소스종류</th>
					<th scope="col">사이드메뉴&amp;음료</th>
					<th scope="col">금액</th>
				</tr>
			  </thead>
			<tbody>
				<tr class="on">
					<td><ul><li><span class="delete">삭제</span><span>쉬림프 아보카도</span><span>15cm</span><span class="price">8,000</span></li></ul></td>
					<td><ul><li><span>위트</span><span class="deleteItem">삭제</span></li></ul></td>
					<td><ul><li><span>베이컨 비츠</span><span class="price">900</span><span class="deleteItem">삭제</span></li></ul></td>
					<td><ul><li><span>양상추</span><span class="deleteItem">삭제</span></li></ul></td>
					<td><ul><li><span>마요네즈</span><span class="deleteItem">삭제</span></li></ul></td>
					<td><ul><li><span>더블 초코칩 쿠키</span><span class="price">1,000</span><span class="deleteItem">삭제</span></li></ul></td>
					<td><span class="orderPrice">9,900</span></td>
				</tr>
			</tbody>
		</table>
		<h3 class="h_title">정보입력</h3>
		<!-- board list s -->
		<table class="payInfoTable">
			<caption>회원가입 테이블</caption>
			<colgroup>
				<col width="130px">
				<col width="*">
			</colgroup>
			<tbody>
				<tr>
					<th scope="col">매장선택<span class="ess"></span></th>
					<td>
						<div class="select_box selectMenuKind">
							<span class="slct_head">매장 선택</span>
							<div class="slct_list">
								<ul>
									<li><a href="#" class="default">매장 선택</a></li>
									<li><a href="#" data-val="sandwich">판교</a></li>
									<li><a href="#" data-val="salad">강남</a></li>
								</ul>
							</div> 
						</div>
					</td>
				</tr>
				<tr>
					<th scope="col">결제하기<span class="ess"></span></th>
					<td>
						<ul>
							<li>보유포인트 <input type="text" value="10,000" readonly><a href="#">충전하기</a></li>
							<li>사용포인트 <input type="text"></li>
						</ul>
					</td>
				</tr>
				<tr>
					<th scope="col">총 결제금액<span class="ess"></span></th>
					<td><span class="price"> 9,900</span></td>
				</tr>
			</tbody>
		</table>
		<div class="inquiry_wrapper orderBtn">
			<div class="btns_wrapper">
				<a href="${pageContext.request.contextPath}/order/completeOrder" class="btn bgc_point i_reg od" style="width:170px"><span>결제하기</span></a>
			</div> 
		</div>
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