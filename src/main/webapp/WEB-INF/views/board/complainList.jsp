<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
 th,td{padding-top: 15px; padding-bottom: 15px; text-align: center;}
 .white {
 	width: 100px;
    margin: auto;
    }
    .detail{
    text-align: center;
    display: block;
    border: 1px solid #dddddd;
    border-radius: 50px;
    height: 28px;
    line-height: 28px;
    background-color: #fff;
    color: #666666;
    font-size: 13px;
    letter-spacing: -0.02em;
    padding: 0 13px;
    transition-duration: 0.3s;
    }
</style>
</head>
<body>
	<table style="margin-bottom: 20px;">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col" style="padding-left: 100px; padding-right: 100px;">제목</th>
				<th scope="col">게시글 날짜</th>
				<th scope="col">게시글 상황</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
    <c:when test="${empty requestScope.list}">
	<tr>
	    <td></td>
        <td>
         	  등록된 상품이 없습니다.
        </td>
    </tr>
    </c:when>
    <c:otherwise>
	<c:forEach items="${requestScope.list}" var="complain">
		    <tr>
		        <td>${complain.userId}</td>
		        <td><a href="${pageContext.request.contextPath}/board/Read/${complain.complainId}">${complain.title}</a></td>
		        <td>${complain.date}</td>
		        <td>
		        <c:choose>
		         <c:when test="${complain.state==false}">처리 전</c:when>
		         <c:otherwise>처리 완료</c:otherwise>
		        </c:choose>
		        </td>
		    </tr>
    </c:forEach>
	</c:otherwise>
    </c:choose>
		</tbody>
	</table>
	
	   <div class="white">
            <ul>
                <li class="detail"><a href="${pageContext.request.contextPath}/board/write">글쓰기</a></li><br>
            </ul>
        </div>
</body>
</html> 