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
		<div class="total">
			<span>총 결제금액</span>
			<span class="price">￦ 9,900</span>
		</div>
		<div class="selectStore">
			<h3>매장선택</h3>
			판교 <input type="radio">
			강남 <input type="radio">
		</div>
		<div class="payment"> 
			<h3>결제하기</h3>
			보유포인트 <input type="text"><input type="button" value="충전하기"><br>
			사용포인트 <input type="text">
		</div>
		<div class="inquiry_wrapper orderBtn">
			<div class="btns_wrapper">
				<a class="btn bgc_point i_reg od" style="width:170px"><span>결제하기</span></a>
			</div> 
		</div>
	</div>
<script> 

</script>
</body>
</html>