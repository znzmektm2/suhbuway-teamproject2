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
var prevIndex = index-1;
var nextIndex = index+1;
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
			var newsBoards = result.newsBoard;
			var totalPageSize = result.getTotalPages;
			var pageSize = result.size;
			
			//게시판 리스트 넣기
			$('.board_total strong').text(result.getTotalElements);
			for(var i=0; i<newsBoards.length; i++){
				var newsBoard = newsBoards[i];
				var str = "<tr>"
					 		+"<td><div class='num'>"+newsBoard.newsId+"</div></td>"
					 		+"<td>"
					 			+"<div class='title'>"
					 				+"<a href='${pageContext.request.contextPath}/board/newsView?newsId="+newsBoard.newsId+"'>"+newsBoard.title+"</a>"
					 			+"</div>"
					 		+"</td>"
					 		+"<td><div class='date'>"+newsBoard.regDate+"</div></td>";
				tbody.append(str); 
			}
			
			//이전 버튼 넣기
			if(prevIndex < 1){
				prevIndex = 1;
			}
			var prevBtn = "<a href='${pageContext.request.contextPath}/board/newsList?page="+prevIndex+"' class='arr prev'></a>";
			$('.pagination').append(prevBtn); 
			
			//페이징 버튼 넣기  
			var strIndex = String(index);
			var numString = strIndex.substr(0, strIndex.length-1);
			var num = numString*= 1;
			
			for(var j=10; j<=totalPageSize+10; j+=10){
				if(num < index && index <= j){
					console.log("j : " + j);
					num = j-9;
					break;
				}
			}
			for(var i=num; i<=totalPageSize; i++){ 
				if(i > num){ 
					if(i % pageSize == 1){
						console.log("break")
						break; 
					}
				}
				var str = "<a class='page"+i+"' href='${pageContext.request.contextPath}/board/newsList?page="+i+"'>"+i+"</a>";
				pagination.append(str);
			}
			
			// 페이징 버튼 클릭시 활성화
			$('pagination a').removeClass('active');
			$('.page'+index).addClass('active');
			
			//다음 버튼 넣기
			if(nextIndex > totalPageSize){
				nextIndex = totalPageSize;
			}
			var NextBtn = "<a href='${pageContext.request.contextPath}/board/newsList?page="+nextIndex+"' class='arr next'></a>";
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
				총<strong></strong>건의 게시글이 있습니다.
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