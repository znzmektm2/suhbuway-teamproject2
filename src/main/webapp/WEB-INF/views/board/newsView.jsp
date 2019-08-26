<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>서부웨이 Suhbu Way</title>
</head>
<script type="text/javascript">
$('document').ready(function () {
	var newsId = ${newsId};
	$.ajax({
		url: "http://192.168.0.169:8888/view?pageView="+newsId,
		type :"post",
		dataType : "json",
		success :function(result){
			$('.title').text(result.title);
			$('.date').text(result.regDate);
			$('.news_view_conten').html(result.content);
			$('img').each(function () {
				var baseUrl = $(this).attr('src');
				var url = $(this).attr('src','http://subway.co.kr'+baseUrl);
			});
		},
		error : function(err){
			console.log(err); 
		}
	});
});
</script>
<body>
	<!-- 뉴스ㆍ공지사항 view s -->
	<div class="news_view_wrapper">
		<div class="content">
			<h2 class="title"></h2>
			<div class="date"></div>
			<div class="news_view_conten"></div>
			<div class="btn_list"><a href="javascript:history.back()">목록보기</a></div>

			<!-- 우측 영역 -->
			<div class="board_right">
				<!-- 공지사항 영역 -->
				<ul class="notice">
					<li><a href="#" onclick="view.view(213)">써브웨이와 함께하는 Mnet ''쇼미더머니8"</a></li>
					<li><a href="#" onclick="view.view(212)">써브웨이와 함께하는 SBS '의사요한' </a></li>
					<li><a href="#" onclick="view.view(205)">써브웨이 2019년 2월 가격인상 안내 </a></li>
					<li><a href="#" onclick="view.view(190)">고객 경험 설문조사 프로그램 안내</a></li>
					<li><a href="#" onclick="view.view(177)">개인정보취급방침 개정안내</a></li>
				</ul>
				<!--// 공지사항 영역 -->

				<!-- 이전,다음글 영역 -->
				<ul class="board_nav">
					<li class="prev"><a href="#" onclick="view.view(213)">써브웨이와 함께하는 Mnet ''쇼미더머니8"</a></li>
					<li><strong>써브웨이와 함께하는 SBS '의사요한' </strong></li>
					<li class="next"><a href="#" onclick="view.view(211)">써브웨이와 함께하는 tvN '호텔델루나' </a></li>
				</ul>
				<!--// 이전,다음글 영역 -->
			</div>
			<!--// 우측 영역 -->
		</div>
	</div>
	<!--// 뉴스ㆍ공지사항 view e -->
</body>
</html>