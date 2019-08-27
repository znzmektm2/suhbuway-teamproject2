<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

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

	<div class="orders">
		<div class="content">
			<h3 class="h_title">주문내역</h3>
			<div class="board_list_wrapper step1">
				<table>
					<thead>
						<tr>
							<th scope="col">주문일시</th>
							<th scope="col">매장명</th>
							<th scope="col">주문메뉴</th>
							<th scope="col">결제금액</th>
							<th scope="col">주문상태</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${ empty requestScope.list}">
								<tr>
									<td colspan="9">주문내역이 존재하지 않습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${requestScope.list}" var="orderList">
									<tr>
										<td>${orderList.regdate}</td>
										<td>${orderList.store.storeName }</td>
										<td><span class="menuImg"> <img alt="쉬림프"
												src="${pageContext.request.contextPath}/resources/images/menu/${orderList.items.get(0).mainMenu.category}/${orderList.items.get(0).mainMenu.imgUrl}">
										</span><a href="#;" class="menuTit">${orderList.items.get(0).mainMenu.name} ${orderList.items.get(0).length} 외</a></td>
										<td>￦ ${orderList.total}</td>
										<td>${orderList.orderState}</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	</c:when>
</c:choose>
</body>
</html>


