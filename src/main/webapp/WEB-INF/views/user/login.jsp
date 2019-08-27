<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>user login</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		// 로그인 버튼 클릭
		$("#login").click(function(){
 	        
			// 유효성 체크
			if($("#userId").val() == ""){
	            alert("아이디를 입력해주세요");
	            $("#userId").focus();
	            return;
	        }else if($("#userPassword").val() == ""){
	            alert("비밀번호를 입력해주세요");
	            $("#userPassword").focus();
	            return;
	        }
			// admin 이면 
			if($("#userId").val() == "admin"){
				$("#frm").submit(); // 전송
			
			// admin 아니면
			}else {
				// 카카오 ID 로그인인지 여부 확인
	 	        var userId=$("#userId").val();
	 	        var result="";
	 	        $.ajax({
					type:"POST",
					url:"${pageContext.request.contextPath}/socialCheckAjax",		
					dataType: "text",
					data:"${_csrf.parameterName}=${_csrf.token}&userId="+userId,	 
					success:function(data){
						result=data;
						if(data=="fail"){// 존재할때
							alert("kakaoID로 로그인 불가능합니다.");  
						}else if (data=="ok") {// 존재안할때						
							//alert("로그인 성공"); 	
							$("#frm").submit(); // 전송
						}
					} ,
					error: function( error ) {
						alert("ID 또는 비밀번호가 틀립니다.");
						console.log( "아이디체크 검색오류" );
					}
				});//ajax
			}
		});
	})
</script>
</head>

<body>
	<div class="contentWrap">
		<div class="bg_type01 login" id="container">
			<div class="titWrap">
				<strong class="tit"><span>특별한 날</span>엔 서부웨이와 함께!</strong>
				<h2>환경을 생각하는 서부웨이에 오신것을 환영합니다.</h2>
			</div>
			<!-- sub content s -->
			<div id="content">
				<div class="inquiry_wrapper">
					<h2 class="subTitle">로그인</h2>

					<div class="content">
					<!-- 회원 로그인 -->
					<form id="frm" method="post" name="frm" action="${pageContext.request.contextPath}/user/userLogin" >
							<!-- security csrf 토큰 전송 -->
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" >
							<!-- board list s -->
							<div class="board_write_wrapper">
								<table>
									<caption>회원가입 테이블</caption>
									<colgroup>
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<td><span class="form_text" style="width: 100%"> 
											<input maxlength="30" name="userId" id="userId" placeholder="아이디를 입력" type="text"/>
											</span></td>
										</tr>
										<tr>
											<td><span class="form_text" style="width: 100%"> 
											<input maxlength="16" name="userPassword" id="userPassword" placeholder="비밀번호를 입력" type="password"/>
											</span></td>
										</tr>
									</tbody>
								</table>
								<!-- errorMessage != null 이면 이라는 조건문 작성하자! -->
									<c:if test="${requestScope.errorMessage!=null}">
										<span class="loginTxt" style="color: red">${requestScope.errorMessage}</<span>
									</c:if>
							</div>
							<div class="btns_wrapper">
								<a class="btn bgc_point i_reg" href="#" style="width: 170px;" id="login" ><span>로그인</span></a> 
								<a class="btn bgc_point kakao" href="https://kauth.kakao.com/oauth/authorize?client_id=fc703eb6c92f8e680a4d2922d4000a47&redirect_uri=http://localhost:8000/controller/kakaoLogin&response_type=code" style="width: 170px;" id="kakaoLogin" ><span>카카오 로그인</span></a>
							</div>
						</form>
						
						<div class="login-util">
							<ul>
								<li><a href="#;">아이디 찾기</a></li>
								<li><a href="#;">비밀번호 찾기</a></li>
								<li><a href="${pageContext.request.contextPath}/user/register">회원가입</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!--// sub content e -->
		</div>
	</div>
</body>
</html>


