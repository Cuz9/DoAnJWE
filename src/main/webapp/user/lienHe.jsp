<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/22/2024
  Time: 10:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

                    <li><strong><span>Liên hệ</span></strong></li>

                </ul>
            </div>
        </div>
    </div>
</section>
<div class="container container-fix-hd contact margin-bottom-30">
    <div class="box-heading  relative  margin-bottom-20">
        <h1 class="title-head">Liên hệ</h1>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <div class="row">
                <div class="col-md-6">
                    <div class="box-maps margin-bottom-30">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.5032454256657!2d105.86421521531352!3d21.012540693706683!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abfa3abc5ffb%3A0xa4fd9c37b3a053dc!2zNzE2IMSQLiBC4bqhY2ggxJDhurFuZywgQuG6oWNoIMSQ4bqxbmcsIEhhaSBCw6AgVHLGsG5nLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1667449679750!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
                <div class="col-md-6">
                    <div id="login" class="margin-top-100">
                        <h2 class="title-head a-center" style="font-weight: 400; text-transform: uppercase; font-size: 22px; margin-bottom: 15px;"><span> Nhập tin nhắn</span></h2>
                        <form method="post" action="/postcontact" id="contact" accept-charset="UTF-8"><input name="FormType" type="hidden" value="contact"><input name="utf8" type="hidden" value="true"><input type="hidden" id="Token-074294662a4b405aa3aa04c1df84f807" name="Token" value="03AFcWeA5PG34KsENMGiO1ttxUoFqfQD7eGTM5U11X_jbhBaQKKp_mA5rMGz5X9Ga3xccNu4QLYedJ9Dla0Vl71qnziXfms-Gwi9oOwU3-Xnq0w-9yObnLSvXl62vs2opgh9fx5kggjNkXPKOLDoyxHaxg5w3mUbIVE-E35f0yLzX9P9E7t_kTI-xrrrGIF9gG8m7t8wbF_T75MaKslBJKeu7UL5_P0w4eorisXvJ3UY1Gaq9L1_9M7AQa8c-3nREx8lmVsZB2zc3zmLTXyO4deKjFBzniIMnexnMc6rtg_MwWPeDygXXjJumtyEctjkXaJ7Esz_-XWyfN3j1XXkLK3Tb68oP1AZPrmVCcdc9sLvvuTl6syyYib9_fY23m1HhU2qh8_8jOMy15VIp6ZMUxZfWA0GHeP5sALkYdbLNprRZRyEDy8p1JkGzSEv5v_VvIRmcPQsYiiioVihkW6zPoJtMRTpSibdzPJdR4Y91w7wMlVwuPPvkmzs_9FTsHUSjGwDmAY8l5TEg_iKXEB0OiJHhW5fxM-f3T667-PBdyEhgI1YT62TsDI4TN5M3-DXOirOI1ga7JakZO3Zn3CDmzKaM2tKYQsx-ZoKhjGPD9JoIhBJSeDC8yUnY2RKkdksESnEwR57vpNSGFEPOQmJj1Vu_YsLZQ8O4YB9YPieBIC_hg5NzN4GtWhn3YQxIE1ASVOhLudHdOnzOGXxTQ7FanIcJLvZYsLsZ21KCWGIC33Jt9yeAlmZzsPjA"><script src="https://www.google.com/recaptcha/api.js?render=6Ldtu4IUAAAAAMQzG1gCw3wFlx_GytlZyLrXcsuK"></script><script>grecaptcha.ready(function() {grecaptcha.execute("6Ldtu4IUAAAAAMQzG1gCw3wFlx_GytlZyLrXcsuK", {action: "contact"}).then(function(token) {document.getElementById("Token-074294662a4b405aa3aa04c1df84f807").value = token});});</script>


                            <p id="errorFills" style="margin-bottom:10px; color: red;"></p>
                            <div id="emtry_contact" class="form-signup form_contact clearfix a-center">
                                <div class="row row-8Gutter">
                                    <div class="col-md-12">
                                        <fieldset class="form-group">
                                            <input type="text" placeholder="Họ tên*" name="contact[name]" id="name" class="form-control  form-control-lg" required="">
                                        </fieldset>
                                    </div>
                                    <div class="col-md-6">
                                        <fieldset class="form-group">
                                            <input type="email" placeholder="Email*" name="contact[email]" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,63}$" data-validation="email" id="email" class="form-control form-control-lg" required="">
                                        </fieldset>
                                    </div>
                                    <div class="col-md-6">
                                        <fieldset class="form-group">
                                            <input type="number" placeholder="Điện thoại*" name="contact[phone]" class="form-control form-control-lg" required="">
                                        </fieldset>
                                    </div>
                                </div>
                                <fieldset class="form-group">
                                    <textarea name="contact[body]" placeholder="Nhập nội dung*" id="comment" class="form-control form-control-lg" rows="9" required=""></textarea>
                                </fieldset>
                                <div>

                                    <button tyle="summit" class="btn btn-primary" style="padding:0 40px;">Gửi liên hệ</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>


            </div>
        </div>

    </div>

</div>
<jsp:include page="component/footer.jsp"/>
<jsp:include page="component/modal.jsp"/>
</body>
</html>
