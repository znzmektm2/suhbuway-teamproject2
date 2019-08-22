<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>	
	<div class="info">
		<div class="title">
			<p>개인정보를 안전하게 보호하기 위하여<br>비밀번호를 한번 더 입력해주세요.</p>
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
						<td>
							<input text-input="" type="password" class="wf" placeholder="비밀번호를 입력하세요.">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="btn-cover">
			<a href="${pageContext.request.contextPath}/myPage/info/infoView"class="btn slim">확인</a>
		</div>
	</div>
</body>
</html>


