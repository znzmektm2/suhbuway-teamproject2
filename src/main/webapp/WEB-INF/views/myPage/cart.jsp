<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
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
						<tr>
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
										<span>Bacon Cheesy 웨지 포테이토</span>
										<span class="price">￦200</span>
									</li>
								</ul>
							</td>
							<td><span class="orderPrice">￦  7,000</span></td>
						</tr>
						<tr>
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
										<span>Bacon Cheesy 웨지 포테이토</span>
										<span class="price">￦200</span>
									</li>
								</ul>
							</td>
							<td><span class="orderPrice">￦  7,000</span></td>
						</tr>
					</tbody>
				</table>
				<div class="total">
					<span>총 결제금액</span>
					<span class="price">￦ 14,000</span>
				</div>
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


