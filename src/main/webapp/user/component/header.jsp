<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="quanly.khachsan.quanlykhachsan.controller.user.helper.CartItem" %>
<%@ page import="java.util.Optional" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.io.*,java.util.*,javax.servlet.*" %>
<header class="header">


    <div class="container container-fixfull">
        <div class="header-content clearfix">

            <div class="menubar-icon f-left">
                <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/menu-bar.png?1667450085862"
                     alt="menu bar">
            </div>
            <div class="logo f-left">

                <a href="${pageContext.request.contextPath}/" class="logo-wrapper ">
                    <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/logo.png?1667450085862" alt="logo ">
                </a>

            </div>
            <div class="header-content clearfix">
                <ul class="menu-info f-left hidden-sm hidden-xs">

                    <li class="margin-left-0">
                        <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/icon-map.png?1667450085862"
                             alt="Địa chỉ">
                        <span>
							716 Bạch Đằng, Hai Bà Trưng, Hà Nội
						</span>

                    </li>
                    <li>
                        <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/icon-clock.png?1667450085862"
                             alt="Giờ làm việc">

                        <span>Giờ làm việc: 24/7 </span>
                    </li>
                </ul>
                <div class="f-right language margin-top-20 hidden-sm hidden-xs">
                    <div class="language-select">

                        <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/lan_1.png?1667450085862"
                             data-lazyload="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/lan_1.png?1667450085862"
                             alt="Tiếng Việt">
                        Tiếng Việt
                    </div>
                    <div class="language-more">


                    </div>
                </div>

                <div class="top-cart-contain f-right margin-top-20">
                    <div class="mini-cart text-xs-center">
                        <div class="heading-cart">
                            <a href="${pageContext.request.contextPath}/checkout">
                                <div class="icon f-left relative">

                                    <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/icon-cart.png?1667450085862"
                                         data-lazyload="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/icon-cart.png?1667450085862"
                                         alt="cart">

                                    <c:if test="${CartItemListSize != null}">
                                        <span class="cartCount count_item_pr" id="cart-total"><c:out
                                                value="${CartItemListSize}"/></span>
                                    </c:if>
                                    <c:if test="${CartItemListSize == null}">
                                        <span class="cartCount count_item_pr" id="cart-total">0</span>
                                    </c:if>

                                </div>


                            </a>
                        </div>
                        <div class="top-cart-content">
                            <c:if test="${CartItemListSize != null}">
                                <ul id="cart-sidebar" class="mini-products-list count_li">
                                    <c:forEach var="cartItem" items="${cartItemList}">

                                        <li>
                                            <img src="${cartItem.img}" height="20" width="20">
                                            Ngày: ${cartItem.ngay}, Giờ: ${cartItem.gio},
                                            Phòng: ${cartItem.maPhong}, <span
                                                style="color: ${cartItem.status ? "green" : "red"}">${cartItem.status ? "Đã đặt" : "Chưa đặt"}</span>
                                        </li>
                                        <c:if test="${cartItem.status == false}">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/dat-phong?cartId=${cartItem.id}">Đặt
                                                    phòng</a></li>
                                        </c:if>
                                    </c:forEach>
                                </ul>
                            </c:if>
                            <c:if test="${CartItemListSize == null}">
                                <ul id="cart-sidebar" class="mini-products-list count_li">
                                    <div class="no-item"><p>Bạn chưa chọn phòng nào.</p></div>
                                </ul>
                            </c:if>

                        </div>
                    </div>
                </div>
                <div class="menu-search f-right margin-top-20">

                    <div class="header_search search_form">
                        <button class="btn icon-fallback-text hidden-lg hidden-md hidden-sm">
                            <i class="fa fa-search"></i>
                        </button>
                        <form class="input-group search-bar search_form"
                              action="${pageContext.request.contextPath}/search" method="get" role="search">
                            <input type="search" name="query" value="" placeholder="Tìm kiếm"
                                   class="input-group-field st-default-search-input search-text" autocomplete="off">
                            <span class="input-group-btn">
			<button class="btn icon-fallback-text">
				<i class="fa fa-search"></i>
			</button>
		</span>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu-bar hidden-md hidden-lg">
        </div>
        <div class="icon-cart-mobile hidden-md hidden-lg f-left absolute hidden"
             onclick="window.location.href='/checkout'">
            <div class="icon relative">
                <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/icon-cart.png?1667450085862" alt="cart">
                <span class="cartCount count_item_pr">0</span>
            </div>
        </div>
        <nav class="">
            <div class="container">


                <div class="hidden-lg hidden-md menu-offcanvas">
                    <div class="head-menu clearfix">
                        <ul class="list-inline">

                            <li>
                                <a href="${pageContext.request.contextPath}/dangnhap"><i class="fa fa-user"></i> Đăng
                                    nhập</a>

                            </li>
                            <li><span>hoặc</span></li>
                            <li><a href="${pageContext.request.contextPath}/dangky">Đăng ký</a>
                            </li>


                            <li class="li-search">
                                <div class="header_search search_form">
                                    <button class="btn icon-fallback-text hidden-lg hidden-md hidden-sm">
                                        <i class="fa fa-search"></i>
                                    </button>
                                    <form class="input-group search-bar search_form" action="/search" method="get"
                                          role="search">
                                        <input type="search" name="query" value="" placeholder="Tìm kiếm"
                                               class="input-group-field st-default-search-input search-text"
                                               autocomplete="off">
                                        <span class="input-group-btn">
			<button class="btn icon-fallback-text">
				<i class="fa fa-search"></i>
			</button>
		</span>
                                    </form>
                                </div>

                            </li>
                        </ul>
                        <div class="menuclose"><i class="fa fa-close"></i></div>
                    </div>
                    <ul id="nav-mobile" class="nav hidden-md hidden-lg">
                        <li class="h3">
                            MENU
                        </li>


                        <li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/">Trang
                            chủ</a></li>


                        <li class="nav-item "><a class="nav-link" href="${pageContext.request.contextPath}/gioi-thieu">Giới
                            thiệu</a></li>


                        <li class="nav-item "><a class="nav-link" href="${pageContext.request.contextPath}/collections">Sản
                            phẩm</a></li>


                        <li class="nav-item "><a class="nav-link" href="${pageContext.request.contextPath}/tin-tuc">Tin
                            tức</a></li>


                        <li class="nav-item "><a class="nav-link" href="${pageContext.request.contextPath}/lien-he">Liên
                            hệ</a></li>


                    </ul>
                </div>

            </div>
        </nav>
    </div>
    <div class="menu-full hidden-sm hidden-xs">
        <div class="relative">
			<span class="fa fa-close absolute">
			</span>
            <div class="content">


                <nav class="">
                    <div class="container">

                        <div class="hidden-sm hidden-xs">
                            <ul class="nav nav-left">


                                <li class="nav-item active"><a class="nav-link"
                                                               href="${pageContext.request.contextPath}/">Trang chủ</a>
                                </li>


                                <li class="nav-item "><a class="nav-link"
                                                         href="${pageContext.request.contextPath}/gioi-thieu">Giới
                                    thiệu</a></li>


                                <li class="nav-item "><a class="nav-link"
                                                         href="${pageContext.request.contextPath}/collections">Sản
                                    phẩm</a></li>


                                <li class="nav-item "><a class="nav-link"
                                                         href="${pageContext.request.contextPath}/tin-tuc">Tin tức</a>
                                </li>


                                <li class="nav-item "><a class="nav-link"
                                                         href="${pageContext.request.contextPath}/lien-he">Liên hệ</a>
                                </li>


                            </ul>
                            <div class="head-menu clearfix">
                                <ul class="list-inline">

                                    <li>
                                        <a href="${pageContext.request.contextPath}/dangnhap"><i class="fa fa-user"></i>
                                            Đăng nhập</a>

                                    </li>

                                    <li><a href="${pageContext.request.contextPath}/dangky"><i class="fa  fa-lock"></i>
                                        Đăng ký</a>
                                    </li>

                                </ul>

                            </div>
                        </div>


                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>
