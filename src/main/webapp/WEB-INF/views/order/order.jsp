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
<c:choose>
	<c:when test="${requestScope.userId==null}">
		<div class="info">
			<div class="title">
				<br><br><br>
				<p >로그인하고 접근해주세요</p>
				<br><br><br>
			</div>
		</div>
	</c:when>
	<c:when test="${requestScope.userId!=null}">
	
<h2 class="subTitle">써브웨이 이용방법</h2>
<!-- 써브웨이 이용방법 -->
<div class="utilization_subway_wrapper">
	<!-- 매장에서 주문하기 s -->
	<div class="utilization_subway_content" id="store_order" style="display: block;">
		<div class="slider_wrapper">
		    <div class="step_content">
				<ol>
					<li class="active"><div class="step">STEP<strong>1</strong></div></li>
					<li><div class="step">STEP<strong>2</strong></div></li>
					<li><div class="step">STEP<strong>3</strong></div></li>
					<li><div class="step">STEP<strong>4</strong></div></li>
					<li><div class="step">STEP<strong>5</strong></div></li>
				</ol>
			</div>
			<div class="img_content">
				<ol>
					<li class="active">
                        <div class="img"><img alt="메뉴 선택" src="${pageContext.request.contextPath}/resources/images/utilization/img_store_order01.png"></div>
                    </li>
                    <li>
                        <div class="img"><img alt="빵 선택 " src="${pageContext.request.contextPath}/resources/images/utilization/img_store_order02.png"></div>
                    </li>
					<li>
                        <div class="img"><img alt="토핑 추가" src="${pageContext.request.contextPath}/resources/images/utilization/img_store_order03.png"></div>
                    </li>
                    <li>
                        <div class="img"><img alt="야채&amp;소스 선택" src="${pageContext.request.contextPath}/resources/images/utilization/img_store_order04.png"></div>
                    </li>
					<li>
                        <div class="img"><img alt="세트 선택" src="${pageContext.request.contextPath}/resources/images/utilization/img_store_order05.png"></div>
                    </li>
				</ol>
			</div>
			<div class="info_content">
				<p class="step_num">STEP 1</p>
				<ol>
                    <li class="active" style="margin-top: 0; opacity: 1;"><strong>메뉴 선택</strong>
                        <p class="txt1">메뉴를 고르세요.<br>샌드위치(15cm 또는 30cm)와<br>찹샐러드 중 선택 가능합니다.</p>
						<div class="select_box selectMenuKind">
							<span class="slct_head">메뉴 선택</span>
							<div class="slct_list">
								<ul>
									<li><a href="#" class="default">메뉴 선택</a></li>
									<li><a href="#" data-val="sandwich">샌드위치</a></li>
									<li><a href="#" data-val="salad">찹샐러드</a></li>
								</ul>
							</div>
						</div>
						<div class="select_box selectLength">
							<span class="slct_head">길이 선택</span>
							<div class="slct_list">
								<ul>
                                <li><a href="#" class="default">길이 선택</a></li>
                                    <li><a href="#" data-val="15">15cm</a></li>
                                    <li><a href="#" data-val="30">30cm</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="select_box selectMenuName addPrice">
                            <span class="slct_head">종류 선택</span>
                            <div class="slct_list">
                                <ul>
                                    <li><a href="#" class="default">종류 선택</a></li>
                                </ul>
                            </div>
                        </div></li>
                    <li><strong>빵 선택 <span>(찹샐러드 선택 시 제외)</span></strong>
                        <p class="txt1">
                            매장에서 직접 구운 6가지 종류 중<br>고객님이 원하는 빵으로<br>추가비용 없이 선택 가능합니다.
                        </p>
                        <div class="select_box bread">
                            <span class="slct_head">빵 선택</span>
                            <div class="slct_list">
                                <ul>
                                    <li><a href="#" class="default">빵 선택</a></li>
                                    <li><a href="#" data-val="허니오트">허니오트</a></li>
                                    <li><a href="#" data-val="하티">하티</a></li>
                                    <li><a href="#" data-val="위트">위트</a></li>
                                    <li><a href="#" data-val="파마산 오레가노">파마산 오레가노</a></li>
                                    <li><a href="#" data-val="화이트">화이트</a></li>
                                    <li><a href="#" data-val="플랫브레드">플랫브레드</a></li>
                                </ul>
                            </div>
                        </div></li>
                    <li><strong>추가토핑 선택</strong>
                        <p class="txt1">나만의 메뉴를 더욱 풍성하게 즐기세요.</p>
                        <div class="select_box topping addPrice">
                            <span class="slct_head">추가토핑 선택</span>
                            <div class="slct_list">
                                <ul>
                                    <li><a href="#" class="default">추가토핑 선택</a></li>
                                </ul>
                            </div>
                        </div></li>
                    <li><strong>야채&amp;소스 선택</strong>
                        <p class="txt1">
                            나만의 스타일을 완성하는 단계!<br>하지 않는 야채는 빼고 좋아하는 야채는 더하세요.<br>오늘의 기분에 맞는 소스를 선택해주세요.
                        </p>
                        <div class="select_box vegetable">
                            <span class="slct_head">뺄 야채 선택</span>
                            <div class="slct_list">
                                <ul>
                                    <li><a href="#" class="default">야채 선택</a></li>
                                    <li><a href="#">양상추</a></li>
									<li><a href="#">토마토</a></li>
									<li><a href="#">오이</a></li>
									<li><a href="#">피망</a></li>
									<li><a href="#">양파</a></li>
									<li><a href="#">피클</a></li>
									<li><a href="#">올리브</a></li>
									<li><a href="#">할라피뇨</a></li>
									<li><a href="#">아보카도</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="select_box sourceBox">
                            <span class="slct_head">소스 선택</span>
                            <div class="slct_list">
                                <ul>
                                    <li><a href="#" class="default">소스 선택</a></li>
                                    <li><a href="#">랜치드레싱</a></li>
									<li><a href="#">마요네즈</a></li>
									<li><a href="#">스위트 어니언</a></li>
									<li><a href="#">허니 머스터드</a></li>
									<li><a href="#">스위트 칠리</a></li>
									<li><a href="#">핫 칠리</a></li>
									<li><a href="#">사우스 웨스트</a></li>
									<li><a href="#">머스타드</a></li>
									<li><a href="#">홀스래디쉬</a></li>
									<li><a href="#">사우전 아일랜드</a></li>
									<li><a href="#">이탈리안 드레싱</a></li>
									<li><a href="#">올리브 오일</a></li>
									<li><a href="#">레드와인 식초</a></li>
									<li><a href="#">식초</a></li>
									<li><a href="#">후추</a></li>
									<li><a href="#">스모크 바비큐</a></li>
                                </ul>
                            </div>
                        </div></li>
                    <li><strong>사이드메뉴&amp;음료 선택</strong>
                        <p class="txt1">
                            바삭하고 쫀득한 달콤한 쿠키와<br>간편하고 든든한 수프,<br>커피와 음료까지 함께 즐길 수 있습니다.
                        </p>
                        <div class="select_box addPrice sideDrink">
                            <span class="slct_head side">사이드메뉴 선택</span>
                            <div class="slct_list">
                                <ul><li><a href="#" class="default">사이드메뉴 선택</a></li></ul>
                            </div>
                        </div>
                        <div class="select_box addPrice sideDrink">
                            <span class="slct_head drink">음료 선택</span>
                            <div class="slct_list">
                                <ul><li><a href="#" class="default">음료 선택</a></li></ul>
                            </div>
                        </div>
                    </li>
                </ol>
            </div>

            <div class="arr_controls">
                <a class="prev arr" href="#none">prev</a> <a class="next arr" href="#none">next</a>
            </div>
        </div>
        <!-- 선택한 메뉴 -->
        <div class="board_list_wrapper step1">
            <table>
                <thead>
                    <tr>
                        <th scope="col">메뉴</th>
                        <th scope="col">빵</th>
                        <th scope="col">추가토핑</th>
                        <th scope="col">뺄 야채종류</th>
                        <th scope="col">소스종류</th>
                        <th scope="col">사이드메뉴&amp;음료</th>
                        <th scope="col">금액</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><span class='default'>선택안함</span></td>
                        <td><span class='default'>선택안함</span></td>
                        <td><span class='default'>선택안함</span></td>
                        <td><span class='default'>선택안함</span></td>
                        <td><span class='default'>선택안함</span></td>
                        <td><span class='default'>선택안함</span></td>
                        <td><span class='orderPrice'>0</span></td>
                    </tr>
                </tbody>
            </table>
            <!-- 장바구니, 주문하기 버튼 -->
            <div class="inquiry_wrapper orderBtn">
                <div class="btns_wrapper">
                    <a href="#" class="cart btn bgc_point i_reg" style="width: 170px"><span>선택완료</span></a>
                </div>
            </div>
            <!-- //장바구니, 주문하기 버튼 -->
        </div>
        <!-- //선택한 메뉴 -->
    </div>
    <!--// 매장에서 주문하기 e -->
</div>
<!--// 써브웨이 이용방법 -->
<script>
$(document).ready(function() {
    subwayUtilization();
    selectBox();
//    selectMenu();
    menuList();
    addToppingList();
    addSideList();
    addDrinkList();
    cart();
});

/** DB에서 가져온 product 목록들입니다. */
var list = ${requestScope.list};

/** 메뉴 전체 정보를 저장할 곳입니다. */
var menuItem = {
    product : "",
    length : "",
    breadType : "",
    veggies : [],
    source : [],
    subMenu : [],
    price : 0
};

/** 써브웨이 이용방법 */
function subwayUtilization() {
    var stepIndex = 0;
    var btnArr = $('#store_order .arr_controls .arr');
    var stepNum = $('#store_order .slider_wrapper .step_content ol li');
    var slider_img = $('#store_order .slider_wrapper .img_content ol li');
    var slider_info = $('#store_order .info_content>ol>li');
    var spd = 1;
    var eft = Power3.easeOut;

    store_order();//써브웨이 이용방법 : 매장에서 주문하기

    function store_order() {//써브웨이 이용방법 : 매장에서 주문하기 
        var prevIndex;

        $(slider_img).eq(stepIndex).css({'left' : '50%',marginLeft : '-585px'})
        TweenLite.to($(slider_img).eq(stepIndex).find('.img'), spd, {ease : eft,width : 700})
        TweenLite.to($(slider_img).eq(stepIndex).next(), spd, {ease : eft,marginLeft : '-280'})

        $(btnArr).on('click',function() {
            console.log("stepIndex " + stepIndex);
            if (stepIndex == 0) {
                if (!$('.info_content>ol>li').eq(0).hasClass('on')) {
                    alert('메뉴를 선택해 주세요.');
                    return false;
                }
            }
            if (stepIndex == 1) {
                if (!$('.info_content>ol>li').eq(1).hasClass('on')) {
                    alert('빵 종류를 선택해 주세요.');
                    return false;
                }
            }
            if (TweenMax.isTweening(slider_img)) {
                return false;
            } else {
                prevIndex = stepIndex;
                if ($(this).hasClass('prev')) {
                    if (stepIndex <= 0) {
                        return false;
                    } else {
                        stepIndex--;
                        $(stepNum).eq(stepIndex).removeClass('prev').addClass('active')
                        $(stepNum).eq(prevIndex).removeClass('active')

                        TweenLite.to($(slider_img).eq(stepIndex).prev(),spd,{ease : eft,left : '0',marginLeft : '-280'})
                        TweenLite.to($(slider_img).eq(prevIndex),spd,{ease : eft,left : '100%',marginLeft : '-280'})
                        TweenLite.to($(slider_img).eq(prevIndex).find('.img'),spd,{ease : eft,width : 560})
                        TweenLite.to($(slider_img).eq(stepIndex),spd, {ease : eft,left : '50%',marginLeft : '-585'})
                        TweenLite.to($(slider_img).eq(stepIndex).find('.img'),spd,{ease : eft,width : 700})
                        TweenLite.to($(slider_img).eq(prevIndex).next(), spd, {ease : eft,marginLeft : '560'})
                    }
                } else {
                    if (stepIndex >= 4) {
                        return false;
                    } else {
                        stepIndex++;
                        $(stepNum).eq(stepIndex).addClass('active')
                        $(stepNum).eq(prevIndex).removeClass('active').addClass('prev')

                        TweenLite.to($(slider_img).eq(prevIndex).prev(),spd,{ease:eft, left:'-560', marginLeft:'-560'})
                        TweenLite.to($(slider_img).eq(prevIndex),spd,{ease:eft, left:'0', marginLeft:'-280'})
                        TweenLite.to($(slider_img).eq(prevIndex).find('.img'),spd,{ease:eft, width:560})
                        TweenLite.to($(slider_img).eq(stepIndex),spd,{ease:eft,left : '50%',marginLeft : '-585'})
                        TweenLite.to($(slider_img).eq(stepIndex).find('.img'),spd,{ease:eft,width:700})
                        TweenLite.to($(slider_img).eq(stepIndex).next(),spd,{ease:eft,marginLeft:'-280'})
                    }
                }

                $(slider_info).eq(prevIndex).removeClass('active').css('opacity', '0')
                TweenLite.to($(slider_info).eq(stepIndex).addClass('active'), 0.7,{ease:Power4.easeOut,marginTop:0,opacity:1,onComplete : function() {
                    $(slider_info).eq(prevIndex).attr('style', '')}
                });

                $('#store_order .step_num').text('STEP ' + (stepIndex + 1))
                return false;
            }
        })
    }
}

/** 셀렉트박스 슬라이드 토글 */
function selectBox() {
    $('.slct_head').click(function() {
        if (!$(this).parent().hasClass('on')) {
            $(this).parent().addClass('on').children('.slct_list').stop().slideDown('fast');
        } else {
            $(this).parent().removeClass('on').children('.slct_list').hide();
        }
        $(this).parent().siblings().removeClass('on').children('.slct_list').hide();
    });

    /** 바깥 클릭 시 셀렉트박스 닫기 */
    $(document).on("click", function(event) {
        if (!$(event.target).closest(".slct_head").length) {
            $(".slct_list").hide();
        }
    });
}

//---------------------------------------------------------------------------------------------------------------------
// 셀렉트 박스 내 메뉴 선택 시 이벤트들
$(function() {
    var selectMenuKind = "";
    var selectLength = "";
    var deleteBtn = "<span class='delete'>삭제</span>";
    var deleteA = "";
    var defualtText = "<span class='default'>선택안함</span>";

    //-----------------------------------------------------------------------------------------------------------------
    // 스텝 1-1 : 메뉴 선택 시
    $('.selectMenuKind').on('click','.slct_list>ul>li>a', function (e) {
        e.preventDefault(); // 화면 갱신 막기
        $(this).parents('.slct_list').prev('.slct_head').text($(this).text()); // 선택한 텍스트 셀렉트박스에 넣기

        selectMenuKind = $(this).attr('data-val'); // 메뉴 선택

        // 샌드위치 길이를 선택하는 셀렉트 박스 노출 여부
        if ($(this).text() == '샌드위치') {
            $('.selectLength').show();
        } else {
            $('.selectLength').hide();
            selectLength = "";
            menuItem.length = "";
        }
        // 메뉴 선택시 다른 셀렉트박스 초기화
        $('.selectMenuName .slct_head,.selectLength .slct_head').text("종류 선택");
        if ($(this).hasClass('default')) {
            $('.info_content>ol>li:first-child').removeClass('on');
            $('.selectMenuName .slct_list ul li:first-child').nextAll().remove();
        }
    });
    //-----------------------------------------------------------------------------------------------------------------
    // 스텝 1-2 : 샌드위치의 길이 선택 시
    $('.selectLength').on('click','.slct_list>ul>li>a', function(e) {
        e.preventDefault(); // 화면 갱신 막기
        $(this).parents('.slct_list').prev('.slct_head').text($(this).text()); // 선택한 텍스트 셀렉트박스에 넣기

       	selectLength = $(this).text();
        menuItem.length = selectLength;
    });
    //-----------------------------------------------------------------------------------------------------------------
    // 스텝 1-3 : 메뉴 선택 시
    $('.selectMenuName').on('click','.slct_list>ul>li>a', function(e) {
        e.preventDefault(); // 화면 갱신 막기
        $(this).parents('.slct_list').prev('.slct_head').text($(this).text()); // 선택한 텍스트 셀렉트박스에 넣기
        //selectMenuName = $(this).text();
        $('table tbody tr:nth-child(1)').addClass('on');
        if (!$(this).hasClass('default')) {
            $(this).parents('.selectMenuName').parents('li').addClass('on');
            var addMainMenu = "";
            var _this = $(this);
            $.each(list, function(index, item) {
                if (item.productId == _this.attr('data-val')) {
                   menuItem.product = Object.assign({}, item); // 복사해서 메뉴에 저장
    				if(selectLength == "15cm"){
    					menuItem.product.price = item.price/2+200;
                    }
                    addMainMenu = "<li data-val='" + _this.attr('data-val') + "'>" + deleteBtn + "<span class='itemName'>" + menuItem.product.name
                        + " " + selectLength + "</span>" + "<span class='price'>" + formatNumber(menuItem.product.price) 
                        + "</span>" + deleteA + "</li>";
                    
                    console.log(menuItem);
                    return false;
                }
            });
            $('table tbody tr:nth-child(1) td').eq(0).children('.default').remove();
            $('table tbody tr:nth-child(1) td').eq(0).empty().append("<ul>" + addMainMenu + "</ul>");
        }
        displayPrice();
    });
    //-----------------------------------------------------------------------------------------------------------------
    // 스텝 1-4 : 주 메뉴 삭제
    $('table tbody tr:nth-child(1) td').eq(0).on('click','.delete', function() {
        $('tr td').empty().append(defualtText);
        $('tr td').eq(6).empty().html("<span class='orderPrice'>0</span>");
        $('tr').removeClass('on');
        $('.info_content>ol>li').removeClass('on');

        /* 셀렉트박스 초기화 */
        $('.slct_head').each(function(index, item) {
            var text = $(this).next('.slct_list').find('li:first-child a').text();
            console.log(text);
            $(this).text(text);
        });

        /* menuItem 저장항목 삭제 */
        menuItem.product = "";
        menuItem.length = "";
        menuItem.breadType = "";
        menuItem.veggies = [];
        menuItem.subMenu = [];
        menuItem.source = [];
        console.log(menuItem);
        displayPrice()
    });
    //-----------------------------------------------------------------------------------------------------------------
    // 스텝 2-1 : 빵 선택 시
    $('.bread').on('click','.slct_list>ul>li>a', function(e) {
        e.preventDefault(); // 화면 갱신 막기
        $(this).parents('.slct_list').prev('.slct_head').text($(this).text()); // 선택한 텍스트 셀렉트박스에 넣기
        if (!$(this).hasClass('default')) {
            var addBread = "<ul><li data-val=" + $(this).attr('data-val') + "><span class='itemName'>"
                + $(this).text() + "</span><span class='deleteItem'>삭제</span></li></ul>";
            $('table tbody tr:nth-child(1) td').eq(1).empty().append(addBread);

            $(this).parents('.bread').parents('li').addClass('on');

            menuItem.breadType = $(this).text(); // menuItem에 빵 추가
            console.log(menuItem);
        }
    });
    //-----------------------------------------------------------------------------------------------------------------
    // 스텝 2-2 : 빵 삭제 시
    $('table tbody tr:nth-child(1) td').eq(1).on('click','.deleteItem', function() {
        $(this).parents('td').empty().append(defualtText);

        /* menuItem 저장항목 삭제 */
        menuItem.breadType = "";
        console.log(menuItem);
    });
    //-----------------------------------------------------------------------------------------------------------------
    // 스텝 3-1 : 추가 토핑 추가 시
    $('.topping').on('click','.slct_list>ul>li>a', function(e) {
        e.preventDefault(); // 화면 갱신 막기
        $(this).parents('.slct_list').prev('.slct_head').text($(this).text()); // 선택한 텍스트 셀렉트박스에 넣기
        if (!$(this).hasClass('default')) {
            $(this).parents('.topping').parents('li').addClass('on');
            var addMainMenu = "";
            var _this = $(this);
            var flagNotExistInMenuItem = true; // 메뉴리스트에 있는지 체크
            $.each(list, function (index, item) {
                if (item.productId == _this.attr('data-val')) {
                    //console.log(item);
                    addMainMenu = "<li data-val='" + _this.attr('data-val') + "'><span class='itemName'>"
                        + item.name + "</span>" + "<span class='price'>" + formatNumber(item.price) + "</span></span><span class='deleteItem'>삭제</span></li>"
                    if(menuItem.subMenu.find(item => item.productId == _this.attr('data-val')) != undefined ){
                        flagNotExistInMenuItem = false;
                        alert('이미 추가되었습니다.');
                    } else {
                        menuItem.subMenu.push(item); // 메뉴에 저장
                    }
                }
            });
            // 표에 아이템을 넣는다.
            var insertColumn = $('table tbody tr:nth-child(1) td').eq(2);
            if(flagNotExistInMenuItem){
                insertColumn.children('.default').remove(); // '선택 안함' 지우기
                if (insertColumn.children('ul').length){ // ul이 있는지 확인
                    insertColumn.children('ul').append(addMainMenu);
                } else {
                    insertColumn.append("<ul>" + addMainMenu + "</ul>");
                }
            }
            console.log(menuItem); // 메뉴 찍어봅니다.
        } else {
            $(this).parents('.topping').parents('li').removeClass('on');
        }
        displayPrice()
    });
    //-----------------------------------------------------------------------------------------------------------------
    // 스텝 3-2 : 토핑 삭제 시
    $('table tbody tr:nth-child(1) td').eq(2).on('click','.deleteItem', function() {
        var ul = $(this).parents('ul');
        var productId = $(this).parents('li').attr('data-val');
        $(this).parents('li').remove();
        if(!ul.children('li').length) {// 목록이 다 지워졌다면.
            ul.parents('td').empty().append(defualtText);
        }
        /* subMenu 저장항목 삭제 */
        var some = menuItem.subMenu.find(item => item.productId == $(this).parents('li').attr('data-val'));
        menuItem.subMenu.splice(menuItem.subMenu.indexOf(some), 1);
        console.log(menuItem);
        displayPrice()
    });
    //-----------------------------------------------------------------------------------------------------------------
    // 스텝 4-1 : 야채 추가 시
    $('.vegetable').on('click','.slct_list>ul>li>a', function(e) {
        e.preventDefault(); // 화면 갱신 막기
        $(this).parents('.slct_list').prev('.slct_head').text($(this).text()); // 선택한 텍스트 셀렉트박스에 넣기
        if (!$(this).hasClass('default')) {
            $(this).parents('.vegetable').parents('li').addClass('on');

            if(menuItem.veggies.indexOf($(this).text()) == -1){ // menuItem의 veggies에 항목이 있는지 체크한다.

                // 선택된 야채를 표에 넣어준다.
                var addVegetable = "<li><span class='itemName'>" + $(this).text() + "</span><span class='deleteItem'>삭제</span></li>";
                var insertColumn = $('table tbody tr:nth-child(1) td').eq(3);
                insertColumn.children('.default').remove(); // '선택 안함' 지우기
                if (insertColumn.children('ul').length){ // ul이 있는지 확인
                    insertColumn.children('ul').append(addVegetable);
                } else {
                    insertColumn.append("<ul>" + addVegetable + "</ul>");
                }

                // 메뉴에 저장
                menuItem.veggies.push($(this).text());
                console.log(menuItem);
            } else{
            	alert('이미 추가되었습니다.');
            }
        } else {
            $(this).parents('.vegetable').parents('li').removeClass('on');
        }
    });
    //-----------------------------------------------------------------------------------------------------------------
    // 스텝 4-2 : 야채 삭제 시
    $('table tbody tr:nth-child(1) td').eq(3).on('click','.deleteItem', function() {
        var ul = $(this).parents('ul');
        var itemName = $(this).prev('.itemName').text(); // 이름 저장해두고
        $(this).parents('li').remove(); // 항목삭제
        if(!ul.children('li').length) { // 목록이 다 지워졌다면.
            ul.parents('td').empty().append(defualtText);
        }
        /* veggies 저장항목 삭제 */
        menuItem.veggies.splice(itemName, 1);
        console.log(menuItem);
    });
    //-----------------------------------------------------------------------------------------------------------------
    // 스텝 5-1 : 소스 추가 시
    $('.sourceBox').on('click','.slct_list>ul>li>a', function(e) {
        e.preventDefault(); // 화면 갱신 막기
        $(this).parents('.slct_list').prev('.slct_head').text($(this).text()); // 선택한 텍스트 셀렉트박스에 넣기
        if (!$(this).hasClass('default')) {
            $(this).parents('.sourceBox').parents('li').addClass('on');

            if(menuItem.source.indexOf($(this).text()) == -1){ // menuItem의 veggies에 항목이 있는지 체크한다.

                // 선택된 야채를 표에 넣어준다.
                var addVegetable = "<li><span class='itemName'>" + $(this).text() + "</span><span class='deleteItem'>삭제</span></li>";
                var insertColumn = $('table tbody tr:nth-child(1) td').eq(4);
                insertColumn.children('.default').remove(); // '선택 안함' 지우기
                if (insertColumn.children('ul').length){ // ul이 있는지 확인
                    insertColumn.children('ul').append(addVegetable);
                } else {
                    insertColumn.append("<ul>" + addVegetable + "</ul>");
                }

                // 메뉴에 저장
                menuItem.source.push($(this).text());
                console.log(menuItem);
            } else{
            	alert('이미 추가되었습니다.');
            }
        } else {
            $(this).parents('.sourceBox').parents('li').removeClass('on');
        }
    });
    //-----------------------------------------------------------------------------------------------------------------
    // 스텝 5-2 : 소스 삭제 시
    $('table tbody tr:nth-child(1) td').eq(4).on('click','.deleteItem', function() {
        var ul = $(this).parents('ul');
        var itemName = $(this).prev('.itemName').text(); // 이름 저장해두고
        $(this).parents('li').remove(); // 항목삭제
        if(!ul.children('li').length) {// 목록이 다 지워졌다면.
            ul.parents('td').empty().append(defualtText);
        }
        /* veggies 저장항목 삭제 */
        menuItem.source.splice(itemName, 1);
        console.log(menuItem);
    });
    //-----------------------------------------------------------------------------------------------------------------
    // 스텝 6-1 : 사이드/음료 선택 시
    $('.sideDrink').on('click','.slct_list>ul>li>a', function(e) {
        e.preventDefault(); // 화면 갱신 막기
        $(this).parents('.slct_list').prev('.slct_head').text($(this).text()); // 선택한 텍스트 셀렉트박스에 넣기
        if (!$(this).hasClass('default')) {
            $(this).parents('.sideDrink').parents('li').addClass('on');

            var item = list.find(x => x.productId == $(this).attr('data-val'));

            if(menuItem.subMenu.find(x => x.productId == $(this).attr('data-val')) == undefined ){
                menuItem.subMenu.push(item); // menuItem.subMenu에 저장
                var menu = "<li data-val='" + item.productId + "'><span class='itemName'>"
                    + item.name + "</span>" + "<span class='price'>" + formatNumber(item.price) + "</span><span class='deleteItem'>삭제</span></li>"
                var insertColumn = $('table tbody tr:nth-child(1) td').eq(5);
                insertColumn.children('.default').remove(); // '선택 안함' 지우기
                if (insertColumn.children('ul').length){ // ul이 있는지 확인
                    insertColumn.children('ul').append(menu);
                } else {
                    insertColumn.append("<ul>" + menu + "</ul>");
                }
            } else{
            	alert('이미 추가되었습니다.');
            }
            console.log(menuItem)
        } else {
            $(this).parents('.sideDrink').parents('li').removeClass('on');
        }
        displayPrice()
    });
    //-----------------------------------------------------------------------------------------------------------------
    // 스텝 6-2 : 사이드/음료 삭제 시
    $('table tbody tr:nth-child(1) td').eq(5).on('click','.deleteItem', function() {
        var ul = $(this).parents('ul');
        var productId = $(this).parents('li').attr('data-val');
        $(this).parents('li').remove();
        if(!ul.children('li').length) {// 목록이 다 지워졌다면.
            ul.parents('td').empty().append(defualtText);
        }
        /* subMenu 저장항목 삭제 */
        var some = menuItem.subMenu.find(item => item.productId == $(this).parents('li').attr('data-val'));
        menuItem.subMenu.splice(menuItem.subMenu.indexOf(some), 1);
        console.log(menuItem);
        displayPrice()
    });
    //-----------------------------------------------------------------------------------------------------------------
    // 가격 표시
    function displayPrice() {
        var price = menuItem.product.price
        $.each(menuItem.subMenu, function(index, item){
            price += item.price;
        })
        menuItem.price = price;
        $('table tbody tr:nth-child(1) td').eq(6).children('.orderPrice').text(formatNumber(price));
    }
    
    //길이선택 셀렉트박스 숨기기
    $(".selectLength").hide(); 
});

// menuItem을 sessionStorage에 담고 장바구니 페이지로 이동
function cart() {
    $('.cart').on('click', function(e) {
    	 e.preventDefault(); // 화면 갱신 막기
        if (!$('.info_content>ol>li').eq(0).hasClass('on')) {
            alert('메뉴를 선택해주세요.');
            return false;
        } else if (!$('.info_content>ol>li').eq(1).hasClass('on')) {
            alert('빵종류를 선택해주세요.');
            return false;
        } else {
        	// 배열로 만들어서 보낸다.
            var saving = [];
            var prev = JSON.parse(sessionStorage.getItem('menuItem'));
            if(prev != null) { // 세션에 정보가 있으면 받아옴.
                saving = prev;
            }
            saving.push(menuItem)
            sessionStorage.setItem("menuItem", JSON.stringify(saving));
            
            var result = confirm('메뉴를 더 추가하시겠습니까?');
            if (!result) {
            	window.location.href = "myPage/cart";
            } else{
            	window.location.reload();
            }
        }
    })
}
// 샌드위치 or 샐러드 셀렉트박스 리스트 뿌리기
function menuList() {
    $(".selectMenuKind .slct_list>ul>li>a").on('click',function() {
        var txt = $(this).attr('data-val');
        var str = "";
        $.each(list,function(index, item) {
            if (item.category == txt)
            str += "<li><a data-val=" + item.productId + " href='#'>" + item.name + "</a></li>";
        });
        $('.selectMenuName .slct_list>ul').append(str);
    });
}
// 토핑 리스트 뿌리기
function addToppingList() {
   var str = "";
   $.each(list, function(index, item) {
      if (item.category == "topping")
         str += "<li><a data-val=" + item.productId + " href='#'>"
            + item.name
            + "</a></li>";
   });
   $(str).insertAfter('.topping .slct_list>ul>li:first-child');
}
// 사이드 메뉴
function addSideList() {
   var str = "";
   $.each(list, function(index, item) {
      if (item.category == "side")
         str += "<li><a data-val=" + item.productId + " href='#'>"
            + item.name
            + "</a></li>";
   });
   $(str).insertAfter('.side+.slct_list>ul>li:first-child');
}
// 드링크 메뉴
function addDrinkList() {
   var str = "";
   $.each(list, function(index, item) {
      if (item.category == "drink")
         str += "<li><a data-val=" + item.productId + " href='#'>"
            + item.name
            + "</a></li>";
   });
   $(str).insertAfter('.drink+.slct_list>ul>li:first-child');
}
// 숫자 콤마 찍기
function formatNumber(num) {
	return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
}
</script>


	</c:when>
</c:choose>
</body>
</html>