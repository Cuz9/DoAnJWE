<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

                    <li><strong><span>Đăng nhập tài khoản</span></strong></li>

                </ul>
            </div>
        </div>
    </div>
</section>

<div class="container margin-bottom-20">

    <div class="row">
        <div class="col-md-6  col-md-offset-3 col-sm-6  col-sm-offset-3">
            <div class="page-login margin-bottom-30">
                <div id="login">
                    <div class="a-center">
                        <h1 class="title-head margin-bottom-20" style="text-transform: uppercase; font-size: 24px;"><span>Đăng nhập tài khoản</span></h1>
                    </div>

                    <form method="post" action="dangnhap" id="customer_login" accept-charset="UTF-8"><input name="FormType" type="hidden" value="customer_login"><input name="utf8" type="hidden" value="true">
                        <div class="form-signup">

                        </div>
                        <div class="form-signup clearfix">
                            <fieldset class="form-group">

                                <input type="text" class="form-control form-control-lg" value="" name="taiKhoan" id="taiKhoan" placeholder="Tài khoản*" required="">
                            </fieldset>
                            <fieldset class="form-group">

                                <input type="password" class="form-control form-control-lg" value="" name="matKhau" id="matKhau" placeholder="Mật khẩu*" required="">
                            </fieldset>
                            <div class="pull-xs-left a-center" style="margin-top: 5px;">
                                <input class="btn btn-style btn-primary " type="submit" value="Đăng nhập">
                            </div>
                            <div class="col-xs-12">
                                <div id="social_login_widget"></div>
                            </div>
                            <div class="col-xs-12 a-center" style="margin-top:15px; padding: 0; ">
                                <p>Bạn chưa có tài khoản đăng ký <a href="dangky" class="btn-link-style btn-register" style="color: #00a680">Tại đây</a></p>
                            </div>
                        </div>
                    </form>
                </div>


            </div>
        </div>
        <div class="col-md-4  col-md-offset-4 col-sm-6  col-sm-offset-3">

            <div id="recover-password" class="form-signup" style="display: none;">
                <p>Điền email của bạn:</p>
                <form method="post" action="/account/recover" id="recover_customer_password" accept-charset="UTF-8"><input name="FormType" type="hidden" value="recover_customer_password"><input name="utf8" type="hidden" value="true">
                    <div class="form-signup aaaaaaaa" style="color: red;">

                    </div>
                    <div class="form-signup clearfix">
                        <fieldset class="form-group">

                            <input type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$" class="form-control form-control-lg" value="" name="email" id="recover-email" placeholder="Email*" required="">
                        </fieldset>
                    </div>
                    <div class="action_bottom a-center">
                        <input class="btn  btn-style btn-primary" style="margin-top: 5px;" type="submit" value="Lấy lại mật khẩu">
                    </div>
                    <div class="col-xs-12 a-center" style="margin-top:15px; padding: 0; ">
                        <p>Quay lại <a href="javascript:;" class="btn-link-style btn-register" style="color: #00a680;" onclick="hideRecoverPasswordForm();">Tại đây</a></p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="component/footer.jsp"/>
<jsp:include page="component/modal.jsp"/>
</body>
</html>


