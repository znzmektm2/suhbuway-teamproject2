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
	<div class="bg_type01" id="container">
		<!-- sub content s -->
		<div id="content">
			<div class="inquiry_wrapper">
				<h2 class="subTitle">회원가입</h2>

				<div class="content">
					<form id="frm" method="post" name="frm">
						<h3 class="h_title">정보입력</h3>
	
						<!-- board list s -->
						<div class="board_write_wrapper">
							<p class="rt_note">필수입력사항<span class="ess"></span></p>
							<table>
								<caption>회원가입 테이블</caption>
								<colgroup>
									<col width="130px">
									<col width="*">
								</colgroup>
								<tbody>
									<tr>
										<th scope="col">아이디<span class="ess"></span></th>
										<td>
											<span class="form_text" style="width:100%">
												<input maxlength="20" name="writer" placeholder="아이디를 입력해주세요" type="text" value="">
											</span>
										</td>
									</tr>
									<tr>
										<th scope="col">비밀번호<span class="ess"></span></th>
										<td>
											<span class="form_text" style="width:100%">
												<input maxlength="16" name="writer" placeholder="비밀번호를 입력해주세요" type="password" value="">
											</span>
										</td>
									</tr>
									<tr>
										<th scope="col">비밀번호 확인<span class="ess"></span></th>
										<td>
											<span class="form_text" style="width:100%">
												<input maxlength="16" name="writer"  placeholder="비밀번호를 확인해주세요"  type="password" value="">
											</span>
										</td>
									</tr>
									<tr>
										<th scope="col">이름<span class="ess"></span></th>
										<td>
											<span class="form_text" style="width:100%">
												<input maxlength="10" name="writer" placeholder="이름을 입력해주세요" type="text" value="">
											</span>
										</td>
									</tr>
									<tr>
										<th scope="col">연락처<span class="ess"></span></th>
										<td>
											<span class="form_text" style="width:100%">
												<input maxlength="15" name="contact" onkeyup="subwayCommon.inputOnlyDigit(this);" placeholder="연락 가능한 전화번호를 입력해주세요" type="text" value="">
											</span>
										</td>
									</tr>
									<tr>
										<th scope="col">이메일<span class="ess"></span></th>
										<td>
											<span class="form_text" style="width:200px">
												<input maxlength="50" name="email1" onkeyup="subwayCommon.inputEmail(this);" placeholder="이메일" type="text" value="">
											</span>
											<span class="em">@</span>
											<span class="form_text" style="width:200px">
												<input maxlength="50" name="email2" onkeypress="view.onchangeEmailDomail(); return true;" onkeyup="subwayCommon.inputEmail(this);" type="text" value="">
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
							<a class="btn bgc_white" href="#" onclick="view.cancel();return false;" style="width:126px;"><span>취소</span></a>
							<a class="btn bgc_point i_reg" href="#" onclick="view.save();return false;" style="width:170px;"><span>등록하기</span></a>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!--// sub content e -->
	</div>
</div>

<%-- <%@ include file="/footer.jsp"%> --%>
<script>
$(document).ready(function(){
    mainScript();
});

function mainScript(){
	//메인 슬라이드
	$('.main_tap_event_wrapper').bxSlider({
		auto : true,
		autoStart : true,
		stopAutoOnClick : true,
		pause : 3000,
		touchEnabled:false
	});
	
	//메인 subway menu
	var slider = $('.subway_menu_slider>div').bxSlider({
		slideWidth:1200,
		infiniteLoop:false,
		pager:false,
		touchEnabled:false
	});
	
	$('.tab ul li span').on('click', function(){
		var thisIndex = $(this).parent().index();
		$(this).parent('li').addClass('active').siblings('li').removeClass('active');
		$('.subway_menu_slider_wrapper>div').eq(thisIndex).addClass('active').siblings().removeClass('active');
	});
	
	$('.subway_menu_slider ul li').on('mouseenter', function(){
		$(this).css({'width':'350px','margin':0});
		$(this).siblings('li').css({'margin':0});
	})

	$('.subway_menu_slider ul li').on('mouseleave', function(){
		$(this).css({'width':'260px','marginLeft':30});
		$(this).siblings('li').css({'marginLeft':30});
	})
	

}
</script>
</body>
</html>


