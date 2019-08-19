<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
    text-align: left;
    border-radius: 50px;
    text-indent: 70px;
    letter-spacing: -0.03em;
    transition-duration: 0.2s;

}

</style>
</head>
<body>

	<div class="content">
		<span class="title" style="font-size:40px;">${complain.title}</span><br>
		<div class="end">
		<span class="user">작성자 : ${complain.userId}</span><br>
		<span class="state">
		<c:choose>
				<c:when test="${complain.state==false}">처리 전</c:when>
				<c:otherwise>처리 완료</c:otherwise>
		</c:choose></span><br>
		<span class="date">${complain.date}</span><br><br>
		</div>
		<span class="main" style="font-size:25px;">${complain.content}</span><br><br>
	</div>
	<div class="btn_list"><a href="${pageContext.request.contextPath}/board/complainList">목록보기</a></div><br>

</body>
</html>