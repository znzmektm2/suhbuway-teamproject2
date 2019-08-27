<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>	
<c:choose>
	<c:when test="${requestScope.userId==null}">
		<div class="info">
			<div class="title">
				<br><br><br>
				<p >로그인하고 접근해주세요</p>
				<br><br><br>
			</div>
		</div>
	</c:when>
	<c:when test="${requestScope.userId!=null}">

	<div class="cart">
		<div class="content">
			<h3 class="h_title">장바구니</h3>
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
							<th scope="col">금액</th>
						</tr>
					</thead>
					<tbody class="item_list">
						<tr class="on">
							<td colspan="6">총 결제금액<span class="ess"></span></td> 
							<td><span class="orderPrice"> 9,900</span></td>
						</tr>
					</tbody>
				</table>
				<h3 class="h_title">정보입력</h3>
		<!-- board list s -->
		<table class="payInfoTable">
			<caption>장바구니 테이블</caption>
			<colgroup>
				<col width="130px">
				<col width="*">
			</colgroup>
			<tbody>
				<tr>
					<th scope="col">매장선택<span class="ess"></span></th>
					<td>
						<div class="select_box selectStore">
							<span class="slct_head">매장 선택</span>
							<div class="slct_list">
								<ul>
									<li><a href="#" class="default">매장 선택</a></li>
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
			</tbody>
		</table>
				<div class="inquiry_wrapper orderBtn">
					<div class="btns_wrapper">
						<a href="" class="btn bgc_point i_reg od confirm" style="width:170px"><span>주문하기</span></a>
					</div> 
				</div>
			</div>
		</div>
	</div>
	<form id="orderForm" action="${pageContext.request.contextPath}/order/confirm" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" >
		<input type="hidden" name="menuList" >
		<input type="hidden" name="store" >
	</form>
	<script>
	$(function() {
		attachItems();
		trDelete();
		selectBox();
		confirmBtn();
	})
	
	// 주문하기 버튼 클릭
	function confirmBtn() {
		$('a.confirm').on('click',function(e) {
			e.preventDefault();
			
			if(!sessionStorage.getItem('menuItem') || sessionStorage.getItem == ''){
				alert('제품이 없습니다.')
			} else  if(selectedStore == '') {
				alert('매장을 선택하시오.');
			} else {
				$('[name=menuList]').val(JSON.stringify(savedItem));
				$('[name=store]').val(JSON.stringify(selectedStore));
				sessionStorage.removeItem('menuItem');
				$('#orderForm').submit();
			} 
		})
	}
	var savedItem = JSON.parse(sessionStorage.getItem('menuItem'));
	var storeList = ${requestScope.list};
	var selectedStore = "";
	var user = "";
	
	// 장바구니 아이템 뿌리기
	function attachItems() {
		$('.orderPrice').parents('tr').siblings('tr').empty();
		var totalPrice = 0;
		$.each(savedItem, function(index, item) {
			var topping = "";
			var side = "";
			totalPrice += item.price;
			
			$.each(item.subMenu, function (ind, ite) {
				if(ite.category == "topping"){
					topping += ite.name + "<br>";
				} else {
					side += ite.name + "<br>";
				}
			});
			var itemInfo = "<tr>"
					+ "<td><ul><li><span class=\"delete\" data-val='" + index + "'>삭제</span><span>" + item.product.name + "</span></li><ul></td>" // 메뉴
					+ "<td>" + item.breadType + "</td>" // 빵
					+ "<td>"+ topping.slice(0,-4) + "</td>" // 추가토핑
					+ "<td>"+ item.veggies.join('<br>') + "</td>" // 야채종류
					+ "<td>"+ item.source.join('<br>') + "</td>" // 소스종류
					+ "<td>"+ side.slice(0,-4) + "</td>" // 사이드 메뉴 & 음료
					+ "<td><span class='price'>"+ formatNumber(item.price) + "<span></td>" // 금액
					+ "</tr>"
			$('.item_list tr:last-child').before(itemInfo);
			
		});
		$('.orderPrice').text(formatNumber(totalPrice));
		addDefaultText();
	}
	
	// 선택없음 뿌리기
	function addDefaultText() {
		$.each($('tbody td'), function(index, item) {
			if($(this).text() == ""){
				$(this).html('<span class="default">선택없음</span>');
			}
	   });
	}
	
	//숫자 콤마 찍기
	function formatNumber(num) {
		return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	}
	
	//행 삭제 
	function trDelete() {
		$('table').eq(0).on('click','.delete', function() {
			var index = $(this).attr('data-val');
			alert('삭제 하시겠습니까?');
	        savedItem.splice(index, 1)

	        if(savedItem.length == 0){ // savedItem에 항목이 없으면...
		        sessionStorage.removeItem('menuItem');
	        } else { 
		        sessionStorage.setItem('menuItem', JSON.stringify(savedItem));
	        }
	        attachItems();
	    });
	}
	
	// 매장 셀렉트 박스
	function selectBox() {
		$.each(storeList, function(index, item) {
			var str = '<li><a href="#" data-val="' + item.storeId + '">' + item.storeName + '</a></li>';
			$('.slct_list>ul').append(str);
		})
		
		
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
		// 매장 선택 시 
		$('.selectStore').on('click','div>ul>li>a',function(e) {
			e.preventDefault();
			if(!$(this).hasClass('default')) {
	            $(this).parents('.slct_list').prev('.slct_head').text($(this).text());
				selectedStore = storeList.find(x => x.storeId == $(this).attr('data-val'))
				//console.log(selectedStore)
			} else {
				
			}
		})
	}
	</script>
	</c:when>
</c:choose>
</body>
</html>


