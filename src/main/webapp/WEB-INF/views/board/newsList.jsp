<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var index = ${page};
$(function(){
	paging(index);
});
function paging(index) {
	var tbody = $('tbody').eq(0);
	tbody.empty();
	var pagination = $('.pagination').eq(0);
	
	pagination.empty();
	$.ajax({
		url: "http://192.168.0.169:8888?page="+index,
		type :"post",
		dataType : "json",
		success :function(result){
			$('.board_total strong').text(result.getTotalElements);
			var newsBoards = result.newsBoard;
			for(var i=0; i<newsBoards.length; i++){
				var newsBoard = newsBoards[i];
				var str = "<tr>"
					 		+"<td><div class='num'>"+newsBoard.newsId+"</div></td>"
					 		+"<td>"
					 			+"<div class='title'>"
					 				+"<a href='${pageContext.request.contextPath}/board/newsView?page="+index+"&newsId="+newsBoard.newsId+"'>"+newsBoard.title+"</a>"
					 			+"</div>"
					 		+"</td>"
					 		+"<td><div class='date'>"+newsBoard.regDate+"</div></td>";
					
				tbody.append(str); //게시판 리스트 넣기
			}
			
			var totalPageSize = result.getTotalPages;
			
			//이전 버튼 넣기
			var prevBtn = "<a class='arr prev' href='#none' onclick='paging("+(index-1)+")'></a>";
			$('.pagination').append(prevBtn); 
			
			//페이징 버튼 넣기  
			for(var i=1; i<=result.nextPageable.pageSize; i++){
				var str = "<a href='${pageContext.request.contextPath}/board/newsList?page="+i+"'>"+i+"</a>";
				pagination.append(str); 
			} 
			
			// 페이징 버튼 클릭시 활성화
			$('.pagination a').removeClass('active').eq(index).addClass('active');
			
			//다음 버튼 넣기
			var NextBtn = "<a class='arr next' href='#none' onclick='paging("+(index+1)+")'></a>";
			$('.pagination').append(NextBtn); 
			
		},
		error : function(err){
			console.log(err); 
		}
	});
}
</script>
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
					<col width="120px">
				</colgroup>
				<tbody>
				</tbody>
			</table>
		</div>

		<!-- board 페이지 -->
		<div>
			<div class="pagination"></div>
		</div>
		<!--// board 페이지 -->
	</div>
	<!--// 뉴스ㆍ공지사항 list e -->
</body>
</html>