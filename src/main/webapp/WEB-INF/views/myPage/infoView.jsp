<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>	
	<div class="infoView">
		<div class="content">
			<form id="frm" method="post" name="frm">
				<h3 class="h_title">정보입력</h3>
				<p class="rt_note">필수입력사항<span class="ess"></span></p>
				<!-- board list s -->
				<div class="board_write_wrapper">
					<table>
						<caption>회원가입 테이블</caption>
						<colgroup>
							<col width="130px">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th scope="col">아이디</th>
								<td>id123</td>
							</tr>
							<tr>
								<th scope="col">새 비밀번호<span class="ess"></span></th>
								<td>
									<span class="form_text" style="width:100%">
										<input maxlength="16" name="writer" placeholder="비밀번호를 입력해주세요" type="password" value="">
									</span>
								</td>
							</tr>
							<tr>
								<th scope="col">새 비밀번호 확인<span class="ess"></span></th>
								<td>
									<span class="form_text" style="width:100%">
										<input maxlength="16" name="writer" placeholder="비밀번호를 확인해주세요" type="password" value="">
									</span>
								</td>
							</tr>
							<tr>
								<th scope="col">이름</th>
								<td>나의이름은</td>
							</tr>
							<tr>
								<th scope="col">연락처<span class="ess"></span></th>
								<td>
									<span class="form_text color" style="width:100%">
										<input maxlength="15" name="contact" type="text" value="01022225555">
									</span>
								</td>
							</tr>
							<tr>
								<th scope="col">이메일<span class="ess"></span></th>
								<td>
									<span class="form_text color" style="width:200px">
										<input maxlength="50" name="email1" type="text" value="asdf123">
									</span>
									<span class="em">@</span>
									<span class="form_text color" style="width:200px">
										<input maxlength="50" name="email2" type="text" value="gmail.com">
									</span>
									<div class="form_select" style="width:196px; margin-left:7px;">
										<select id="emailDomain" name="dmain" onchange="view.domain();">
											<option value="">직접입력</option>
											<option value="naver.com">naver.com</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="hotmail.com">hotmail.com</option>
											<option value="nate.com">nate.com</option>
											<option value="empas.com">empas.com</option>
											<option value="dreamwiz.com">dreamwiz.com</option>
											<option value="lycos.co.kr">lycos.co.kr</option>
											<option value="korea.com">korea.com</option>
											<option value="gmail.com">gmail.com</option>
											<option value="hanmir.com">hanmir.com</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="col">프로필</th>
								<td>
									<div class="profileImg">
										<span>
											<img alt="" src="${pageContext.request.contextPath}/resources/images/common/default.png">
										</span>
									</div>
									<label class="form_file" style="width:466px;">
										<input data-maxsize="2" data-maxupload="1" id="file" name="file" onchange="formFile(this); return false;" type="file">
										<input readonly="readonly" type="text">
									</label>
	
									<span class="file_note">※ 등록 가능 확장자 : jpg, gif, png / 최대 2MB</span>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="btns_wrapper">
					<a class="btn bgc_point i_reg" style="width:170px"><span>확인</span></a>
					<a class="btn bgc_point i_reg od" style="width:170px"><span>탈퇴하기</span></a>
				</div>
				<div class="btns_wrapper">
				</div>
			</form>
		</div>
	</div>
</body>
</html>


