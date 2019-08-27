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

		if (f.title.value == "") {
			alert("제목을 입력해 주세요.");
			f.title.focus();
			return false;
		}
		if (f.content.value == "") {
			alert("내용을 입력해 주세요.");
			f.content.focus();
			return false;
		}

		return true;
	}

	function formFile(fis) {
		var str = fis.value;
		var strFileName = str.lastIndexOf('\\');
		var result = str.substring(strFileName + 1);
		$("#fileName").val(result);
	}
</script>
</head>
<body>
	<div class="inquiry_wrapper">
		<h2 class="subTitle">문의 사항</h2>
		<div class="content">
			<form id="frm" method="post" name="frm" onSubmit='return checkValid()'
				enctype="multipart/form-data"
				action="${pageContext.request.contextPath}/board/insert?${_csrf.parameterName}=${_csrf.token}">
				<input type=hidden name="userId" value="${requestScope.userId}">
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
								<th scope="col">제목<span class="ess"></span></th>
								<td><span class="form_text" style="width: 100%"> <input maxlength="30"
										name="title" placeholder="제목을 입력해주세요" type="text">
								</span></td>
							</tr>
							<tr>
								<th scope="col">내용<span class="ess"></span></th>
								<td><span class="form_textarea" style="width: 100%"> <textarea cols="5"
											maxlength="300" name="content" rows="10" style="height: 300px;"></textarea>
								</span></td>
							</tr>
							<tr>
								<th scope="col">첨부파일</th>
								<td><label class="form_file" style="width: 466px;"> <input maxlength="60"
										size="40" id="file" name="file" type="file" onchange="formFile(this); return false;">
										<input readonly="readonly" type="text" id="fileName">
								</label> <span class="file_note">※ 등록 가능 확장자 : pdf,docx,pptx,xlsx,jpg,gif,png</span></td>
							</tr>
						</tbody>
					</table>

					<div class="inquiry_notice">
						<ul>
							<li>· 문의가 집중되거나 주말의 경우 답변이 지연될 수 있습니다. 최대한 빠르게 답변 드리도록 하겠습니다.</li>
							<li>· 욕설, 비속어, 비방성 등의 부적절한 단어 포함되어 있는 경우, 답변 진행이 어려울 수 있습니다.</li>
						</ul>
					</div>

				</div>

				<div class="btns_wrapper">
					<a class="btn bgc_white" href="${pageContext.request.contextPath}/board/complainList"
						style="width: 126px;"><span>취소</span></a>
					<button class="btn bgc_point i_reg" type="submit" style="width: 170px;">
						<span>등록하기</span>
					</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>