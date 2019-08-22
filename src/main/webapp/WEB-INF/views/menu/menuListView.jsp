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
	<div id="wrap"> 
		<!-- container s -->
		<div id="container">

			<div class="sub_header fixed"
				style="position: fixed; background-color: rgb(255, 255, 255);">
				<div class="content">
					<a class="logo" href="/" style="opacity: 1;">HOME</a>
					<!-- sub location -->
					<div class="sub_loc">
						<ul>
							<li class="active"><a href="#">샌드위치</a></li>
							<li><a href="/saladList">찹샐러드</a></li>
							<li><a href="/toppingList">추가토핑</a></li>
							<li><a href="/sideDrink">사이드ㆍ음료</a></li>
							<li><a href="/catering">단체메뉴</a></li>
							<li><a href="/freshInfo">신선한 재료 소개</a></li>
						</ul>
					</div>
					<!--// sub location -->
					<a class="top" href="#none" style="opacity: 1;">TOP</a>
				</div>
			</div>

			<!-- sub content s -->
			<div id="content1">
				<!-- 메뉴소개 s -->
				<div class="menu_view_wrapper">
					<!-- 메뉴 header -->
					<div class="hd">
						<!-- 20180208 -->
						<div class="category">
							<a href="/sandwichView?param=cl06">클래식</a> <a
								href="/sandwichView?param=fl01">프레쉬&amp;라이트</a> <a
								class="active" href="/sandwichView?param=pm08">프리미엄</a> <a
								href="/sandwichView?param=bf01">아침메뉴</a>
							<button type="button">open</button>
						</div>
						<!--// 20180208 -->
						<h2 class="name">${product.name}</h2>
						<p class="eng">${product.nameEng}</p>
						<p class="cal">${product.nutrition.calory} kcal</p>
					</div>
					<!--// 메뉴 header -->
					<!-- 메뉴 content -->
					<div class="menu_content">
						<!-- 메뉴정보 -->
						<div class="menu_info">
							<div class="menu_img">
								<img alt="${product.name}" src="${pageContext.request.contextPath}/resources/images/menu/${product.category}/${product.imgUrl}">
							</div>
							<p class="summary">${product.description}</p>
							<div class="recipe">
                                <ul>
                                    <li>
                                        <div class="img"><img alt="새우5마리" src="${pageContext.request.contextPath}/resources/images/menu/img_recipe21.jpg"></div>
                                        <p>새우 5마리</p>
                                    </li>
                                    <li>
                                        <div class="img"><img alt="치즈" src="${pageContext.request.contextPath}/resources/images/menu/img_recipe04.jpg"></div>
                                        <p>치즈 2장</p>
                                    </li>
                                    <li>
                                        <div class="rec">추천</div>
                                        <div class="img"><img alt="스위트칠리" src="${pageContext.request.contextPath}/resources/images/menu/img_recipe_s12.jpg"></div>
                                        <p>스위트 칠리</p>
                                    </li>
                                </ul>
                            </div>
							<p class="not">* 매장에 따라 추천소스는 상이할 수 있습니다.</p>
						</div>
						<!--// 메뉴정보 -->

						<!-- 영양성분표 -->
						<div class="component_chart">
							<div class="content">
								<h3>영양성분표</h3>
								<!-- 쉬림프 -->
								<div class="board_list_wrapper">
									<table>
										<thead>
											<tr>
												<th scope="col">중량(g)</th>
												<th scope="col">열량(kcal)</th>
												<th scope="col">당류(g)</th>
												<th scope="col">단백질(g)</th>
												<th scope="col">포화지방(g)</th>
												<th scope="col">나트륨(mg)</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>187</td>
												<td>${product.nutrition.calory}</td>
												<td>5</td>
												<td>12 (22%)</td>
												<td>1 (4%)</td>
												<td>355 (18%)</td>
											</tr>
										</tbody>
									</table>
								</div>
								<ul class="notice">
									<li>※ 기본야채 5종(양상추, 토마토, 양파, 피망, 오이)포함, 치즈 및 소스 제외, 6인치 위트
										브레드 기준.</li>
									<li>※ 괄호 안 %는 1일 영양소 기준치에 대한 비율</li>
								</ul>
							</div>
						</div>
						<!--// 영양성분표 -->
						<!-- 댓글달기 -->
						<div class="content">
							<div class="review">
								<div class="score">
									<h5>리뷰 <span id="reviewCount">2</span></h5>
									<div class="wrap">
										<div class="area">
											<p class="star_score_num"><em id="totalRating">5.0</em><span><i>/</i>5</span></p>
											<div class="star">
												<span class="on"></span><span class="on"></span><span class="on"></span><span class="on"></span><span class="on"></span>
											</div>
										</div>
										<div class="graph">
											<ul>
							                    <li>
							                        <em>1점</em>
							                        <div class="average">
							                            <span class="average_off"><span class="average_on" style="width: 0%;"></span></span>
							                        </div>
							                        <i><span id="rating1">0</span></i>
							                    </li>
							                    <li>
							                        <em>2점</em>
							                        <div class="average">
							                            <span class="average_off"><span class="average_on" style="width: 0%;"></span></span>
							                        </div>
							                        <i><span id="rating2">0</span></i>
							                    </li>
							                    <li>
							                        <em>3점</em>
							                        <div class="average">
							                            <span class="average_off"><span class="average_on" style="width: 0%;"></span></span>
							                        </div>
							                        <i><span id="rating3">0</span></i>
							                    </li>
							                    <li>
							                        <em>4점</em>
							                        <div class="average">
							                            <span class="average_off"><span class="average_on" style="width: 0%;"></span></span>
							                        </div>
							                        <i><span id="rating4">0</span></i>
							                    </li>
							                    <li>
							                        <em>5점</em>
							                        <div class="average">
							                            <span class="average_off"><span class="average_on" style="width: 20%;"></span></span>
							                        </div>
							                        <i><span id="rating5">2</span></i>
							                    </li>
				                            </ul>
										</div>
									</div>
								</div>
								<form id="commentForm" method="post">
									<div>
										<label><span>1234</span>님의 평점 및 리뷰</label>
										<div class="starInput">
											<div><input type="radio" name="rating" value="1" checked=""><span></span></div>
											<div><input type="radio" name="rating" value="2"><span></span></div>
											<div><input type="radio" name="rating" value="3"><span></span></div>
											<div><input type="radio" name="rating" value="4"><span></span></div>
											<div><input type="radio" name="rating" value="5"><span></span></div>
										</div>
										<div class="reviewForm">
											<input type="text" name="txtComment" placeholder="여행은 어떠셨나요?  경험담을 공유해주세요! 초보 여행자들에게 큰 도움이 됩니다.">
											<input id="btnSubmit" type="button" value="등록하기">
											<input type="hidden" name="userId" value="1234">
											<input type="hidden" name="placeId" value="1">
										</div>
									</div>
								</form>
								<div class="reviewList">
									<h6>모든 리뷰</h6>
									<ul>
									<li><div><strong>1234</strong><div class="star"><span class="on"></span><span class="on"></span><span class="on"></span><span class="on"></span><span class="on"></span></div><p>좋았어요~~</p><span class="time">2019-07-14 10:36:43.0</span></div></li><li><div><strong>1234</strong><div class="star"><span class="on"></span><span class="on"></span><span class="on"></span><span class="on"></span><span class="on"></span></div><p>굿굿~~</p><span class="time">2019-07-14 10:36:33.0</span></div></li></ul>
								</div>
							</div>
						</div>
						<!-- //댓글달기 -->
						<!-- 목록보기 -->
						<div class="btns_list_wrapper">
							<div class="btn_list">
								<a href="/sandwichList">목록보기</a>
							</div>
						</div>
						<!--// 목록보기 -->
					</div>
					<!--// 메뉴 content -->
				</div>
				<!--// 메뉴소개 e -->
			</div>
			<!--// sub content e -->
		</div>
	</div>
</body>
</html>