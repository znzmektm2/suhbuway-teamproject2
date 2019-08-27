<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
.content {
	font-size: 20px;
	padding-top: 15px;
	padding-bottom: 15px;
	text-align: center
}

.end {
	text-align: end;
}

.btn_list a {
	display: block;
	color: #ffffff;
	font-size: 18px;
	font-weight: 300;
	background-color: #009223;
	height: 50px;
	line-height: 50px;
	border-radius: 50px;
	text-indent: 70px;
	letter-spacing: -0.03em;
	transition-duration: 0.2s;
}

.atch_file_area {
	position: relative;
	z-index: 10;
	height: 16px;
	padding-top: 3px;
}

.atch_file_area .atch_view {
	position: absolute;
	top: 0;
	right: 0;
	padding-right: 15px;
	line-height: 16px;
}

.atch_file_area .atch_view em {
	font-size: 17px;
	font-family: tahoma;
	font-style: normal;
	font-weight: bold;
}

.atch_file_area .ly_atch_file {
	text-align: left;
	position: absolute;
	padding: 0 26px 0 10px;
	border: 1px solid #919191;
	background: #fff;
	line-height: 16px;
}

.atch_file_area .ly_atch_file ul {
	position: relative;
	width: 100%;
	max-height: 102px;
	margin: 9px 0 6px;
	padding: 0 5px 3px 0;
}

.atch_file_area .ly_atch_file li {
	position: relative;
	width: 100%;
	padding-bottom: 2px;
	line-height: 16px;
	vertical-align: top;
}

.atch_file_area .ly_atch_file li .file_name {
	font-size: 12px;
	text-align: left;
}

.atch_file_area .ly_atch_file .clse {
	display: inline-block;
	overflow: hidden;
	position: absolute;
	top: 4px;
	right: 4px;
	width: 16px;
	height: 15px;
	background: url(https://cafe.pstatic.net/cafe4/btn_layer_close3.gif)
		no-repeat 0 0;
}

.atch_file_area .ly_atch_file li .file_name {
	display: inline-block;
	overflow: hidden;
	width: 160px;
	padding-left: 15px;
	background: url(https://cafe.pstatic.net/cafe4/w_ico_file.gif) no-repeat
		0 2px;
	vertical-align: top;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.blind {
	overflow: hidden !important;
	position: absolute !important;
	clip: rect(0, 0, 0, 0) !important;
	width: 1px !important;
	height: 1px !important;
	margin: -1px !important;
}

.atch_file_area .ly_atch_file li .download_opt {
	display: inline-block;
	position: absolute;
	top: 0;
	right: 0;
	font-size: 11px;
}

#replyContent{border-top:1px solid #ddd;}

</style>
<script type="text/javascript">
$(function () {
	var id = "${requestScope.userId}"
	var id2 = "${complain.userId}"
	var file = "${complain.fileName}"
	var replyTitle = "${complain.storeTitle}"
	
	if(id==id2) {
		$("#update").show();
		$("#delete").show();
	} else {
		$("#update").hide();
		$("#delete").hide();
	}
	
	if(file=="") {
		$(".atch_file_area").hide();
	}
	
	if(replyTitle=="") {
		$("#replyContent").hide();
	} else {
		$("#replyContent").show();
	}
	
})

function sendUpdate(){
	document.requestForm.action="${pageContext.request.contextPath}/board/updateForm";
	document.requestForm.submit();
}


function sendDelete(){
		document.requestForm.action="${pageContext.request.contextPath}/board/delete";
		document.requestForm.submit();
}

function replyForm(){
		document.requestReplyForm.action="${pageContext.request.contextPath}/board/replyForm";
		document.requestReplyForm.submit();
}

function oCLShow(attachLayer) {
	$("#attachLayer").show();
}

function oCLHide(attachLayer) {
	$("#attachLayer").hide();
}

</script>
</head>
<body>
	<div class="infoView">
		<div class="content">
			<div class="readWrap">
				<span class="title" style="font-size: 40px;">${complain.title}</span><br>
				<div class="end">
					<!-- 첨부파일 -->
					<div class="atch_file_area">
						<a href="#" id="atch_view m-tcol-c" class="atch_view m-tcol-c"
							onclick="oCLShow('attachLayer');return false;">첨부파일<span
							class="m-tcol-p">(<em>1</em>)
						</span></a>
						<div id="attachLayer" class="ly_atch_file"
							style="display: none; z-index: 1000; top: 15px; right: 0px; width: 240px;">
							<ul>
								<li><span class="file_name">${complain.fileName}</span>
									<div id="attahc" class="download_opt">
										<a
											href="${pageContext.request.contextPath}/board/down?fileName=${complain.fileName}">다운받기</a>
									</div></li>
							</ul>
							<a href="#" onclick="oCLHide('attachLayer');return false;"
								class="clse"><span class="blind">닫기</span></a>
						</div>
					</div>
					<span class="user">작성자 : ${complain.userId}</span><br> <span
						class="state"> <c:choose>
							<c:when test="${complain.state==false}">처리 전</c:when>
							<c:otherwise>처리 완료</c:otherwise>
						</c:choose></span><br> <span class="date">${complain.date}</span><br>
					<br>
				</div>
				<span class="main" style="font-size: 25px;">${complain.content}</span><br>
				<br>
	
				<!-- 매장 답변 -->
				<div id="replyContent">
					<br>
					<br> <span class="title" style="font-size: 40px;">${complain.storeTitle}</span><br>
					<%-- <span class="user">작성자 : ${complain.storeId}</span><br> --%>
					<span class="main" style="font-size: 25px;">${complain.storeContent}</span><br>
					<br>
				</div>
	
				<!-- 수정시 필요한 데이터들을 hidden으로 숨겨놓고 폼 데이터로 보내준다. -->
				<form name="requestForm" method=post action="">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"> 
					<input type=hidden name="complainId" value="${complain.complainId}"> 
					<input type=hidden name="userId" value="${requestScope.userId}">
					<input type=button id="update" value="수정하기" onClick="sendUpdate()">
					<input type=button id="delete" value="삭제하기" onClick="sendDelete()">
				</form>
	
				<!-- 관리자 답변에 필요한 데이터 보내기 -->
				<sec:authorize access="isAuthenticated()">
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<form name="requestReplyForm" method="post" action="">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"> 
							<input type=hidden name="complainId" value="${complain.complainId}"> 
							<input type="button" id="reply" value="답변달기" onClick="replyForm()">
						</form>
					</sec:authorize>
				</sec:authorize>
				<div class="btn_list">
					<a href="${pageContext.request.contextPath}/board/complainList">목록보기</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>