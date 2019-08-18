<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>	
	<div class="myPage info">
		<div class="headerBg">
			<h2>MY SUHBUWAY</h2>
		</div>
		<div class="wrapper">
			<div class="sub">
				<ul>
					<li><a href="${pageContext.request.contextPath}/myPage/order">주문내역</a></li>
                    <li><a href="${pageContext.request.contextPath}/myPage/cart">장바구니</a></li>
                    <li><a href="${pageContext.request.contextPath}/myPage/customer">문의사항</a></li>
                    <li><a href="${pageContext.request.contextPath}/myPage/point">포인트</a></li>
                    <li><a class="active" href="${pageContext.request.contextPath}/myPage/info">내정보</a></li>
				</ul>
			</div>
			<div class="contBox">
				<div class="container">
					<div class="title">
						<p>
							개인정보를 안전하게 보호하기 위하여<br>비밀번호를 한번 더 입력해주세요.
						</p>
					</div>
					<div class="form">
						<table class="tbl">
							<colgroup>
								<col width="20%">
								<col width="auto">
							</colgroup>
							<tbody>
								<tr>
									<th>아이디</th>
									<td>znzmektm2</td>
								</tr>
								<tr>
									<th>비밀번호</th>
									<td><input text-input="" type="password" class="wf"
										placeholder="비밀번호를 입력하세요."></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="btn-cover">
						<a class="btn slim">확인</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


