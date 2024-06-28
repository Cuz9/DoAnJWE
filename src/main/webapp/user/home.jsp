<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="quanly.khachsan.quanlykhachsan.model.KhachHang" %>
<%@ page import="java.util.Optional" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.io.*,java.util.*,javax.servlet.*" %>
<!DOCTYPE html>
<html lang="vi" class="mdl-js">
<jsp:include page="component/head.jsp"/>
<body data-new-gr-c-s-check-loaded="14.1073.0" data-gr-ext-installed="">
<!-- Main content -->
<jsp:include page="component/header.jsp"/>
<h1 class="hidden">Sunrise Hanoi Hotel - </h1>


<section class="awe-section-1">
    <div class="relative">
        <div class="home-slider owl-carousel owl-loaded owl-drag" data-lg-items="1" data-md-items="1" data-sm-items="1"
             data-xs-items="1" data-margin="0" data-nav="true">


            <div class="owl-stage-outer">
                <div class="owl-stage"
                     style="transform: translate3d(0px, 0px, 0px); transition: all 0.25s ease 0s; width: 5430px;">
                    <div class="owl-item active" style="width: 1810px;">
                        <div class="item">
                            <a href="#" class="clearfix">
                                <picture>
                                    <source media="(min-width: 1200px)"
                                            srcset="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/slider_1.jpg?1667450085862">
                                    <source media="(min-width: 992px)"
                                            srcset="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/slider_1.jpg?1667450085862">
                                    <source media="(max-width: 569px)"
                                            srcset="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/slider_1mb.jpg?1667450085862">
                                    <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/slider_1.jpg?1667450085862"
                                         alt="alt slider demo">
                                </picture>

                            </a>
                        </div>
                    </div>
                    <div class="owl-item" style="width: 1810px;">
                        <div class="item">
                            <a href="#" class="clearfix">
                                <picture>
                                    <source media="(min-width: 1200px)"
                                            srcset="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/slider_2.jpg?1667450085862">
                                    <source media="(min-width: 992px)"
                                            srcset="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/slider_2.jpg?1667450085862">
                                    <source media="(max-width: 569px)"
                                            srcset="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/slider_2mb.jpg?1667450085862">
                                    <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/slider_2.jpg?1667450085862"
                                         alt="alt slider demo">
                                </picture>

                            </a>
                        </div>
                    </div>
                    <div class="owl-item" style="width: 1810px;">
                        <div class="item">
                            <a href="#" class="clearfix">
                                <picture>
                                    <source media="(min-width: 1200px)"
                                            srcset="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/slider_3.jpg?1667450085862">
                                    <source media="(min-width: 992px)"
                                            srcset="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/slider_3.jpg?1667450085862">
                                    <source media="(max-width: 569px)"
                                            srcset="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/slider_3mb.jpg?1667450085862">
                                    <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/slider_3.jpg?1667450085862"
                                         alt="alt slider demo">
                                </picture>

                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="owl-nav">
                <div class="owl-prev disabled"><i class="fa fa-angle-left"></i></div>
                <div class="owl-next"><i class="fa fa-angle-right"></i></div>
            </div>
            <div class="owl-dots disabled"></div>
        </div><!-- /.products -->
        <div class="absolute box-booking">
            <div class="container relative">
                <div class="box absolute">
                    <div class="box-title a-center">
                        <h3>Đặt phòng</h3>
                        <p>
                            Nhập thông tin của bạn chúng tôi sẽ gọi lại
                            hỗ trợ bạn ngay
                        </p>
                    </div>

                    <c:if test="${khachHang != null}">

                    </c:if>

                    <form accept-charset="UTF-8" action="${pageContext.request.contextPath}/contact" id="contact" method="post">
                        <input name="FormType" type="hidden" value="contact">
                        <input name="utf8" type="hidden" value="true">


                        <p id="errorFills" style="margin-bottom:10px; color: red;"></p>
                        <div id="emtry_contact" class="form-signup form_contact clearfix">
                            <div class="row row-8Gutter">
                                <c:if test="${khachHang != null}">
                                    <div class="col-md-12">
                                        <fieldset class="form-group">
                                            <input type="text" placeholder="Họ tên*" name="contact[name]" id="name"
                                                   class="form-control  form-control-lg" required="" disabled="disabled" value="${khachHang.tenKhachHang}">
                                        </fieldset>
                                    </div>

                                    <div class="col-md-12">
                                        <fieldset class="form-group">
                                            <input type="number" placeholder="Điện thoại*" name="contact[phone]"
                                                   class="form-control form-control-lg" required="" disabled="disabled" value="${khachHang.soDienThoai}">
                                        </fieldset>
                                    </div>
                                </c:if>
                                <c:if test="${khachHang == null}">
                                    <div class="col-md-12">
                                        <fieldset class="form-group">
                                            <input type="text" placeholder="Họ tên*" name="contact[name]" id="name"
                                                   class="form-control  form-control-lg" required="">
                                        </fieldset>
                                    </div>

                                    <div class="col-md-12">
                                        <fieldset class="form-group">
                                            <input type="number" placeholder="Điện thoại*" name="contact[phone]"
                                                   class="form-control form-control-lg" required="">
                                        </fieldset>
                                    </div>
                                </c:if>

                                <div class="col-md-12">
                                    <fieldset class="form-group">
                                        <select name="contact[Style]" class="form-control  form-control-lg"
                                                style="background-image: url(//bizweb.dktcdn.net/100/467/686/themes/881628/assets/dropdown.png?1667450085862); background-color: #fff!important;">
                                            <option selected="" disabled="">Kiểu phòng</option>
                                            <option value="Phong don">Phòng đơn</option>
                                            <option value="Phong doi">Phòng đôi</option>
                                        </select>
                                    </fieldset>
                                </div>
                            </div>
                            <div class="product-tours-details clearfix relative">
                                <div class="line-item-property__field">
                                    <div class="input-group">

                                        <input class="tourmaster-datepicker hasDatepicker" id="datesss"
                                               name="properties[Ngay]" type="date"
                                               data-date-format="dd MM yyyy">
                                    </div>
                                    <div class="input-group">
                                        <select name="properties[Gio]" id="guiest_id1" class="select-drop"
                                                style="background-image: url(//bizweb.dktcdn.net/100/467/686/themes/881628/assets/hour.png?1667450085862); background-color: #fff!important;">
                                            <option selected="" disabled="">Giờ</option>
                                            <option value="8h">0 AM</option>
                                            <option value="8h">1.00 AM</option>
                                            <option value="8h">2.00 AM</option>
                                            <option value="8h">3.00 AM</option>
                                            <option value="8h">4.00 AM</option>
                                            <option value="8h">5.00 AM</option>
                                            <option value="8h">6.00 AM</option>
                                            <option value="8h">7.00 AM</option>
                                            <option value="8h">8.00 AM</option>
                                            <option value="8h">9.00 AM</option>
                                            <option value="10h">10.00 AM</option>
                                            <option value="11h">11.00 AM</option>
                                            <option value="13h">1.00 PM</option>
                                            <option value="14h">2.00 PM</option>
                                            <option value="15h">3.00 PM</option>
                                            <option value="16h">4.00 PM</option>
                                            <option value="17h">5.00 PM</option>
                                            <option value="17h">6.00 PM</option>
                                            <option value="17h">7.00 PM</option>
                                            <option value="17h">8.00 PM</option>
                                            <option value="17h">9.00 PM</option>
                                            <option value="17h">10.00 PM</option>
                                            <option value="17h">11.00 PM</option>
                                        </select>
                                    </div>

                                </div>
                            </div>
                            <fieldset class="form-group" hidden="">
                                <textarea name="contact[body]" content="Form đặt phòng" placeholder="Nhập nội dung*"
                                          id="comment" class="form-control form-control-lg"
                                          rows="6">Form đặt phòng</textarea>
                            </fieldset>
                            <div>

                                <button class="btn btn-primary btn-full margin-top-15">Gửi thông tin</button>
                            </div>
                            <div class="phone a-center">
							<span>

								<a href="callto:84982428142">+84982428142</a>

							</span>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="container">

    <div class="row">
        <section class="main_container collection col-lg-12">

            <div class="category-products products">


                <section class="products-view products-view-grid">
                    <div class="row">

                        <c:forEach var="phong" items="${listPhongs}">
                            <%--                            <tr>--%>
                            <%--                                <td class="center-align">${phong.maPhong}</td>--%>
                            <%--                                <td class="center-align">${phong.maLoaiPhong}</td>--%>
                            <%--                                <td class="center-align">${phong.tenPhong}</td>--%>
                            <%--                                <td class="center-align">--%>
                            <%--                                    <img src="${phong.hinhAnh}" alt="Hình ảnh phòng"--%>
                            <%--                                         style="width: 100px; height: 100px;">--%>
                            <%--                                </td>--%>
                            <%--                                <td class="center-align">${phong.sucChua}</td>--%>
                            <%--                                <td class="center-align">${phong.donGia}</td>--%>
                            <%--                                <td class="center-align">${phong.moTa}</td>--%>
                            <%--                                <td class="center-align">${phong.tinhTrang ? "Có sẵn" : "Đã đặt"}</td>--%>
                            <%--                                <td class="center-align">--%>
                            <%--                                    <a href="${pageContext.request.contextPath}/phong?action=edit&maPhong=${phong.maPhong}"--%>
                            <%--                                       class="btn btn-warning btn-sm">Sửa</a>--%>
                            <%--                                    <a href="${pageContext.request.contextPath}/phong?action=delete&maPhong=${phong.maPhong}"--%>
                            <%--                                       class="btn btn-danger btn-sm">Xóa</a>--%>
                            <%--                                </td>--%>
                            <%--                            </tr>--%>

                            <div class="col-xs-6 col-xss-12 col-sm-4 col-md-4 col-lg-4">


                                <div class="product-box">
                                    <div class="product-thumbnail flexbox-grid">
                                        <a href="${pageContext.request.contextPath}/chi-tiet-phong?action=view&maPhong=${phong.maPhong}" title="Ưu đãi đặc biệt">
                                            <img src="${phong.hinhAnh}"
                                                 data-lazyload="${phong.hinhAnh}"
                                                 alt="Ưu đãi đặc biệt">
                                        </a>


                                        <div class="product-action hidden-md hidden-sm hidden-xs clearfix">
                                            <form action="/cart/add" method="post"
                                                  class="variants form-nut-grid margin-bottom-0"
                                                  data-id="product-actions-28225551" enctype="multipart/form-data">
                                                <div>

                                                    <a href="/uu-dai-dac-biet" data-handle="uu-dai-dac-biet"
                                                       class="btn-gray btn_view btn right-to quick-view">
                                                        <i class="fa fa-compress"></i></a>


                                                </div>
                                            </form>
                                        </div>


                                        <div class="price">

                                            <div class="price-box clearfix">
                                                <div class="special-price clearfix">
                                                    <span class="price product-price">${phong.donGia} vnd</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="product-info a-left">
                                        <div class="review">


                                            <span class="rv">${phong.tinhTrang ? "Có sẵn" : "Đã đặt"} <i>${phong.maPhong}</i></span>
                                            <span class="count">${phong.sucChua}</span>


                                        </div>
                                        <h3 class="product-name">
                                            <a href="${pageContext.request.contextPath}/chi-tiet-phong?action=view&maPhong=${phong.maPhong}" title="Ưu đãi đặc biệt">
                                                    ${phong.tenPhong}
                                            </a>
                                        </h3>

                                        <div class="product-summary margin-top-10">
                                                ${phong.moTa}

                                        </div>

                                    </div>

                                </div>
                            </div>
                        </c:forEach>


                    </div>
                    <div class="text-xs-right">

                    </div>
                </section>

            </div>
        </section>
    </div>
</div>

<section class="awe-section-2">
    <div class="section section-policy">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="policy fixpadding">
                        <div class="row">


                            <div class="col-sm-4">
                                <div class="policy-item a-left">
                                    <div class="icon">
                                        <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/po1.png?1667450085862"
                                             alt="Wifi mạnh">
                                    </div>
                                    <div class="info">
                                        <h3>Wifi mạnh</h3>
                                        <p>
                                            Hệ thống wifi tiêu chuẩn quốc tế Lắp đặt riêng cho từng phòng
                                        </p>
                                    </div>
                                </div>
                            </div>


                            <div class="col-sm-4">
                                <div class="policy-item a-left">
                                    <div class="icon">
                                        <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/po2.png?1667450085862"
                                             alt="Phòng tiện nghi">
                                    </div>
                                    <div class="info">
                                        <h3>Phòng tiện nghi</h3>
                                        <p>
                                            Ti vi, Ban công, Bồn tắm
                                        </p>
                                    </div>
                                </div>
                            </div>


                            <div class="col-sm-4">
                                <div class="policy-item a-left">
                                    <div class="icon">
                                        <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/po3.png?1667450085862"
                                             alt="Ẩm thực">
                                    </div>
                                    <div class="info">
                                        <h3>Ẩm thực</h3>
                                        <p>
                                            Phục vụ Buffet Sáng miễn phí

                                        </p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>


<section class="awe-section-3">
    <div class="section section-about">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="about-content a-center">
                        <h2>Chào mừng đến với Khách sạn Sunrise Hà Nội</h2>
                        <div class="content">- Nằm ở thành phố Hà Nội, Khách sạn Sunrise Hà Nội có nhà hàng. Chỗ nghỉ
                            cung cấp dịch vụ lễ tân 24 giờ, dịch vụ phòng và dịch vụ thu đổi ngoại tệ cho khách. <br>
                            - Tất cả phòng nghỉ tại đây đều được trang bị máy điều hòa, truyền hình cáp màn hình phẳng,
                            ấm đun nước, chậu rửa vệ sinh (bidet), máy sấy tóc và bàn làm việc. Các phòng còn có tầm
                            nhìn ra quang cảnh thành phố và phòng tắm riêng đi kèm vòi sen cùng đồ vệ sinh cá nhân miễn
                            phí. <br>
                            - Khách sạn Sunrise Hà Nội phục vụ bữa sáng kiểu lục địa hoặc tự chọn. <br> Du khách có thể
                            thoải mái sử dụng phòng xông hơi khô của chỗ nghỉ. Đi xe đạp là hoạt động được ưa chuộng
                            trong khu vực và du khách cũng có thể thuê xe hơi tại Khách sạn Sunrise Hà Nội.
                            <br> - Khách sạn nằm cách Nhà Hát Lớn Hà Nội 2 km và trung tâm thương mại Tràng Tiền Plaza
                            2,4 km. Sân bay gần nhất là sân bay quốc tế Nội Bài, nằm trong bán kính 23 km từ Khách sạn
                            Sunrise Hà Nội, và chỗ nghỉ cung cấp dịch vụ đưa đón sân bay với một khoản phụ phí.
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">


                        <div class="col-xs-6">
                            <div class="image">
                                <a href="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/about1.jpg?1667450085862"
                                   data-fancybox="images" class="img1 block">

                                    <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/about1.jpg?1667450085862"
                                         data-lazyload="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/about1.jpg?1667450085862"
                                         alt="Alt demo">

                                </a>
                            </div>
                        </div>


                        <div class="col-xs-6">
                            <div class="image">
                                <a href="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/about2.jpg?1667450085862"
                                   data-fancybox="images" class="img1 block">

                                    <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/about2.jpg?1667450085862"
                                         data-lazyload="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/about2.jpg?1667450085862"
                                         alt="Alt demo">

                                </a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="awe-section-4">


    <div class="section section_tab_product a-center products-view-grid gialap">
        <div class="container">
            <div class="section-title">
                <h2>
                    Dịch vụ tiện nghi
                </h2>
            </div>
            <div class="e-tabs not-dqtab">
                <div class="row row-noGutter">
                    <div class="col-sm-12">
                        <div class="content">
                            <div>
                                <ul class="tabs tabs-title tab-mobile clearfix hidden-sm hidden-md hidden-lg">
                                    <li class="prev current"><i class="fa fa-angle-left"></i></li>
                                    <li class="tab-link tab-title hidden-sm hidden-md hidden-lg current"
                                        id="tab-titlexx" data-tab="tab-1">
                                        <span>Phòng khách sạn</span>
                                    </li>
                                    <li class="next"><i class="fa fa-angle-right"></i></li>
                                </ul>
                                <ul class="tabs tabs-title clearfix hidden-xs">


                                    <li class="tab-link current" data-tab="tab-1">

                                        <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/tab1_icon.png?1667450085862"
                                             data-lazyload="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/tab1_icon.png?1667450085862"
                                             alt="Phòng khách sạn">
                                        <span>Phòng khách sạn</span>
                                    </li>


                                    <li class="tab-link" data-tab="tab-2">

                                        <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/tab2_icon.png?1667450085862"
                                             data-lazyload="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/tab2_icon.png?1667450085862"
                                             alt="Buffet, tiệc">
                                        <span>Buffet, tiệc</span>
                                    </li>


                                    <li class="tab-link" data-tab="tab-4">

                                        <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/tab4_icon.png?1667450085862"
                                             data-lazyload="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/tab4_icon.png?1667450085862"
                                             alt="Dịch vụ xe">
                                        <span>Dịch vụ xe</span>
                                    </li>


                                </ul>


                                <div class="tab-content tab-1 current">
                                    <div class="products products-view-grid ">
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="head-content">
                                                    <h3>Hệ thống phòng ốc</h3>
                                                    <div class="info">
                                                        <p>Với vị thế đắc địa đặt tại trung tâm Hà Nội, Khách sạn
                                                            Sunrise Hà Nội tự hào sở hữu kiến trúc thanh lịch và đội ngũ
                                                            nhân viên chuyên nghiệp. Chỉ cách các điểm du lịch và phố cổ
                                                            Hà Nội vài bước chân và cách sân bay quốc tế Nội Bài 30 phút
                                                            lái xe,</p>
                                                    </div>
                                                </div>
                                                <div class="count">
                                                    <div class="row a-center">
                                                        <div class="col-xs-6">
                                                            <div class="count-item">

                                                                <p>50</p>
                                                                <h5>Superior</h5>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-6">
                                                            <div class="count-item">

                                                                <p>15</p>
                                                                <h5>Duluxe</h5>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-6">
                                                            <div class="count-item">

                                                                <p>35</p>
                                                                <h5>Excutive</h5>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-6">
                                                            <div class="count-item">

                                                                <p>06</p>
                                                                <h5>Family</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="viewmore a-center">

                                                    <a class="btn btn-outline"
                                                       href="${pageContext.request.contextPath}/san-pham-noi-bat">Xem
                                                        thêm</a>
                                                </div>
                                            </div>
                                            <div class="col-md-7">

                                                <div class="owl-carousel owl-loaded owl-drag" data-lg-items="1"
                                                     data-md-items="1" data-sm-items="1" data-xs-items="1"
                                                     data-margin="30" data-dot="true">


                                                    <div class="owl-stage-outer">
                                                        <div class="owl-stage"
                                                             style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 2049px;">
                                                            <div class="owl-item active"
                                                                 style="width: 653px; margin-right: 30px;">
                                                                <div class="item">


                                                                    <div class="product-box">
                                                                        <div class="product-thumbnail flexbox-grid">
                                                                            <a href="${pageContext.request.contextPath}/uu-dai-dac-biet"
                                                                               title="Ưu đãi đặc biệt">
                                                                                <img src="//bizweb.dktcdn.net/thumb/1024x1024/100/467/686/products/5e75d76d3fcd4cc881f69202475c17ca.png?v=1666759455543"
                                                                                     data-lazyload="//bizweb.dktcdn.net/thumb/1024x1024/100/467/686/products/5e75d76d3fcd4cc881f69202475c17ca.png?v=1666759455543"
                                                                                     alt="Ưu đãi đặc biệt">
                                                                            </a>
                                                                            <div class="price hidden-lg hidden-sm hidden-md">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>

                                                                        </div>
                                                                        <div class="product-info a-left">
                                                                            <div class="review">


                                                                                <span class="rv">Xuất sắc <i>9.0</i></span>
                                                                                <span class="count">( 15 đánh giá )</span>


                                                                            </div>
                                                                            <div class="price hidden-xs">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                            <h3 class="product-name"><a
                                                                                    href="${pageContext.request.contextPath}/uu-dai-dac-biet"
                                                                                    title="Ưu đãi đặc biệt">Ưu đãi đặc
                                                                                biệt</a></h3>

                                                                            <div class="product-summary margin-top-10">

                                                                                Giảm giá 20% cho khách lưu trú trên bill
                                                                                tại nhà hàng Sunrise BBQ

                                                                            </div>
                                                                            <a class="btn btn-outline"
                                                                               href="${pageContext.request.contextPath}/uu-dai-dac-biet">Xem
                                                                                chi tiết</a>

                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="owl-item"
                                                                 style="width: 653px; margin-right: 30px;">
                                                                <div class="item">


                                                                    <div class="product-box">
                                                                        <div class="product-thumbnail flexbox-grid">
                                                                            <a href="${pageContext.request.contextPath}/phong-co-cua-so-sunrise-ha-noi-hotel"
                                                                               title="Phòng có cửa sổ Sunrise Hà Nội Hotel">
                                                                                <img src="//bizweb.dktcdn.net/thumb/1024x1024/100/467/686/products/98241bacd623117d4832.jpg?v=1666335830590"
                                                                                     data-lazyload="//bizweb.dktcdn.net/thumb/1024x1024/100/467/686/products/98241bacd623117d4832.jpg?v=1666335830590"
                                                                                     alt="Phòng có cửa sổ Sunrise Hà Nội Hotel">
                                                                            </a>
                                                                            <div class="price hidden-lg hidden-sm hidden-md">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>

                                                                        </div>
                                                                        <div class="product-info a-left">
                                                                            <div class="review">


                                                                                <span class="rv">Xuất sắc <i>9.0</i></span>
                                                                                <span class="count">( 15 đánh giá )</span>


                                                                            </div>
                                                                            <div class="price hidden-xs">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                            <h3 class="product-name"><a
                                                                                    href="${pageContext.request.contextPath}/phong-co-cua-so-sunrise-ha-noi-hotel"
                                                                                    title="Phòng có cửa sổ Sunrise Hà Nội Hotel">Phòng
                                                                                có cửa sổ Sunrise Hà Nội Hotel</a></h3>

                                                                            <div class="product-summary margin-top-10">

                                                                                &nbsp;
                                                                                Tọa lạc tại thành phố Hà Nội, cách Nhà
                                                                                hát múa rối nước Thăng Long 300 m,
                                                                                Sunrise Hà Nội Hotel cung cấp chỗ nghỉ
                                                                                với nhà hàng, chỗ đỗ xe riêng miễn phí,
                                                                                quán...

                                                                            </div>
                                                                            <a class="btn btn-outline"
                                                                               href="${pageContext.request.contextPath}/phong-co-cua-so-sunrise-ha-noi-hotel">Xem
                                                                                chi tiết</a>

                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="owl-item"
                                                                 style="width: 653px; margin-right: 30px;">
                                                                <div class="item">


                                                                    <div class="product-box">
                                                                        <div class="product-thumbnail flexbox-grid">
                                                                            <a href="${pageContext.request.contextPath}/phong-view-song-hong-sunrise-ha-noi-hotel"
                                                                               title="Phòng view Sông Hồng Sunrise Hà Nội Hotel">
                                                                                <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/rolling.svg?1667450085862"
                                                                                     data-lazyload="//bizweb.dktcdn.net/thumb/1024x1024/100/467/686/products/119135009-ad9dc86d-aaab-430f-8cdb-23c0f98bffd6.jpg?v=1666335546027"
                                                                                     alt="Phòng view Sông Hồng Sunrise Hà Nội Hotel">
                                                                            </a>
                                                                            <div class="price hidden-lg hidden-sm hidden-md">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>

                                                                        </div>
                                                                        <div class="product-info a-left">
                                                                            <div class="review">


                                                                                <span class="rv">Xuất sắc <i>9.9</i></span>
                                                                                <span class="count">( 150 đánh giá )</span>


                                                                            </div>
                                                                            <div class="price hidden-xs">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                            <h3 class="product-name"><a
                                                                                    href="${pageContext.request.contextPath}/phong-view-song-hong-sunrise-ha-noi-hotel"
                                                                                    title="Phòng view Sông Hồng Sunrise Hà Nội Hotel">Phòng
                                                                                view Sông Hồng Sunrise Hà Nội Hotel</a>
                                                                            </h3>

                                                                            <div class="product-summary margin-top-10">

                                                                                Tọa lạc tại thành phố Hà Nội, cách Nhà
                                                                                hát múa rối nước Thăng Long 300 m,
                                                                                Sunrise Hà Nội Hotel cung cấp chỗ nghỉ
                                                                                với nhà hàng, chỗ đỗ xe riêng miễn phí,
                                                                                quán...

                                                                            </div>
                                                                            <a class="btn btn-outline"
                                                                               href="${pageContext.request.contextPath}/phong-view-song-hong-sunrise-ha-noi-hotel">Xem
                                                                                chi tiết</a>

                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="owl-nav disabled">
                                                        <div class="owl-prev"><i class="fa fa-angle-left"></i></div>
                                                        <div class="owl-next"><i class="fa fa-angle-right"></i></div>
                                                    </div>
                                                    <div class="owl-dots">
                                                        <div class="owl-dot active"><span></span></div>
                                                        <div class="owl-dot"><span></span></div>
                                                        <div class="owl-dot"><span></span></div>
                                                    </div>
                                                </div>


                                            </div>
                                        </div>
                                    </div><!-- /.products -->
                                </div>


                                <div class="tab-content tab-2">
                                    <div class="products products-view-grid ">
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="head-content">
                                                    <h3>Hệ thống buffet, tiệc</h3>
                                                    <div class="info">
                                                        <p>Ưu đãi đặc biệt: Giảm giá 20% cho khách lưu trú trên bill tại
                                                            nhà
                                                            hàng Sunrise BBQ;</p>
                                                    </div>
                                                </div>
                                                <div class="count">
                                                    <div class="row a-center">
                                                        <div class="col-xs-6">
                                                            <div class="count-item">

                                                                <p></p>
                                                                <h5></h5>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-6">
                                                            <div class="count-item">

                                                                <p></p>
                                                                <h5></h5>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-6">
                                                            <div class="count-item">

                                                                <p></p>
                                                                <h5></h5>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-6">
                                                            <div class="count-item">

                                                                <p></p>
                                                                <h5></h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="viewmore a-center">

                                                    <a class="btn btn-outline"
                                                       href="${pageContext.request.contextPath}/san-pham-noi-bat">Xem
                                                        thêm</a>
                                                </div>
                                            </div>
                                            <div class="col-md-7">

                                                <div class="owl-carousel owl-loaded owl-drag" data-lg-items="1"
                                                     data-md-items="1" data-sm-items="1" data-xs-items="1"
                                                     data-margin="30" data-dot="true">


                                                    <div class="owl-stage-outer">
                                                        <div class="owl-stage"
                                                             style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 2049px;">
                                                            <div class="owl-item active"
                                                                 style="width: 653px; margin-right: 30px;">
                                                                <div class="item">


                                                                    <div class="product-box">
                                                                        <div class="product-thumbnail flexbox-grid">
                                                                            <a href="${pageContext.request.contextPath}/uu-dai-dac-biet"
                                                                               title="Ưu đãi đặc biệt">
                                                                                <img src="//bizweb.dktcdn.net/thumb/1024x1024/100/467/686/products/5e75d76d3fcd4cc881f69202475c17ca.png?v=1666759455543"
                                                                                     data-lazyload="//bizweb.dktcdn.net/thumb/1024x1024/100/467/686/products/5e75d76d3fcd4cc881f69202475c17ca.png?v=1666759455543"
                                                                                     alt="Ưu đãi đặc biệt">
                                                                            </a>
                                                                            <div class="price hidden-lg hidden-sm hidden-md">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>

                                                                        </div>
                                                                        <div class="product-info a-left">
                                                                            <div class="review">


                                                                                <span class="rv">Xuất sắc <i>9.0</i></span>
                                                                                <span class="count">( 15 đánh giá )</span>


                                                                            </div>
                                                                            <div class="price hidden-xs">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                            <h3 class="product-name"><a
                                                                                    href="${pageContext.request.contextPath}/uu-dai-dac-biet"
                                                                                    title="Ưu đãi đặc biệt">Ưu đãi đặc
                                                                                biệt</a></h3>

                                                                            <div class="product-summary margin-top-10">

                                                                                Giảm giá 20% cho khách lưu trú trên bill
                                                                                tại nhà hàng Sunrise BBQ

                                                                            </div>
                                                                            <a class="btn btn-outline"
                                                                               href="${pageContext.request.contextPath}/uu-dai-dac-biet">Xem
                                                                                chi tiết</a>

                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="owl-item"
                                                                 style="width: 653px; margin-right: 30px;">
                                                                <div class="item">


                                                                    <div class="product-box">
                                                                        <div class="product-thumbnail flexbox-grid">
                                                                            <a href="${pageContext.request.contextPath}/phong-co-cua-so-sunrise-ha-noi-hotel"
                                                                               title="Phòng có cửa sổ Sunrise Hà Nội Hotel">
                                                                                <img src="//bizweb.dktcdn.net/thumb/1024x1024/100/467/686/products/98241bacd623117d4832.jpg?v=1666335830590"
                                                                                     data-lazyload="//bizweb.dktcdn.net/thumb/1024x1024/100/467/686/products/98241bacd623117d4832.jpg?v=1666335830590"
                                                                                     alt="Phòng có cửa sổ Sunrise Hà Nội Hotel">
                                                                            </a>
                                                                            <div class="price hidden-lg hidden-sm hidden-md">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>

                                                                        </div>
                                                                        <div class="product-info a-left">
                                                                            <div class="review">


                                                                                <span class="rv">Xuất sắc <i>9.0</i></span>
                                                                                <span class="count">( 15 đánh giá )</span>


                                                                            </div>
                                                                            <div class="price hidden-xs">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                            <h3 class="product-name"><a
                                                                                    href="${pageContext.request.contextPath}/phong-co-cua-so-sunrise-ha-noi-hotel"
                                                                                    title="Phòng có cửa sổ Sunrise Hà Nội Hotel">Phòng
                                                                                có cửa sổ Sunrise Hà Nội Hotel</a></h3>

                                                                            <div class="product-summary margin-top-10">

                                                                                &nbsp;
                                                                                Tọa lạc tại thành phố Hà Nội, cách Nhà
                                                                                hát múa rối nước Thăng Long 300 m,
                                                                                Sunrise Hà Nội Hotel cung cấp chỗ nghỉ
                                                                                với nhà hàng, chỗ đỗ xe riêng miễn phí,
                                                                                quán...

                                                                            </div>
                                                                            <a class="btn btn-outline"
                                                                               href="${pageContext.request.contextPath}/phong-co-cua-so-sunrise-ha-noi-hotel">Xem
                                                                                chi tiết</a>

                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="owl-item"
                                                                 style="width: 653px; margin-right: 30px;">
                                                                <div class="item">


                                                                    <div class="product-box">
                                                                        <div class="product-thumbnail flexbox-grid">
                                                                            <a href="${pageContext.request.contextPath}/phong-view-song-hong-sunrise-ha-noi-hotel"
                                                                               title="Phòng view Sông Hồng Sunrise Hà Nội Hotel">
                                                                                <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/rolling.svg?1667450085862"
                                                                                     data-lazyload="//bizweb.dktcdn.net/thumb/1024x1024/100/467/686/products/119135009-ad9dc86d-aaab-430f-8cdb-23c0f98bffd6.jpg?v=1666335546027"
                                                                                     alt="Phòng view Sông Hồng Sunrise Hà Nội Hotel">
                                                                            </a>
                                                                            <div class="price hidden-lg hidden-sm hidden-md">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>

                                                                        </div>
                                                                        <div class="product-info a-left">
                                                                            <div class="review">


                                                                                <span class="rv">Xuất sắc <i>9.9</i></span>
                                                                                <span class="count">( 150 đánh giá )</span>


                                                                            </div>
                                                                            <div class="price hidden-xs">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                            <h3 class="product-name"><a
                                                                                    href="${pageContext.request.contextPath}/phong-view-song-hong-sunrise-ha-noi-hotel"
                                                                                    title="Phòng view Sông Hồng Sunrise Hà Nội Hotel">Phòng
                                                                                view Sông Hồng Sunrise Hà Nội Hotel</a>
                                                                            </h3>

                                                                            <div class="product-summary margin-top-10">

                                                                                Tọa lạc tại thành phố Hà Nội, cách Nhà
                                                                                hát múa rối nước Thăng Long 300 m,
                                                                                Sunrise Hà Nội Hotel cung cấp chỗ nghỉ
                                                                                với nhà hàng, chỗ đỗ xe riêng miễn phí,
                                                                                quán...

                                                                            </div>
                                                                            <a class="btn btn-outline"
                                                                               href="${pageContext.request.contextPath}/phong-view-song-hong-sunrise-ha-noi-hotel">Xem
                                                                                chi tiết</a>

                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="owl-nav disabled">
                                                        <div class="owl-prev"><i class="fa fa-angle-left"></i></div>
                                                        <div class="owl-next"><i class="fa fa-angle-right"></i></div>
                                                    </div>
                                                    <div class="owl-dots">
                                                        <div class="owl-dot active"><span></span></div>
                                                        <div class="owl-dot"><span></span></div>
                                                        <div class="owl-dot"><span></span></div>
                                                    </div>
                                                </div>


                                            </div>
                                        </div>
                                    </div><!-- /.products -->
                                </div>


                                <div class="tab-content tab-4">
                                    <div class="products products-view-grid ">
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="head-content">
                                                    <h3>Dịch vụ xe</h3>
                                                    <div class="info">
                                                        <p>Đón sân bay; Tiễn
                                                            sân bay; Combo cả đón và tiễn sân bay: xe 4 chỗ, xe 7 chỗ và
                                                            xe 16 chỗ</p>
                                                    </div>
                                                </div>
                                                <div class="count">
                                                    <div class="row a-center">
                                                        <div class="col-xs-6">
                                                            <div class="count-item">

                                                                <p>10</p>
                                                                <h5>Xe đưa đón</h5>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-6">
                                                            <div class="count-item">

                                                                <p>5</p>
                                                                <h5>Xe 7 chỗ</h5>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-6">
                                                            <div class="count-item">

                                                                <p>8</p>
                                                                <h5>Xe 4 chỗ</h5>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-6">
                                                            <div class="count-item">

                                                                <p></p>
                                                                <h5></h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="viewmore a-center">

                                                    <a class="btn btn-outline"
                                                       href="${pageContext.request.contextPath}/san-pham-noi-bat">Xem
                                                        thêm</a>
                                                </div>
                                            </div>
                                            <div class="col-md-7">

                                                <div class="owl-carousel owl-loaded owl-drag" data-lg-items="1"
                                                     data-md-items="1" data-sm-items="1" data-xs-items="1"
                                                     data-margin="30" data-dot="true">


                                                    <div class="owl-stage-outer">
                                                        <div class="owl-stage"
                                                             style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 2049px;">
                                                            <div class="owl-item active"
                                                                 style="width: 653px; margin-right: 30px;">
                                                                <div class="item">


                                                                    <div class="product-box">
                                                                        <div class="product-thumbnail flexbox-grid">
                                                                            <a href="${pageContext.request.contextPath}/uu-dai-dac-biet"
                                                                               title="Ưu đãi đặc biệt">
                                                                                <img src="//bizweb.dktcdn.net/thumb/1024x1024/100/467/686/products/5e75d76d3fcd4cc881f69202475c17ca.png?v=1666759455543"
                                                                                     data-lazyload="//bizweb.dktcdn.net/thumb/1024x1024/100/467/686/products/5e75d76d3fcd4cc881f69202475c17ca.png?v=1666759455543"
                                                                                     alt="Ưu đãi đặc biệt">
                                                                            </a>
                                                                            <div class="price hidden-lg hidden-sm hidden-md">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>

                                                                        </div>
                                                                        <div class="product-info a-left">
                                                                            <div class="review">


                                                                                <span class="rv">Xuất sắc <i>9.0</i></span>
                                                                                <span class="count">( 15 đánh giá )</span>


                                                                            </div>
                                                                            <div class="price hidden-xs">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                            <h3 class="product-name"><a
                                                                                    href="${pageContext.request.contextPath}/uu-dai-dac-biet"
                                                                                    title="Ưu đãi đặc biệt">Ưu đãi đặc
                                                                                biệt</a></h3>

                                                                            <div class="product-summary margin-top-10">

                                                                                Giảm giá 20% cho khách lưu trú trên bill
                                                                                tại nhà hàng Sunrise BBQ

                                                                            </div>
                                                                            <a class="btn btn-outline"
                                                                               href="${pageContext.request.contextPath}/uu-dai-dac-biet">Xem
                                                                                chi tiết</a>

                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="owl-item"
                                                                 style="width: 653px; margin-right: 30px;">
                                                                <div class="item">


                                                                    <div class="product-box">
                                                                        <div class="product-thumbnail flexbox-grid">
                                                                            <a href="${pageContext.request.contextPath}/phong-co-cua-so-sunrise-ha-noi-hotel"
                                                                               title="Phòng có cửa sổ Sunrise Hà Nội Hotel">
                                                                                <img src="//bizweb.dktcdn.net/thumb/1024x1024/100/467/686/products/98241bacd623117d4832.jpg?v=1666335830590"
                                                                                     data-lazyload="//bizweb.dktcdn.net/thumb/1024x1024/100/467/686/products/98241bacd623117d4832.jpg?v=1666335830590"
                                                                                     alt="Phòng có cửa sổ Sunrise Hà Nội Hotel">
                                                                            </a>
                                                                            <div class="price hidden-lg hidden-sm hidden-md">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>

                                                                        </div>
                                                                        <div class="product-info a-left">
                                                                            <div class="review">


                                                                                <span class="rv">Xuất sắc <i>9.0</i></span>
                                                                                <span class="count">( 15 đánh giá )</span>


                                                                            </div>
                                                                            <div class="price hidden-xs">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                            <h3 class="product-name"><a
                                                                                    href="${pageContext.request.contextPath}/phong-co-cua-so-sunrise-ha-noi-hotel"
                                                                                    title="Phòng có cửa sổ Sunrise Hà Nội Hotel">Phòng
                                                                                có cửa sổ Sunrise Hà Nội Hotel</a></h3>

                                                                            <div class="product-summary margin-top-10">

                                                                                &nbsp;
                                                                                Tọa lạc tại thành phố Hà Nội, cách Nhà
                                                                                hát múa rối nước Thăng Long 300 m,
                                                                                Sunrise Hà Nội Hotel cung cấp chỗ nghỉ
                                                                                với nhà hàng, chỗ đỗ xe riêng miễn phí,
                                                                                quán...

                                                                            </div>
                                                                            <a class="btn btn-outline"
                                                                               href="${pageContext.request.contextPath}/phong-co-cua-so-sunrise-ha-noi-hotel">Xem
                                                                                chi tiết</a>

                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="owl-item"
                                                                 style="width: 653px; margin-right: 30px;">
                                                                <div class="item">


                                                                    <div class="product-box">
                                                                        <div class="product-thumbnail flexbox-grid">
                                                                            <a href="${pageContext.request.contextPath}/phong-view-song-hong-sunrise-ha-noi-hotel"
                                                                               title="Phòng view Sông Hồng Sunrise Hà Nội Hotel">
                                                                                <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/rolling.svg?1667450085862"
                                                                                     data-lazyload="//bizweb.dktcdn.net/thumb/1024x1024/100/467/686/products/119135009-ad9dc86d-aaab-430f-8cdb-23c0f98bffd6.jpg?v=1666335546027"
                                                                                     alt="Phòng view Sông Hồng Sunrise Hà Nội Hotel">
                                                                            </a>
                                                                            <div class="price hidden-lg hidden-sm hidden-md">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>

                                                                        </div>
                                                                        <div class="product-info a-left">
                                                                            <div class="review">


                                                                                <span class="rv">Xuất sắc <i>9.9</i></span>
                                                                                <span class="count">( 150 đánh giá )</span>


                                                                            </div>
                                                                            <div class="price hidden-xs">

                                                                                <div class="price-box clearfix">
                                                                                    <div class="special-price clearfix">
                                                                                        <span class="price product-price">Liên hệ</span>
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                            <h3 class="product-name"><a
                                                                                    href="${pageContext.request.contextPath}/phong-view-song-hong-sunrise-ha-noi-hotel"
                                                                                    title="Phòng view Sông Hồng Sunrise Hà Nội Hotel">Phòng
                                                                                view Sông Hồng Sunrise Hà Nội Hotel</a>
                                                                            </h3>

                                                                            <div class="product-summary margin-top-10">

                                                                                Tọa lạc tại thành phố Hà Nội, cách Nhà
                                                                                hát múa rối nước Thăng Long 300 m,
                                                                                Sunrise Hà Nội Hotel cung cấp chỗ nghỉ
                                                                                với nhà hàng, chỗ đỗ xe riêng miễn phí,
                                                                                quán...

                                                                            </div>
                                                                            <a class="btn btn-outline"
                                                                               href="${pageContext.request.contextPath}/phong-view-song-hong-sunrise-ha-noi-hotel">Xem
                                                                                chi tiết</a>

                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="owl-nav disabled">
                                                        <div class="owl-prev"><i class="fa fa-angle-left"></i></div>
                                                        <div class="owl-next"><i class="fa fa-angle-right"></i></div>
                                                    </div>
                                                    <div class="owl-dots">
                                                        <div class="owl-dot active"><span></span></div>
                                                        <div class="owl-dot"><span></span></div>
                                                        <div class="owl-dot"><span></span></div>
                                                    </div>
                                                </div>


                                            </div>
                                        </div>
                                    </div><!-- /.products -->
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="awe-section-5">
    <div class="section section-deal products-view-grid">
        <div class="container">


            <div class="section-title a-center">
                <h2><a href="${pageContext.request.contextPath}/san-pham-noi-bat">Ưu đãi đặc biệt</a></h2>
                <p></p>
            </div>
            <div class="section-content">

                <div class="products products-view-grid  owl-carousel owl-theme owl-loaded owl-drag" data-lg-items="3"
                     data-md-items="3" data-sm-items="3" data-xs-items="2" data-margin="30" data-nav="true">


                    <div class="owl-stage-outer">
                        <div class="owl-stage"
                             style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1560px;">
                            <div class="owl-item active" style="width: 360px; margin-right: 30px;">
                                <div class="product-box">
                                    <div class="product-thumbnail flexbox-grid">
                                        <a href="${pageContext.request.contextPath}/uu-dai-dac-biet"
                                           title="Ưu đãi đặc biệt">
                                            <img src="//bizweb.dktcdn.net/thumb/large/100/467/686/products/5e75d76d3fcd4cc881f69202475c17ca.png?v=1666759455543"
                                                 data-lazyload="//bizweb.dktcdn.net/thumb/large/100/467/686/products/5e75d76d3fcd4cc881f69202475c17ca.png?v=1666759455543"
                                                 alt="Ưu đãi đặc biệt">
                                        </a>


                                        <div class="product-action hidden-md hidden-sm hidden-xs clearfix">
                                            <form action="/cart/add" method="post"
                                                  class="variants form-nut-grid margin-bottom-0"
                                                  data-id="product-actions-28225551" enctype="multipart/form-data">
                                                <div>

                                                    <a href="${pageContext.request.contextPath}/uu-dai-dac-biet"
                                                       data-handle="uu-dai-dac-biet"
                                                       class="btn-gray btn_view btn right-to quick-view">
                                                        <i class="fa fa-compress"></i></a>


                                                </div>
                                            </form>
                                        </div>


                                        <div class="price">

                                            <div class="price-box clearfix">
                                                <div class="special-price clearfix">
                                                    <span class="price product-price">Liên hệ</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="product-info a-left">
                                        <div class="review">


                                            <span class="rv">Xuất sắc <i>9.0</i></span>
                                            <span class="count">( 15 đánh giá )</span>


                                        </div>
                                        <h3 class="product-name"><a
                                                href="${pageContext.request.contextPath}/uu-dai-dac-biet"
                                                title="Ưu đãi đặc biệt">Ưu
                                            đãi đặc biệt</a></h3>

                                        <div class="product-summary margin-top-10">

                                            Giảm giá 20% cho khách lưu trú trên bill tại nhà hàng Sunrise BBQ

                                        </div>

                                    </div>

                                </div>
                            </div>
                            <div class="owl-item active" style="width: 360px; margin-right: 30px;">
                                <div class="product-box">
                                    <div class="product-thumbnail flexbox-grid">
                                        <a href="${pageContext.request.contextPath}/phong-co-cua-so-sunrise-ha-noi-hotel"
                                           title="Phòng có cửa sổ Sunrise Hà Nội Hotel">
                                            <img src="//bizweb.dktcdn.net/thumb/large/100/467/686/products/98241bacd623117d4832.jpg?v=1666335830590"
                                                 data-lazyload="//bizweb.dktcdn.net/thumb/large/100/467/686/products/98241bacd623117d4832.jpg?v=1666335830590"
                                                 alt="Phòng có cửa sổ Sunrise Hà Nội Hotel">
                                        </a>


                                        <div class="product-action hidden-md hidden-sm hidden-xs clearfix">
                                            <form action="/cart/add" method="post"
                                                  class="variants form-nut-grid margin-bottom-0"
                                                  data-id="product-actions-28163639" enctype="multipart/form-data">
                                                <div>

                                                    <a href="${pageContext.request.contextPath}/phong-co-cua-so-sunrise-ha-noi-hotel"
                                                       data-handle="phong-co-cua-so-sunrise-ha-noi-hotel"
                                                       class="btn-gray btn_view btn right-to quick-view">
                                                        <i class="fa fa-compress"></i></a>


                                                </div>
                                            </form>
                                        </div>


                                        <div class="price">

                                            <div class="price-box clearfix">
                                                <div class="special-price clearfix">
                                                    <span class="price product-price">Liên hệ</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="product-info a-left">
                                        <div class="review">


                                            <span class="rv">Xuất sắc <i>9.0</i></span>
                                            <span class="count">( 15 đánh giá )</span>


                                        </div>
                                        <h3 class="product-name"><a
                                                href="${pageContext.request.contextPath}/phong-co-cua-so-sunrise-ha-noi-hotel"
                                                title="Phòng có cửa sổ Sunrise Hà Nội Hotel">Phòng
                                            có cửa sổ Sunrise Hà Nội Hotel</a></h3>

                                        <div class="product-summary margin-top-10">

                                            &nbsp;
                                            Tọa lạc tại thành phố Hà Nội, cách Nhà hát múa rối nước Thăng Long 300 m,
                                            Sunrise Hà Nội Hotel cung cấp chỗ nghỉ với nhà hàng, chỗ đỗ...

                                        </div>

                                    </div>

                                </div>
                            </div>
                            <div class="owl-item active" style="width: 360px; margin-right: 30px;">
                                <div class="product-box">
                                    <div class="product-thumbnail flexbox-grid">
                                        <a href="${pageContext.request.contextPath}/phong-view-song-hong-sunrise-ha-noi-hotel"
                                           title="Phòng view Sông Hồng Sunrise Hà Nội Hotel">
                                            <img src="//bizweb.dktcdn.net/thumb/large/100/467/686/products/119135009-ad9dc86d-aaab-430f-8cdb-23c0f98bffd6.jpg?v=1666335546027"
                                                 data-lazyload="//bizweb.dktcdn.net/thumb/large/100/467/686/products/119135009-ad9dc86d-aaab-430f-8cdb-23c0f98bffd6.jpg?v=1666335546027"
                                                 alt="Phòng view Sông Hồng Sunrise Hà Nội Hotel">
                                        </a>


                                        <div class="product-action hidden-md hidden-sm hidden-xs clearfix">
                                            <form action="/cart/add" method="post"
                                                  class="variants form-nut-grid margin-bottom-0"
                                                  data-id="product-actions-28163580" enctype="multipart/form-data">
                                                <div>

                                                    <a href="${pageContext.request.contextPath}/phong-view-song-hong-sunrise-ha-noi-hotel"
                                                       data-handle="phong-view-song-hong-sunrise-ha-noi-hotel"
                                                       class="btn-gray btn_view btn right-to quick-view">
                                                        <i class="fa fa-compress"></i></a>


                                                </div>
                                            </form>
                                        </div>


                                        <div class="price">

                                            <div class="price-box clearfix">
                                                <div class="special-price clearfix">
                                                    <span class="price product-price">Liên hệ</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="product-info a-left">
                                        <div class="review">


                                            <span class="rv">Xuất sắc <i>9.9</i></span>
                                            <span class="count">( 150 đánh giá )</span>


                                        </div>
                                        <h3 class="product-name"><a
                                                href="${pageContext.request.contextPath}/phong-view-song-hong-sunrise-ha-noi-hotel"
                                                title="Phòng view Sông Hồng Sunrise Hà Nội Hotel">Phòng
                                            view Sông Hồng Sunrise Hà Nội Hotel</a></h3>

                                        <div class="product-summary margin-top-10">

                                            Tọa lạc tại thành phố Hà Nội, cách Nhà hát múa rối nước Thăng Long 300 m,
                                            Sunrise Hà Nội Hotel cung cấp chỗ nghỉ với nhà hàng, chỗ đỗ...

                                        </div>

                                    </div>

                                </div>
                            </div>
                            <div class="owl-item" style="width: 360px; margin-right: 30px;">
                                <div class="product-box">
                                    <div class="product-thumbnail flexbox-grid">
                                        <a href="${pageContext.request.contextPath}/phong-tieu-chuan-sunrise-ha-noi-hotel"
                                           title="Phòng tiêu chuẩn Sunrise Hà Nội Hotel">
                                            <img src="//bizweb.dktcdn.net/thumb/large/100/467/686/products/111713926.jpg?v=1666335447620"
                                                 data-lazyload="//bizweb.dktcdn.net/thumb/large/100/467/686/products/111713926.jpg?v=1666335447620"
                                                 alt="Phòng tiêu chuẩn Sunrise Hà Nội Hotel">
                                        </a>


                                        <div class="product-action hidden-md hidden-sm hidden-xs clearfix">
                                            <form action="/cart/add" method="post"
                                                  class="variants form-nut-grid margin-bottom-0"
                                                  data-id="product-actions-28163553" enctype="multipart/form-data">
                                                <div>

                                                    <a href="${pageContext.request.contextPath}/phong-tieu-chuan-sunrise-ha-noi-hotel"
                                                       data-handle="phong-tieu-chuan-sunrise-ha-noi-hotel"
                                                       class="btn-gray btn_view btn right-to quick-view">
                                                        <i class="fa fa-compress"></i></a>


                                                </div>
                                            </form>
                                        </div>


                                        <div class="price">

                                            <div class="price-box clearfix">
                                                <div class="special-price clearfix">
                                                    <span class="price product-price">Liên hệ</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="product-info a-left">
                                        <div class="review">


                                            <span class="rv">Xuất sắc <i>9.9</i></span>
                                            <span class="count">( 180 đánh giá )</span>


                                        </div>
                                        <h3 class="product-name"><a
                                                href="${pageContext.request.contextPath}/phong-tieu-chuan-sunrise-ha-noi-hotel"
                                                title="Phòng tiêu chuẩn Sunrise Hà Nội Hotel">Phòng
                                            tiêu chuẩn Sunrise Hà Nội Hotel</a></h3>

                                        <div class="product-summary margin-top-10">

                                            Tọa lạc tại thành phố Hà Nội, cách Nhà hát múa rối nước Thăng Long 300 m,
                                            Sunrise Hà Nội Hotel cung cấp chỗ nghỉ với nhà hàng, chỗ đỗ...

                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-nav">
                        <div class="owl-prev disabled"><i class="fa fa-angle-left"></i></div>
                        <div class="owl-next"><i class="fa fa-angle-right"></i></div>
                    </div>
                    <div class="owl-dots disabled"></div>
                </div><!-- /.products -->
            </div>
        </div>
    </div>
</section>


<section class="awe-section-6">
    <section class="section section_tintuc_sukien">
        <div class="container">
            <div class="section-title margin-bottom-30 a-center">
                <h2 class="title-head">
                    <a href="javascript:;" title="Tin tức &amp; sự kiện">Tin tức &amp; sự kiện</a>
                </h2>

            </div>
            <div class="list-blogs-link">
                <div class="row">

                    <div class="col-lg-4 col-sm-6 col-md-4">
                        <h2>Hình ảnh</h2>
                        <div class="blog-list blog-image-list">
                            <div class="row row-14Gutter">


                                <div class="col-xs-4 margin-bottom-15">
                                    <a href="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/al1.jpg?1667450085862"
                                       data-fancybox="images2">

                                        <img src="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al1.jpg?1667450085862"
                                             data-lazyload="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al1.jpg?1667450085862"
                                             alt="Sunrise Hanoi Hotel">
                                    </a>
                                </div>


                                <div class="col-xs-4 margin-bottom-15">
                                    <a href="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/al2.jpg?1667450085862"
                                       data-fancybox="images2">

                                        <img src="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al2.jpg?1667450085862"
                                             data-lazyload="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al2.jpg?1667450085862"
                                             alt="Sunrise Hanoi Hotel">
                                    </a>
                                </div>


                                <div class="col-xs-4 margin-bottom-15">
                                    <a href="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/al3.jpg?1667450085862"
                                       data-fancybox="images2">

                                        <img src="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al3.jpg?1667450085862"
                                             data-lazyload="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al3.jpg?1667450085862"
                                             alt="Sunrise Hanoi Hotel">
                                    </a>
                                </div>


                                <div class="col-xs-4 margin-bottom-15">
                                    <a href="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/al4.jpg?1667450085862"
                                       data-fancybox="images2">

                                        <img src="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al4.jpg?1667450085862"
                                             data-lazyload="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al4.jpg?1667450085862"
                                             alt="Sunrise Hanoi Hotel">
                                    </a>
                                </div>


                                <div class="col-xs-4 margin-bottom-15">
                                    <a href="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/al5.jpg?1667450085862"
                                       data-fancybox="images2">

                                        <img src="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al5.jpg?1667450085862"
                                             data-lazyload="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al5.jpg?1667450085862"
                                             alt="Sunrise Hanoi Hotel">
                                    </a>
                                </div>


                                <div class="col-xs-4 margin-bottom-15">
                                    <a href="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/al6.jpg?1667450085862"
                                       data-fancybox="images2">

                                        <img src="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al6.jpg?1667450085862"
                                             data-lazyload="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al6.jpg?1667450085862"
                                             alt="Sunrise Hanoi Hotel">
                                    </a>
                                </div>


                                <div class="col-xs-4 margin-bottom-15">
                                    <a href="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/al7.jpg?1667450085862"
                                       data-fancybox="images2">

                                        <img src="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al7.jpg?1667450085862"
                                             data-lazyload="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al7.jpg?1667450085862"
                                             alt="Sunrise Hanoi Hotel">
                                    </a>
                                </div>


                                <div class="col-xs-4 margin-bottom-15">
                                    <a href="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/al8.jpg?1667450085862"
                                       data-fancybox="images2">

                                        <img src="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al8.jpg?1667450085862"
                                             data-lazyload="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al8.jpg?1667450085862"
                                             alt="Sunrise Hanoi Hotel">
                                    </a>
                                </div>


                                <div class="col-xs-4 margin-bottom-15">
                                    <a href="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/al9.jpg?1667450085862"
                                       data-fancybox="images2">

                                        <img src="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al9.jpg?1667450085862"
                                             data-lazyload="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al9.jpg?1667450085862"
                                             alt="Sunrise Hanoi Hotel">
                                    </a>
                                </div>


                                <div class="col-xs-4 margin-bottom-15">
                                    <a href="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/al10.jpg?1667450085862"
                                       data-fancybox="images2">

                                        <img src="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al10.jpg?1667450085862"
                                             data-lazyload="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al10.jpg?1667450085862"
                                             alt="Sunrise Hanoi Hotel">
                                    </a>
                                </div>


                                <div class="col-xs-4 margin-bottom-15">
                                    <a href="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/al11.jpg?1667450085862"
                                       data-fancybox="images2">

                                        <img src="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al11.jpg?1667450085862"
                                             data-lazyload="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al11.jpg?1667450085862"
                                             alt="Sunrise Hanoi Hotel">
                                    </a>
                                </div>


                                <div class="col-xs-4 margin-bottom-15">
                                    <a href="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/al12.jpg?1667450085862"
                                       data-fancybox="images2">

                                        <img src="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al12.jpg?1667450085862"
                                             data-lazyload="//bizweb.dktcdn.net/thumb/medium/100/467/686/themes/881628/assets/al12.jpg?1667450085862"
                                             alt="Sunrise Hanoi Hotel">
                                    </a>
                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="col-lg-4 col-sm-6 col-md-4">
                        <h2>Cẩm nang du lịch</h2>
                        <div class="blog-list blog-image-list">
                            <div class="owl-carousel owl-theme owl-loaded owl-drag" data-lg-items="1" data-md-items="1"
                                 data-sm-items="1" data-xs-items="1" data-margin="10" data-nav="true">


                                <div class="owl-stage-outer">
                                    <div class="owl-stage"
                                         style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 370px;">
                                        <div class="owl-item active" style="width: 360px; margin-right: 10px;">
                                            <div class="item">
                                                <article class="blog-item">
                                                    <div class="">
                                                        <div class="blog-item-thumbnail margin-bottom-10">
                                                            <a href="${pageContext.request.contextPath}/du-lich-ha-long-3-ngay-2-dem-goi-y-lich-trinh-dia-diem-an-choi"
                                                               title="Du lịch Hạ Long 3 ngày 2 đêm: Gợi ý lịch trình, địa điểm ăn chơi">

                                                                <img src="//bizweb.dktcdn.net/thumb/large/100/467/686/articles/du-lich-ha-long-3-ngay-2-dem-9-1.png?v=1666759776560"
                                                                     data-lazyload="//bizweb.dktcdn.net/thumb/large/100/467/686/articles/du-lich-ha-long-3-ngay-2-dem-9-1.png?v=1666759776560"
                                                                     alt="Du lịch Hạ Long 3 ngày 2 đêm: Gợi ý lịch trình, địa điểm ăn chơi">

                                                            </a>
                                                        </div>
                                                        <div class="blog-item-info">
                                                            <div class="post-by">
                                                                Viết bởi: <span>VŨ HỮU ANH</span>
                                                            </div>
                                                            <div class="post-time">
                                                                26/10/2022
                                                            </div>
                                                            <h3 class="blog-item-name"><a
                                                                    href="${pageContext.request.contextPath}/du-lich-ha-long-3-ngay-2-dem-goi-y-lich-trinh-dia-diem-an-choi"
                                                                    title="Du lịch Hạ Long 3 ngày 2 đêm: Gợi ý lịch trình, địa điểm ăn chơi">Du
                                                                lịch Hạ Long 3 ngày 2 đêm: Gợi ý lịch trình, địa điểm ăn
                                                                chơi</a></h3>

                                                            <p class="blog-item-summary">Du lịch Hạ Long 3 ngày 2 đêm&nbsp;là
                                                                lựa chọn của rất nhiều du khách để khám phá thành phố
                                                                biển tuyệt đẹp tại Việt Nam. Với thời gian này, bạn có
                                                                thể lựa chọn rất nhiều điểm đến thú vị và thưởng thức
                                                                các đặc sản trứ danh. Lưu ngay lịch trình chi tiết và
                                                                một số kinh nghiệm để có chuyến đi an...</p>
                                                            <a class="btn btn-white hidden"
                                                               href="${pageContext.request.contextPath}/du-lich-ha-long-3-ngay-2-dem-goi-y-lich-trinh-dia-diem-an-choi">Đọc
                                                                thêm</a>
                                                        </div>
                                                    </div>
                                                </article>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="owl-nav disabled">
                                    <div class="owl-prev disabled"><i class="fa fa-angle-left"></i></div>
                                    <div class="owl-next disabled"><i class="fa fa-angle-right"></i></div>
                                </div>
                                <div class="owl-dots disabled"></div>
                            </div>
                        </div>

                    </div>

                    <div class="col-lg-4 col-sm-12 col-md-4">
                        <h2>Tin tức</h2>
                        <div class="blog-list blog-image-list">
                            <div class="list">

                                <article class="blog-item small-item list-small-item">
                                    <div class="relative">
                                        <div class="blog-item-thumbnail">
                                            <a href="${pageContext.request.contextPath}/kinh-nghiem-du-lich-hoa-lu-tam-coc-ninh-binh-2022"
                                               title="Kinh nghiệm Du lịch Hoa Lư - Tam Cốc (Ninh Bình) 2022">

                                                <img src="//bizweb.dktcdn.net/thumb/small/100/467/686/articles/tam-coc-ninh-binh.png?v=1666760293210"
                                                     data-lazyload="//bizweb.dktcdn.net/thumb/small/100/467/686/articles/tam-coc-ninh-binh.png?v=1666760293210"
                                                     alt="Kinh nghiệm Du lịch Hoa Lư - Tam Cốc (Ninh Bình) 2022">

                                            </a>
                                        </div>
                                        <div class="blog-item-info">
                                            <div class="post-by">
                                                Viết bởi: <span>VŨ HỮU ANH</span>
                                            </div>
                                            <div class="post-time">
                                                26/10/2022
                                            </div>
                                            <h3 class="blog-item-name"><a
                                                    href="${pageContext.request.contextPath}/kinh-nghiem-du-lich-hoa-lu-tam-coc-ninh-binh-2022"
                                                    title="Kinh nghiệm Du lịch Hoa Lư - Tam Cốc (Ninh Bình) 2022">Kinh
                                                nghiệm Du lịch Hoa Lư - Tam Cốc (Ninh Bình) 2022</a></h3>

                                            <p class="blog-item-summary">Du lịch Hoa Lư - Tam Cốc&nbsp;vẫn luôn
                                                là...</p>


                                        </div>
                                    </div>
                                </article>

                                <article class="blog-item small-item list-small-item">
                                    <div class="relative">
                                        <div class="blog-item-thumbnail">
                                            <a href="${pageContext.request.contextPath}/tour-du-lich-mien-bac-ha-noi-bai-dinh-trang-an-ha-long-yen-tu-4n3d"
                                               title="Tour du lịch Miền Bắc: Hà Nội - Bái Đính - Tràng An - Hạ Long - Yên Tử 4N3Đ">

                                                <img src="//bizweb.dktcdn.net/thumb/small/100/467/686/articles/tour-trang-an-bai-dinh-1-ngay-1.png?v=1666759846897"
                                                     data-lazyload="//bizweb.dktcdn.net/thumb/small/100/467/686/articles/tour-trang-an-bai-dinh-1-ngay-1.png?v=1666759846897"
                                                     alt="Tour du lịch Miền Bắc: Hà Nội - Bái Đính - Tràng An - Hạ Long - Yên Tử 4N3Đ">

                                            </a>
                                        </div>
                                        <div class="blog-item-info">
                                            <div class="post-by">
                                                Viết bởi: <span>VŨ HỮU ANH</span>
                                            </div>
                                            <div class="post-time">
                                                26/10/2022
                                            </div>
                                            <h3 class="blog-item-name"><a
                                                    href="${pageContext.request.contextPath}/tour-du-lich-mien-bac-ha-noi-bai-dinh-trang-an-ha-long-yen-tu-4n3d"
                                                    title="Tour du lịch Miền Bắc: Hà Nội - Bái Đính - Tràng An - Hạ Long - Yên Tử 4N3Đ">Tour
                                                du lịch Miền Bắc: Hà Nội - Bái Đính - Tràng An - Hạ Long - Yên Tử
                                                4N3Đ</a></h3>

                                            <p class="blog-item-summary">
                                                Du lịch Bái Đính - Tràng An&nbsp;luôn là điểm...</p>


                                        </div>
                                    </div>
                                </article>

                                <article class="blog-item small-item list-small-item">
                                    <div class="relative">
                                        <div class="blog-item-thumbnail">
                                            <a href="${pageContext.request.contextPath}/doc-dao-khach-san-lam-hoan-toan-tu-bang-o-thuy-dien"
                                               title="Độc đáo khách sạn làm hoàn toàn từ băng ở Thụy Điển">

                                                <img src="//bizweb.dktcdn.net/thumb/small/100/467/686/articles/790a510e585236c0d34e3bfd2833e02b.png?v=1666336428660"
                                                     data-lazyload="//bizweb.dktcdn.net/thumb/small/100/467/686/articles/790a510e585236c0d34e3bfd2833e02b.png?v=1666336428660"
                                                     alt="Độc đáo khách sạn làm hoàn toàn từ băng ở Thụy Điển">

                                            </a>
                                        </div>
                                        <div class="blog-item-info">
                                            <div class="post-by">
                                                Viết bởi: <span>VŨ HỮU ANH</span>
                                            </div>
                                            <div class="post-time">
                                                21/10/2022
                                            </div>
                                            <h3 class="blog-item-name"><a
                                                    href="${pageContext.request.contextPath}/doc-dao-khach-san-lam-hoan-toan-tu-bang-o-thuy-dien"
                                                    title="Độc đáo khách sạn làm hoàn toàn từ băng ở Thụy Điển">Độc đáo
                                                khách sạn làm hoàn toàn từ băng ở Thụy Điển</a></h3>

                                            <p class="blog-item-summary">Khách sạn có 2 khu vực. Icehotel 365 là...</p>


                                        </div>
                                    </div>
                                </article>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
</section>


<jsp:include page="component/footer.jsp"/>
<jsp:include page="component/modal.jsp"/>

</body>
</html>