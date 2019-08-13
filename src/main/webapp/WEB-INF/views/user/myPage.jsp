<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<%-- <%@ include file="/header.jsp"%> --%>

	<div class="contentWrap">
		<div class="bg_type01" id="container">
			<div class="sub_header" style="position: absolute; background-color: transparent;">
				<div class="content">
					<a class="logo" href="/" style="opacity: 0;">HOME</a>
					<!-- sub location -->
					<div class="sub_loc">
						<ul>
							<li><a href="/franchise">써브웨이 프랜차이즈</a></li>
							<li><a href="/franchiseFaq">가맹관련FAQ</a></li>
							<li class="active"><a href="#">가맹신청ㆍ문의</a></li>
							<li><a href="/franchiseBranchGuide">지사안내</a></li>
							<li><a href="/franchiseInformation">사업설명회</a></li>
						</ul>
					</div>
					<!--// sub location -->
					<a class="top" href="#none" style="opacity: 0;">TOP</a>
				</div>
			</div>

			<!-- sub content s -->
			<div id="content">
				<div class="inquiry_wrapper">
					<h2 class="subTitle">가맹신청ㆍ문의</h2>

					<div class="content">
						<form id="frm" method="post" name="frm">
							<h3 class="h_title">문의 작성하기</h3>

							<!-- board list s -->
							<div class="board_write_wrapper">
								<p class="rt_note">
									필수입력사항<span class="ess"></span>
								</p>
								<table>
									<caption>문의 작성하기 테이블</caption>
									<colgroup>
										<col width="130px">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th scope="col">이름<span class="ess"></span></th>
											<td><span class="form_text" style="width: 100%"> <input maxlength="10"
													name="writer" placeholder="이름을 입력해주세요" type="text" value="">
											</span></td>
										</tr>
										<tr>
											<th scope="col">연락처<span class="ess"></span></th>
											<td><span class="form_text" style="width: 100%"> <input maxlength="15"
													name="contact" onkeyup="subwayCommon.inputOnlyDigit(this);"
													placeholder="연락 가능한 전화번호를 입력해주세요" type="text" value="">
											</span></td>
										</tr>
										<tr>
											<th scope="col">이메일<span class="ess"></span></th>
											<td><span class="form_text" style="width: 200px"> <input maxlength="50"
													name="email1" onkeyup="subwayCommon.inputEmail(this);" placeholder="이메일" type="text"
													value="">
											</span> <span class="em">@</span> <span class="form_text" style="width: 200px"> <input
													maxlength="50" name="email2" onkeypress="view.onchangeEmailDomail(); return true;"
													onkeyup="subwayCommon.inputEmail(this);" type="text" value="">
											</span>
												<div class="form_select" style="width: 196px; margin-left: 7px;">
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
												</div></td>
										</tr>
										<tr>
											<th scope="col">지역<span class="ess"></span></th>
											<td>
												<div class="form_select" style="width: 196px;">
													<select name="region1">
														<option value="">시/도</option>
														<option value="001">서울특별시</option>
														<option value="002">경기도</option>
														<option value="003">인천광역시</option>
														<option value="004">대전광역시</option>
														<option value="005">세종특별자치시</option>
														<option value="006">충청남도</option>
														<option value="007">경상남도</option>
														<option value="008">울산광역시</option>
														<option value="009">부산광역시</option>
														<option value="010">대구광역시</option>
														<option value="011">제주특별자치도</option>
														<option value="012">전라북도</option>
														<option value="013">충청북도</option>
														<option value="014">광주광역시</option>
														<option value="015">전라남도</option>
														<option value="016">경상북도</option>
														<option value="017">강원도</option>
													</select>
												</div>
												<div class="form_select" id="select2" style="width: 196px;">
													<select name="region2">
														<option value="">시/군/구</option>
													</select>
												</div>
											</td>
										</tr>
										<tr>
											<th scope="col">제목<span class="ess"></span></th>
											<td><span class="form_text" style="width: 100%"> <input maxlength="50"
													name="subject" placeholder="제목을 입력해주세요" type="text" value="">
											</span></td>
										</tr>
										<tr>
											<th scope="col">내용<span class="ess"></span></th>
											<td><span class="form_textarea" style="width: 100%"> <textarea cols="5"
														maxlength="500" name="content" rows="10" style="height: 230px;"></textarea>
											</span></td>
										</tr>
										<tr>
											<th scope="col">첨부파일</th>
											<td><label class="form_file" style="width: 466px;"> <input data-maxsize="2"
													data-maxupload="1" id="file" name="file" onchange="formFile(this); return false;"
													type="file"> <input readonly="readonly" type="text">
											</label> <span class="file_note">※ 등록 가능 확장자 : pdf,docx,pptx,xlsx,jpg,gif,png / 최대 2MB</span></td>
										</tr>
									</tbody>
								</table>

								<div class="agree_info">
									<p>신청·문의사항에 대한 답변은 메일로 발송됩니다. 동의하시겠습니까?</p>
									<!-- checkbox -->
									<label class="form_checkbox"> <input name="agree3" type="checkbox"> <span
										class="icon"></span>예, 동의합니다.
									</label>
									<!--// checkbox -->
								</div>

								<div class="inquiry_notice">
									<ul>
										<li>· 문의가 집중되거나 주말의 경우 답변이 지연될 수 있습니다. 최대한 빠르게 답변 드리도록 하겠습니다.</li>
										<li>· 욕설, 비속어, 비방성 등의 부적절한 단어 포함되어 있는 경우, 답변 진행이 어려울 수 있습니다.</li>
									</ul>
								</div>
							</div>

							<div class="btns_wrapper">
								<a class="btn bgc_white" href="#" onclick="view.cancel();return false;"
									style="width: 126px;"><span>취소</span></a> <a class="btn bgc_point i_reg" href="#"
									onclick="view.save();return false;" style="width: 170px;"><span>등록하기</span></a>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!--// sub content e -->
		</div>
	</div>

	<%-- <%@ include file="/footer.jsp"%> --%>
</body>
</html>


