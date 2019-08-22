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
                                    <li><a href="#" class="default">뺄 야채 선택</a></li>
                                    <li><a href="#" data-val="sandwich">양상추</a></li>
                                    <li><a href="#" data-val="sandwich">토마토</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="select_box sourceBox">
                            <span class="slct_head">소스 선택</span>
                            <div class="slct_list">
                                <ul>
                                    <li><a href="#" class="default">소스 선택</a></li>
                                    <li><a href="#" data-val="sandwich">스위트 어니언</a></li>
                                    <li><a href="#" data-val="sandwich">마요네즈</a></li>
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
                        <td><span class='default'>기본선택</span></td>
                        <td><span class='default'>선택안함</span></td>
                        <td><span class='orderPrice'>0</span></td>
                    </tr>
                </tbody>
            </table>
            <!-- 장바구니, 주문하기 버튼 -->
            <div class="inquiry_wrapper orderBtn">
                <div class="btns_wrapper">
                    <a href="#" class="cart btn bgc_point i_reg" style="width: 170px"><span>장바구니</span></a> <a
                        href="${pageContext.request.contextPath}/order/payment"
                        class="payment btn bgc_point i_reg od" style="width: 170px"><span>결제하기</span></a>
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
    breadType : "",
    veggies : "",
    source : "",
    subMenu : []
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

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 셀렉트 박스 내 메뉴 선택 시 이벤트들
$(function() {
    var selectMenuKind = "";
    var selectLength = "";
    var selectMenuName = "";
    var deleteBtn = "<span class='delete'>삭제</span>";
    var deleteA = "";
    var defualtText = "<span class='default'>선택안함</span>";

    var columnIndex = 0; // 몇번째 칸에 넣을지 구분하는 인덱스

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
        }
        // 메뉴 선택시 다른 셀렉트박스 초기화
        $('.selectMenuName .slct_head,.selectLength .slct_head').text("종류 선택");
        if ($(this).hasClass('default')) {
            $('.info_content>ol>li:first-child').removeClass('on');
            $('.selectMenuName .slct_list ul li:first-child').nextAll().remove();
        }
    });

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // 스텝 1-2 : 샌드위치의 길이 선택 시
    $('.selectLength').on('click','.slct_list>ul>li>a', function(e) {
        e.preventDefault(); // 화면 갱신 막기
        $(this).parents('.slct_list').prev('.slct_head').text($(this).text()); // 선택한 텍스트 셀렉트박스에 넣기

        selectLength = $(this).text();
    });

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // 스텝 1-3 : 메뉴 선택 시
    $('.selectMenuName').on('click','.slct_list>ul>li>a', function(e) {
        e.preventDefault(); // 화면 갱신 막기
        $(this).parents('.slct_list').prev('.slct_head').text($(this).text()); // 선택한 텍스트 셀렉트박스에 넣기
        selectMenuName = $(this).text();
        var addMainMenu = "";
        var _this = $(this);
        $.each(list, function(index, item) {
            if (item.productId == _this.attr('data-val')) {
                addMainMenu = "<li>" + deleteBtn + "<span class='itemName'>" + item.name
                    + " " + selectLength + "</span>" + "<span class='price'>" + item.price
                    + "</span>" + deleteA + "</li>";
                menuItem.product = item; // 메뉴에 저장
                console.log(menuItem);
                return false;
            }
        });
        $('table tbody tr:nth-child(1) td').eq(columnIndex).children('.default').remove();
        $('table tbody tr:nth-child(1) td').eq(columnIndex).append("<ul>" + addMainMenu + "</ul>");
    });

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // 스텝 1-extra : 메뉴 삭제
    $('table tbody tr:nth-child(1) td').eq(columnIndex).on('click', function() {
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
        console.log(menuItem);
    });


});

/** 셀렉트박스 메뉴선택 시 이벤트 */
function selectMenu() {
    var selectMenuKind = "";
    var selectLength = "";
    var selectMenuName = "";
    var addVegetable = "";
    var addSourceBox = "";
    var addTextList = "";
    var deleteBtn = "";
    var deleteA = "";
    var defualtText1 = "<span class='default'>선택안함</span>";
    var defualtText2 = "<span class='default'>기본선택</span>";
    var totalPrice = 0;
    var itemPrice = 0;

    $('.arr').click(function() {
        addTextList = "";
    });

    $('body').on('click','.slct_list>ul>li>a',function(e) {
        console.log(selectMenuKind);
        e.preventDefault(e);

        var txt = $(this).text();
        var index = $(this).parents('li.active').index();
        var thisSelectBox = $(this).parents('.select_box');

        /** 선택한 텍스트 셀렉트박스에 넣기 */
        $(this).parents('.slct_list').prev('.slct_head').text(txt);

        /** 메뉴 선택 */
        if (thisSelectBox.hasClass('selectMenuKind')) {
            selectMenuKind = $(this).attr('data-val');
            deleteBtn = "<span class='delete'>삭제</span>";
            deleteA = "";

            /** 샌드위치 길이를 선택하는 셀렉트 박스 노출 여부 */
            if (txt == '샌드위치') {
                $('.selectLength').show();
            } else {
                $('.selectLength').hide();
                selectLength = "";
            }
            
            /** 메뉴 선택시 다른 셀렉트박스 초기화 */
            $('.selectMenuName .slct_head,.selectLength .slct_head').text("종류 선택");
            if ($(this).hasClass('default')) {
                $('.info_content>ol>li:first-child').removeClass('on');
                $('.selectMenuName .slct_list ul li:first-child').nextAll().remove();
            }
        }

        /** 길이 선택시 변수에 담는다. */
        if (thisSelectBox.hasClass('selectLength')) {
            selectLength = $(this).text();
        } else {
            selectLength = "";
        }

        /** 종류 선택 */
        if (thisSelectBox.hasClass('selectMenuName')) {
            selectMenuName = $(this).text();
            deleteBtn = "<span class='delete'>삭제</span>";
            deleteA = "";

            if ($(this).parents('.selectMenuName').siblings('.selectMenuKind').find('.slct_head').text() == '샌드위치') {
                selectMenuKind = 'sandwich';
            } else {
                selectMenuKind = 'salad';
            }
            $('table tbody tr:nth-child(1)').addClass('on');
            if (!$(this).hasClass('default')) {
                $(this).parents('.selectMenuName').parents('li').addClass('on');
            } else {
                $(this).parents('.selectMenuName').parents('li').removeClass('on');
            }
        } else {
            deleteBtn = "";
            deleteA = "<span class='deleteItem'>삭제</span>";
        }

        /** 빵 선택 및 추가 */
        if (thisSelectBox.hasClass('bread')) {
            if (!$(this).hasClass('default')) {
                var addBread = "<ul><li data-val="
                        + $(this).attr('data-val')
                        + "><span class='itemName'>"
                        + txt
                        + "</span><span class='deleteItem'>삭제</span></li></ul>";
                $('table tbody tr:nth-child(1) td').eq(index).empty().append(addBread);
                $(this).parents('.bread').parents('li').addClass('on');

                /** menuItem에 빵 추가 */
                menuItem.breadType = txt;
                console.log(menuItem);
            } else {
                $(this).parents('.bread').parents('li').removeClass('on');
            }
        }

        /** 토핑 선택 */
        if (thisSelectBox.hasClass('topping')) {
            selectMenuKind = "topping";
        }

        /** 야채 선택 및 추가 */
        if (!$(this).hasClass('default')) {
            if (thisSelectBox.hasClass('vegetable')) {
                addVegetable += "<li><span class='itemName'>" + txt + "</span><span class='deleteItem'>삭제</span></li>";

                menuItem.veggies += txt + ";"; // 메뉴에 저장 

                /* 선택된 야채를 표에 넣어준다. */
                $('table tbody tr:nth-child(1) td').eq(index).empty().append("<ul>" + addVegetable + "</ul>");
            }
        }

        /** 소스 선택 및 추가 */
        if (!$(this).hasClass('default')) {
            if (thisSelectBox.hasClass('sourceBox')) {
                index = 4;
                addSourceBox += "<li><span class='itemName'>" + txt + "</span><span class='deleteItem'>삭제</span></li>";
                
                menuItem.source += txt + ";"; // 메뉴에 저장 

                /* 선택된 소스를 표에 넣어준다. */                
                $('table tbody tr:nth-child(1) td').eq(index).empty().append("<ul>" + addSourceBox + "</ul>");
            }
        }

        /** 사이드 메뉴 선택 */
        if (thisSelectBox.hasClass('sideDrink')) {
            index = 5;
            selectMenuKind = "side";
        }

        if (!$(this).hasClass('default')) {
            var _this = $(this);
            if (thisSelectBox.hasClass('addPrice')) { //가격 넣기

                /** 샌드위치나 샐러드를 선택시 표에 등록하는 항목 */
                if (thisSelectBox.hasClass('selectMenuName')) {
                    $.each(list,function(index,item) {
                        if (item.productId == _this.attr('data-val')) {
                            addTextList = "<li>" + deleteBtn + "<span class='itemName'>" + item.name + " "
                                + selectLength
                                + "</span>"
                                + "<span class='price'>"
                                + item.price
                                + "</span>"
                                + deleteA
                                + "</li>";
                            menuItem.product = item; // 메뉴에 저장
                        }
                    });
                }
                /** 토핑을 등록 한다. */
                else {
                	$.each(list,function(index,item) {
                        if (item.productId == _this.attr('data-val')) {
                        	console.log(item);
                            addTextList = "<li>" + deleteBtn + "<span class='itemName'>" + item.name + " "
                                    + selectLength
                                    + "</span>"
                                    + "<span class='price'>"
                                    + item.price
                                    + "</span>"
                                    + deleteA
                                    + "</li>";
                            menuItem.subMenu.push(item); // 메뉴에 저장 
                        }
                    });
                }
                var addMenuList = "<ul>" + addTextList + "</ul>";
                $('table tbody tr:nth-child(1) td').eq(index).children('.default').remove();
                $('table tbody tr:nth-child(1) td').eq(index).append(addMenuList);
                
                console.log(menuItem); // 메뉴 찍어봅니다.
            }
        }
    });

    $(".selectLength").hide(); //길이선택 셀렉트박스 숨기기

    function getItemPrice(tdIndex, ItemIndex) { //가격 빼기
        $('body').on('click', '.price', function(e) {
            var price = $(this).text();
            price = parseInt(price.replace(/,/g, ""));
            itemPrice = price;
        });

        $('tr td').eq(tdIndex).find('.price').eq(ItemIndex).trigger(
                'click');
        totalPrice -= itemPrice;
        var totalpriceTxt = String(totalPrice);
        totalpriceTxt = totalpriceTxt.replace(
                /(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
        $('.orderPrice').text(totalpriceTxt); //총가격
    }

    /** 빵 삭제 */
    $('body').on('click', '.deleteItem', function(e) {
        var thisParentsTd = $(this).parents('td');
        var liLength = $(this).parent('li').siblings('li').length;
        var tdIndex = thisParentsTd.index();
        var ItemIndex = $(this).parent('li').index();
        getItemPrice(tdIndex, ItemIndex) //가격 빼기

        if (liLength == 0) {
            if (thisParentsTd.index() == 4) {
                thisParentsTd.empty().append(defualtText2);
            } else {
                thisParentsTd.empty().append(defualtText1);
            }
            addTextList = "";
        }

        /* menuItem 저장항목 삭제 */
        menuItem.breadType = "";
        console.log(menuItem);
    });

    /** 주 메뉴 아이템 삭제 */
    $('body').on('click','.delete',function(e) {
        totalPrice = 0;
        $('tr td').empty().append(defualtText1);
        $('tr td').eq(4).empty().append(defualtText2);
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
        console.log(menuItem);
    });
}

/** 샌드위치 or 샐러드 셀렉트박스 리스트 뿌리기 */
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

/* menuItem을 sessionStorage에 담고 장바구니 페이지로 이동 */ 
function cart() {
    $('.cart').on('click', function() {
        if (!$('.info_content>ol>li').eq(0).hasClass('on')) {
            alert('메뉴를 선택해주세요.');
            return false;
        } else if (!$('.info_content>ol>li').eq(1).hasClass('on')) {
            alert('빵종류를 선택해주세요.');
            return false;
        } else {
            var result = confirm('장바구니 페이지로 이동하시겠습니까?');
            if (result) {
                sessionStorage.setItem("menuItem", JSON.stringify(menuItem));
                window.location.href = "myPage/cart";
            }
        }
    })
}

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
</script>
</body>
</html>