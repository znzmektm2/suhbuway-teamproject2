<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script>
$(function() {
	attachItems();
	addDefaultText();
	trDelete();
})

var obj = JSON.parse(sessionStorage.getItem('menuItem'));
console.log(obj);

// 장바구니 아이템 뿌리기
function attachItems() {
	var totalPrice = 0;
	$.each(obj, function(index, item) {
		console.log(item);
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
		console.log(itemInfo);
		$('tbody tr:last-child').before(itemInfo);
		
	});
	$('.orderPrice').text(formatNumber(totalPrice));
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
        $(this).parents('tr').empty();
    });
	 
}


</script>
</head>
<body>	
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
					<tbody>
						<tr class="on">
							<td colspan="6">총 결제금액<span class="ess"></span></td> 
							<td><span class="orderPrice"> 9,900</span></td>
						</tr>
					</tbody>
				</table>
				<div class="inquiry_wrapper orderBtn">
					<div class="btns_wrapper">
						<a href="${pageContext.request.contextPath}/order/payment" class="btn bgc_point i_reg od" style="width:170px"><span>주문하기</span></a>
					</div> 
				</div>
			</div>
		</div>
	</div>
</body>
</html>


