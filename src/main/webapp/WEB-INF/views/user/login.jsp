<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<%-- <%@ include file="/header.jsp"%> --%>
	<div class="contentWrap">
		<div class="bg_type01 login" id="container">
			<div class="titWrap">
				<strong class="tit"><span>특별한 날</span>엔 써브웨이와 함께!</strong>
				<h2>환경을 생각하는 서부웨이에 오신것을 환영합니다.</h2>
			</div>
			<!-- sub content s -->
			<div id="content">
				<div class="inquiry_wrapper">
					<h2 class="subTitle">로그인</h2>

					<div class="content">
						<form id="frm" method="post" name="frm">
							<!-- board list s -->
							<div class="board_write_wrapper">
								<table>
									<caption>회원가입 테이블</caption>
									<colgroup>
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<td><span class="form_text" style="width: 100%"> <input maxlength="20"
													name="writer" placeholder="아이디를 입력" type="text" value="">
											</span></td>
										</tr>
										<tr>
											<td><span class="form_text" style="width: 100%"> <input maxlength="16"
													name="writer" placeholder="비밀번호를 입력" type="password" value="">
											</span></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="btns_wrapper ">
								<a class="btn bgc_point i_reg" href="#" style="width: 170px;"><span>로그인</span></a> 
								<a class="btn bgc_point i_reg kakao" href="#" style="width: 170px;"><span>카카오 로그인</span></a>
							</div>
						</form>
						<div class="login-util">
							<ul>
								<li><a href="#;">아이디 찾기</a></li>
								<li><a href="#;">비밀번호 찾기</a></li>
								<li><a href="#;">회원가입</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!--// sub content e -->
		</div>
	</div>
	<%-- <%@ include file="/footer.jsp"%> --%>
</body>
</html>


