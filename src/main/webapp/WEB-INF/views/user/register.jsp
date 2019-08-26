<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>user register</title>

<script src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		// # 아이디 길이 검사
		var idState = false;
		$("#userId").keyup(function(){
			var userId=$(this).val().trim();
			if( userId.length<4 || userId.length>10 ){ // 4글자 미만이거나 10글자 이상이면
				$("#idcheckspan").html("4글자 이상 10글자 이하로 입력해주세요.").css("color","red");
				return;
			} else {
				$("#idcheckspan").html("");
				idState = true;
			}//else
		});//keyup
		
		// # 연락처 길이 검사
		var phoneState = false;
		$("#userPhone").keyup(function(){
			var userPhone=$(this).val().trim();
			if( userPhone.length>11 ){ // 10글자 이상이면
				alert("연락처는 11글자 이하로 입력해주세요.");
				$("#userPhone").val("");
				return;
			} 
		});//keyup
		
		// # 아이디 일치 검사
		$("#idCheck").click(function(){
			if( idState== false ) {
				alert("아이디 길이가 맞지 않습니다.");
				return;
			}
			var userId = $("#userId").val().trim();
						
			$.ajax({
				type:"POST",
				url:"${pageContext.request.contextPath}/idcheckAjax",		
				dataType: "text",
				data:"${_csrf.parameterName}=${_csrf.token}&userId="+userId,	
				success:function(data){		
					if(data=="fail"){
					$("#idcheckspan").html("  "+ userId +"는 사용 불가능합니다.").css("color","red");
					}else{						
						$("#idcheckspan").html("  "+ userId +"는 사용 가능합니다.").css("color","blue");		
					}					
				} ,
				error: function( error ) {
					console.log( "아이디체크 검색오류" );
				} 
			});//ajax
		})//click
		
		// # 비빌번호 일치 검사
		$("#checkedPassword").keyup(function(){
			var str = "";
			if( $(this).val()==$("#userPassword").val() ){
				$("#pwdCheck").css("color", "blue")
				str += "비밀번호가 일치합니다.";			
			}else{
				$("#pwdCheck").css("color", "red")
				str += "비밀번호가 일치하지않습니다.";
			}
			$("#pwdCheck").text(str);
		})	
				
		// # 이메일 선택박스 클릭
 		$("#emailDomain").change(function(){
 			console.log( "선택된 이메일 : " + $(this).val() );	
 			var domain = $(this).val();
 			$("#email2").val( domain );
		})
		
		// # 등록하기(회원가입)
 		$('a.btn.bgc_point.i_reg').on('click',function(){
 			//checkValid();
 			if( checkValid()==true ) {
				// 이메일 조합
				var email1 = $("#email1").val(); 
				var email2 = $("#email2").val();
				var userEmail = email1+"@"+email2;
				$("#userEmail").val( userEmail );
				console.log("전송될 userEmail: "+ userEmail );
		
				$("#registerForm").submit();//전송
			} 
		})//click
		
		// # 취소
		$("a.btn.bgc_white").click(function(){
			$("#idcheckspan").html("");
			$("#pwdCheck").text("");
			$( "#registerForm" ).each( function () {
	            this.reset();
	        });
		})//click
	})
	// 유효성 체크
	function checkValid() {
   		var f = window.document.registerForm;
   		console.log(f.userId.value)
   		if(f.socialType.value=="") {// 쇼셜이면
			if ( f.userId.value == "") {
	 		    alert( "아이디를 입력해 주세요." );
				f.userId.focus();
				return false;
   	 		}
			if ( f.userPassword.value == "" ) {
				alert( "비밀번호를 입력해 주세요." );
				f.userPassword.focus();
				return false;
			}
			if ( f.checkedPassword.value == "" ) {
				alert( "비밀번호 확인을 입력해 주세요." );
				f.checkedPassword.focus();
				return false;
			}
			if ( f.userName.value == "" ) {
				alert( "이름을 입력해 주세요." );
				f.userName.focus();
				return false;
			}
   		}
		if ( f.userPhone.value == "" ) {
        	alert( "핸드폰번호를 입력해 주세요." );
        	f.userPhone.focus();
        	return false;
    	}
		if ( f.email1.value == "" ) {
        	alert( "이메일을 입력해 주세요" );
        	f.email1.focus();
        	return false;
    	}
		if ( f.email2.value == "" ) {
        	alert( "이메일을 입력해 주세요" );
        	f.email2.focus();
        	return false;
    	}
    	return true;
	}

	/* 프로필 사진 이름으로 표시하기 위한 함수 */
	function formFile(fis) {
		var str=fis.value;
		var strFileName=str.lastIndexOf('\\');
		var result = str.substring(strFileName+1);
		$("#userProfileImg").val(result);
	}
	
</script>
</head>
<body>
<div class="contentWrap">
	<div class="bg_type01" id="container">
		<!-- sub content s -->
		<div id="content">
			<div class="inquiry_wrapper">
				<h2 class="subTitle">회원가입</h2>
				<div class="content">
					<form id="registerForm" method="post" name="registerForm" enctype="multipart/form-data"
							 action="${pageContext.request.contextPath}/userRegister?${_csrf.parameterName}=${_csrf.token}">
						<!-- 스프링 security 4에선 POST 전송시무조건 csrt 를 보내야 한다. (GET은 안보내도 됨)-->
						<%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" > --%>
						
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
									<input type="hidden" name="socialType" id="socialType" value="${socialType}" /> 
									<input type="hidden" name="socialToken" id="socialToken" value="${socialToken}" /> 
									
									<!-- 쇼셜 회원가입일 경우 -->
									<c:if test="${requestScope.socialType!=null}">
									<input type="hidden" name="userId" id="userId" value="${userId}" /> 
									<input type="hidden" name="userPassword" id="userPassword" value="${userId}+${socialType}" /> 
									<input type="hidden" name="checkedPassword" id="checkedPassword" value="${userId}+${socialType}" /> 
									<input type="hidden" name="userName" id="userName" value="${requestScope.userName}" /> 
									</c:if>
									<!-- ======여기부터====== -->
									<c:if test="${requestScope.socialType==null}">
									<tr>
										<th scope="col">아이디<span class="ess"></span></th>
										<td>
											<span class="form_text" style="width:100%">
												<input maxlength="20" name="userId" id="userId" placeholder="아이디를 입력해주세요" type="text" 
												value="${userId}">
											</span>
											<span class="idCheckWrap">
												<input type="button" name="idCheck" id="idCheck" value="중복확인"><span id="idcheckspan"></span>
											</span>
										</td>
									</tr>
									<tr>
										<th scope="col">비밀번호<span class="ess"></span></th>
										<td>
											<span class="form_text" style="width:100%">
												<input maxlength="16" name="userPassword" id="userPassword" placeholder="비밀번호를 입력해주세요" type="password"  >
											</span>
										</td>
									</tr>
									<tr>
										<th scope="col">비밀번호 확인<span class="ess"></span></th>
										<td>
											<span class="form_text" style="width:100%">
												<input maxlength="16" name="checkedPassword" id="checkedPassword" placeholder="비밀번호를 확인해주세요"  type="password" >
											</span>
											<span style="font-size:13px;" id="pwdCheck"></span>
										</td>
									</tr>
									<tr>
										<th scope="col">이름<span class="ess"></span></th>
										<td>
											<span class="form_text" style="width:100%">
												<input maxlength="10" name="userName" id="userName" placeholder="이름을 입력해주세요" type="text" 
												value="${requestScope.userName}">
											</span>
										</td>
									</tr>
									</c:if>
									<!-- ======여기까지====== -->
									<tr>
										<th scope="col">연락처<span class="ess"></span></th>
										<td>
											<span class="form_text" style="width:100%">
												<input maxlength="15" name="userPhone" id="userPhone" placeholder="연락 가능한 전화번호를 입력해주세요" type="text" value="">
											</span>
										</td>
									</tr>
									<tr>
										<th scope="col">이메일<span class="ess"></span></th>
										<td>
											<span class="form_text" style="width:200px">
												<input maxlength="50" name="email1" id="email1" placeholder="이메일" type="text" value="">
											</span>
											<span class="em">@</span>
											<span class="form_text" style="width:200px">
												<input maxlength="50" name="email2" id="email2" type="text">
											</span>
											<div class="form_select" style="width:196px; margin-left:7px;">
												<select id="emailDomain" name="emailDomain">
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
											<!-- dto의 userEmail 맞춰주기위해서  -->
											<input type="hidden" name="userEmail" id="userEmail" value="" >
										</td>
									</tr>
									<tr>
										<th scope="col">프로필</th>
										<td>
											<label class="form_file" style="width:466px;">
												<input maxlength="60" size="40" id="file" name="file" type="file" onchange="formFile(this); return false;">
												<input readonly="readonly" type="text" id="userProfileImg">
											</label>
											<span class="file_note">※ 등록 가능 확장자 : jpg, gif, png</span>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="btns_wrapper">
							<a class="btn bgc_white" href="#"  style="width:126px;"><span>취소</span></a>
							<a class="btn bgc_point i_reg" href="#" style="width:170px;"><span>등록하기</span></a>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!--// sub content e -->
	</div>
</div>
</body>
</html>


