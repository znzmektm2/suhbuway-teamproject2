<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2 class="subTitle">뉴스ㆍ공지사항</h2>

	<!-- 뉴스ㆍ공지사항 list s -->
	<div class="board_list_wrapper">
		<div class="content">
			<p class="board_total">
				총<strong>117</strong>건의 게시글이 있습니다.
			</p>
			<table>
				<caption>뉴스ㆍ공지사항 테이블</caption>
				<colgroup>
					<col width="100px">
					<col width="*">
					<col width="50px">
					<col width="120px">
				</colgroup>
				<tbody>
					<tr class="notice">
						<!-- 공지사항일경우 notice 클래스 추가 -->
						<td><div class="icon_notice"></div></td>
						<td>
							<div class="title">
								<a href="${pageContext.request.contextPath}/board/newsView/1" onclick="view.view(213);return false;">써브웨이와 함께하는 Mnet ''쇼미더머니8"</a>
							</div>
						</td>
						<td><div></div></td>
						<td><div class="date">19.07.25</div></td>
					</tr>
					<tr class="notice">
						<!-- 공지사항일경우 notice 클래스 추가 -->
						<td><div class="icon_notice"></div></td>
						<td>
							<div class="title">
								<a href="${pageContext.request.contextPath}/board/newsView/1" onclick="view.view(212);return false;">써브웨이와 함께하는 SBS '의사요한' </a>
							</div>
						</td>
						<td><div></div></td>
						<td><div class="date">19.07.25</div></td>
					</tr>
					<tr class="notice">
						<!-- 공지사항일경우 notice 클래스 추가 -->
						<td><div class="icon_notice"></div></td>
						<td>
							<div class="title">
								<a href="${pageContext.request.contextPath}/board/newsView/1" onclick="view.view(205);return false;">써브웨이 2019년 2월 가격인상 안내 </a>
							</div>
						</td>
						<td><div></div></td>
						<td><div class="date">19.01.30</div></td>
					</tr>
					<tr class="notice">
						<!-- 공지사항일경우 notice 클래스 추가 -->
						<td><div class="icon_notice"></div></td>
						<td><div class="title">
								<a href="${pageContext.request.contextPath}/board/newsView/1" onclick="view.view(190);return false;">고객 경험
									설문조사 프로그램 안내</a>
							</div></td>
						<td><div></div></td>
						<td><div class="date">18.07.20</div></td>
					</tr>
					<tr class="notice">
						<!-- 공지사항일경우 notice 클래스 추가 -->
						<td><div class="icon_notice"></div></td>
						<td><div class="title">
								<a href="${pageContext.request.contextPath}/board/newsView/1" onclick="view.view(177);return false;">개인정보취급방침
									개정안내</a>
							</div></td>
						<td><div></div></td>
						<td><div class="date">18.01.11</div></td>
					</tr>
					<tr>
						<td><div class="num">117</div></td>
						<td><div class="title">
								<a href="${pageContext.request.contextPath}/board/newsView/1" onclick="view.view(213);return false;">써브웨이와
									함께하는 Mnet ''쇼미더머니8"</a>
							</div></td>
						<td><div></div></td>
						<td><div class="date">19.07.25</div></td>
					</tr>
					<tr>
						<td><div class="num">116</div></td>
						<td><div class="title">
								<a href="${pageContext.request.contextPath}/board/newsView/1" onclick="view.view(212);return false;">써브웨이와
									함께하는 SBS '의사요한' </a>
							</div></td>
						<td><div></div></td>
						<td><div class="date">19.07.25</div></td>
					</tr>
					<tr>
						<td><div class="num">115</div></td>
						<td><div class="title">
								<a href="${pageContext.request.contextPath}/board/newsView/1" onclick="view.view(211);return false;">써브웨이와
									함께하는 tvN '호텔델루나' </a>
							</div></td>
						<td><div></div></td>
						<td><div class="date">19.07.12</div></td>
					</tr>
					<tr>
						<td><div class="num">114</div></td>
						<td><div class="title">
								<a href="${pageContext.request.contextPath}/board/newsView/1" onclick="view.view(210);return false;">써브웨이와
									함께하는 Mnet 'PRODUCE X101'</a>
							</div></td>
						<td><div></div></td>
						<td><div class="date">19.05.27</div></td>
					</tr>
					<tr>
						<td><div class="num">113</div></td>
						<td><div class="title">
								<a href="${pageContext.request.contextPath}/board/newsView/1" onclick="view.view(209);return false;">써브웨이와
									함께하는 tvN '어비스' </a>
							</div></td>
						<td><div></div></td>
						<td><div class="date">19.05.27</div></td>
					</tr>
					<tr>
						<td><div class="num">112</div></td>
						<td><div class="title">
								<a href="${pageContext.request.contextPath}/board/newsView/1" onclick="view.view(207);return false;">2019년 설날
									당일 매장운영 안내</a>
							</div></td>
						<td><div></div></td>
						<td><div class="date">19.01.31</div></td>
					</tr>
					<tr>
						<td><div class="num">111</div></td>
						<td><div class="title">
								<a href="${pageContext.request.contextPath}/board/newsView/1" onclick="view.view(206);return false;">써브웨이
									고객센터 2019년 설 연휴 휴무 안내</a>
							</div></td>
						<td><div></div></td>
						<td><div class="date">19.01.31</div></td>
					</tr>
					<tr>
						<td><div class="num">110</div></td>
						<td><div class="title">
								<a href="${pageContext.request.contextPath}/board/newsView/1" onclick="view.view(205);return false;">써브웨이
									2019년 2월 가격인상 안내 </a>
							</div></td>
						<td><div></div></td>
						<td><div class="date">19.01.30</div></td>
					</tr>
					<tr>
						<td><div class="num">109</div></td>
						<td><div class="title">
								<a href="${pageContext.request.contextPath}/board/newsView/1" onclick="view.view(203);return false;">써브웨이와
									함께하는 tvN '알함브라 궁전의 추억'</a>
							</div></td>
						<td><div></div></td>
						<td><div class="date">18.11.30</div></td>
					</tr>
					<tr>
						<td><div class="num">108</div></td>
						<td><div class="title">
								<a href="${pageContext.request.contextPath}/board/newsView/1" onclick="view.view(202);return false;">써브웨이와
									함께하는 tvN '남자친구'</a>
							</div></td>
						<td><div></div></td>
						<td><div class="date">18.11.30</div></td>
					</tr>
				</tbody>
			</table>
		</div>

		<!-- board 페이지 -->
		<div>
			<div class="pagination">
				<a class="arr prev" href="#none"></a>
				<a class="active" href="#">1</a>
				<a href="#" onclick="paging.page(2);return false;">2</a>
				<a href="#" onclick="paging.page(3);return false;">3</a>
				<a href="#" onclick="paging.page(4);return false;">4</a> 
				<a href="#" onclick="paging.page(5);return false;">5</a> 
				<a href="#" onclick="paging.page(6);return false;">6</a> 
				<a href="#" onclick="paging.page(7);return false;">7</a> 
				<a href="#" onclick="paging.page(8);return false;">8</a> 
				<a href="#" onclick="paging.page(9);return false;">9</a> 
				<a href="#" onclick="paging.page(10);return false;">10</a> 
				<a class="arr next" href="#none" onclick="paging.next(12);return false;"></a>
			</div>
		</div>
		<!--// board 페이지 -->
	</div>
	<!--// 뉴스ㆍ공지사항 list e -->
<script>
$(document).ready(function(){
	
});

</script>

</body>
</html>