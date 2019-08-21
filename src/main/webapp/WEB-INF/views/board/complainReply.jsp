<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript">
function checkValid() {
    var f = window.document.frm;
		
	if ( f.title.value == "") {
	    alert( "제목을 입력해 주세요." );
	    f.title.focus();
		return false;
    }
	if ( f.content.value == "" ) {
		alert( "내용을 입력해 주세요." );
		f.content.focus();
		return false;
	}
	
	
    return true;
}

</script>
</head>
<body>
<div class="inquiry_wrapper">

					<h2 class="subTitle">매장 답변</h2>

					<div class="content">
						<form id="frm" method="post" name="frm" onSubmit='return checkValid()' action="${pageContext.request.contextPath}/board/reply">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" >
						<%-- <input type=hidden name="userId" value="<sec:authentication property="principal.userId" />"> --%><!-- 관리자 아이디로 바꿔줘야 한다 -->
						<input type=hidden name="complainId" value="${complainId}">
						<div class="board_write_wrapper">
							<p class="rt_note">필수입력사항<span class="ess"></span></p>
							<table>
								<caption>매장 답변 작성하기 테이블</caption>
								<colgroup>
									<col width="130px">
									<col width="*">
								</colgroup>
								<tbody>
									<tr>
										<th scope="col">제목<span class="ess"></span></th>
										<td>
											<span class="form_text" style="width:100%">
												<input maxlength="30" name="storeTitle" placeholder="제목을 입력해주세요" type="text">
											</span>
										</td>
									</tr>
									<tr>
										<th scope="col">내용<span class="ess"></span></th>
										<td>
											<span class="form_textarea" style="width:100%">
												<textarea cols="5" maxlength="300" name="storeContent" rows="10" style="height:300px;"></textarea>
											</span>
										</td>
									</tr>
								</tbody>
							</table>
							
							<div class="inquiry_notice">
								<ul>
									<li>· 고객이 있기에 지금의 저희가 있습니다. 최선을 다해 답변합시다.</li>
									<li>· 욕설, 비속어, 비방성 등의 부적절한 단어 포함되어 있는 경우, 불이익을 받을 수 있습니다.</li>
								</ul>
							</div>

						<div class="btns_wrapper">
							<a class="btn bgc_white" href="${pageContext.request.contextPath}/board/complainList" style="width:126px;"><span>취소</span></a>
							<button class="btn bgc_point i_reg" type="submit" style="width:170px;"><span>등록하기</span></button>
						</div>
						</form>
					</div>
				</div>
</body>
</html>