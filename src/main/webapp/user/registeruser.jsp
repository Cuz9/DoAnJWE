<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi" class="mdl-js">
<jsp:include page="component/head.jsp"/>
<body data-new-gr-c-s-check-loaded="14.1073.0" data-gr-ext-installed="">
<!-- Main content -->
<jsp:include page="component/header.jsp"/>
<section class="bread-crumb">
    <span class="crumb-border"></span>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 a-left">
                <ul class="breadcrumb">
                    <li class="home">
                        <a href="/"><span>Trang chủ</span></a>
                        <span>/</span>
                    </li>

                    <li><strong><span>Đăng ký tài khoản</span></strong></li>

                </ul>
            </div>
        </div>
    </div>
</section>

<div class="container margin-bottom-20">
    <div class="a-center">
        <h1 class="title-head margin-bottom-20" style="text-transform: uppercase; font-size: 24px;"><span>Đăng ký tài khoản</span>
        </h1>
    </div>
    <c:if test="${not empty error}">
        <p style="color: red;">${error}</p>
    </c:if>
    <div class="row">
        <div class="col-md-6  col-md-offset-3 col-sm-6  col-sm-offset-3">
            <div class="page-login">
                <div id="login">


                    <form method="post" action="dangky" id="customer_register" accept-charset="UTF-8">


                        <div class="form-signup clearfix">
                            <div class="row">
                                <div class="col-md-12">
                                    <fieldset class="form-group">

                                        <input type="text" class="form-control form-control-lg"
                                               value="${not empty param.maKhachHang ? param.maKhachHang : ''}"
                                               name="maKhachHang" id="maKhachHang" placeholder="Mã khách hàng*"
                                               required="">
                                    </fieldset>
                                </div>
                                <div class="col-md-12">
                                    <fieldset class="form-group">

                                        <input type="text" class="form-control form-control-lg"
                                               value="${not empty param.taiKhoan ? param.taiKhoan : ''}" name="taiKhoan"
                                               id="taiKhoan" placeholder="Tài khoản*" required="">
                                    </fieldset>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <fieldset class="form-group">

                                        <input type="password" class="form-control form-control-lg" value=""
                                               name="matKhau" id="matKhau" placeholder="Mật khẩu*" required="">
                                    </fieldset>
                                </div>
                                <div class="col-md-12">
                                    <fieldset class="form-group">

                                        <input type="text" class="form-control form-control-lg"
                                               value="${not empty param.tenKhachHang ? param.tenKhachHang : ''}"
                                               name="tenKhachHang" id="tenKhachHang" placeholder="Tên khách hàng*"
                                               required="">
                                    </fieldset>
                                </div>

                                <input type="hidden" name="gioiTinh" value="true" class="form-control form-control-lg">

                                <div class="col-md-12">

                                    <fieldset class="form-group">

                                        <input type="text" class="form-control form-control-lg"
                                               value="${not empty param.cmnd ? param.cmnd : ''}" name="cmnd" id="cmnd"
                                               placeholder="CMND*" required="">
                                    </fieldset>
                                </div>


                                <div class="col-md-12">

                                    <fieldset class="form-group">

                                        <input type="text" class="form-control form-control-lg"
                                               value="${not empty param.diaChi ? param.diaChi : ''}" name="diaChi"
                                               id="diaChi" placeholder="Địa chỉ*" required="">
                                    </fieldset>
                                </div>

                                <div class="col-md-12">

                                    <fieldset class="form-group">

                                        <input type="email" class="form-control form-control-lg"
                                               value="${not empty param.email ? param.email : ''}" name="email"
                                               id="email" placeholder="Địa chỉ*" required="">
                                    </fieldset>
                                </div>

                                <div class="col-md-12">

                                    <fieldset class="form-group">

                                        <input type="text" class="form-control form-control-lg"
                                               value="${not empty param.email ? param.email : ''}" name="soDienThoai"
                                               id="soDienThoai" placeholder="Số điện thoại*" required="">
                                    </fieldset>
                                </div>
                            </div>


                            <div class="col-xs-12 text-xs-left a-center" style="margin-top:10px; padding: 0">
                                <button type="summit" value="Đăng ký" class="btn   btn-primary">Đăng ký ngay</button>

                            </div>
                            <div class="col-xs-12">
                                <div id="social_login_widget"></div>
                            </div>
                            <div class="col-xs-12 a-center" style="margin-top:15px; padding: 0; ">

                                <p>Bạn đã có tài khoản hãy đăng nhập <a href="dangnhap"
                                                                        class="btn-link-style btn-register"
                                                                        style="color: #00a680;">Tại đây</a></p>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="component/footer.jsp"/>
<jsp:include page="component/modal.jsp"/>
</body>
</html>
