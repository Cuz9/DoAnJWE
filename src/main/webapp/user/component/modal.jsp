<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/22/2024
  Time: 10:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Add to cart -->
<div id="popupCartModal" class="modal fade" role="dialog">
</div>
<div id="quickview" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">

            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="image margin-bottom-15">
                            <a class="img-product clearfix" title="" href="#">
                                <img id="product-featured-image-quickview"
                                     class="img-responsive product-featured-image-quickview"
                                     src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/logo.png?1667450085862"
                                     alt="quickview">
                            </a>
                        </div>
                        <div id="thumbnail_quickview">
                            <div class="thumblist"></div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="content">
                            <h3 class="product-name"><a href="">Tên sản phẩm</a></h3>
                            <div class="status clearfix hidden">
                                Trạng thái: <span class="inventory">
								<i class="fa fa-check"></i> Còn hàng
								</span>
                            </div>

                            <div class="product-description rte"></div>
                            <a href="#" class="view-more hidden">Xem chi tiết</a>
                            <div class="sale-flash hidden">
                                <div>
                                </div>
                            </div>
                            <div class="price-box margin-top-20 clearfix">
                                <div class="special-price f-left">
                                    <span class="price product-price">giá</span>
                                </div>

                                <div class="old-price">
									<span class="price product-price-old">
										giá sale
									</span>
                                </div>

                            </div>

                            <div class="clearfix"></div>
                            <div class="info-other hidden">

                            </div>
                            <form action="/cart/add" method="post" enctype="multipart/form-data"
                                  class="margin-top-20 variants form-ajaxtocart">
								<span class="price-product-detail hidden" style="opacity: 0;">
									<span class=""></span>
								</span>
                                <select name="variantId" class="hidden" style="display:none"></select>
                                <label style="margin-bottom: 10px;">Chọn thời gian: </label>
                                <div class="product-tours-details clearfix relative">
                                    <div class="line-item-property__field">

                                        <div class="input-group">

                                            <input class="tourmaster-datepicker hasDatepicker" id="dates"
                                                   name="properties[Ngày]" type="text" placeholder="Chọn Ngày"
                                                   data-date-format="dd MM yyyy" readonly="readonly">
                                            <span class="input-group-addon"><i class="fa fa-calendar"
                                                                               aria-hidden="true"></i></span>
                                        </div>
                                        <div class="input-group">
                                            <select name="properties[Giờ]" id="guiest_id1" class="select-drop"
                                                    sb="24794028"
                                                    style="    background-image: url(//bizweb.dktcdn.net/100/467/686/themes/881628/assets/hour.png?1667450085862); background-color: #fff!important;">
                                                <option selected="" disabled="">Chọn giờ</option>
                                                <option value="8h">8.00 AM</option>
                                                <option value="8h">9.00 AM</option>
                                                <option value="10h">10.00 AM</option>
                                                <option value="11h">11.00 AM</option>
                                                <option value="13h">1.00 PM</option>
                                                <option value="14h">2.00 PM</option>
                                                <option value="15h">3.00 PM</option>
                                                <option value="16h">4.00 PM</option>
                                                <option value="17h">5.00 PM</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                                <div class="quantity_wanted_p">
                                    <label for="quantity-detail" class="quantity-selector hidden">Số lượng</label>
                                    <div class="custom custom-btn-number">
                                        <span class="qtyminus" data-field="quantity"><i class="fa fa-minus-square"></i></span>
                                        <input type="text" data-field="quantity"
                                               onchange="if(this.value == 0)this.value=1;"
                                               onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode) )) return false;"
                                               id="quantity-detail" name="quantity" value="1"
                                               class="quantity-selector text-center">
                                        <span class="qtyplus" data-field="quantity"><i
                                                class="fa fa-plus-square"></i></span>
                                    </div>
                                    <button type="submit" name="add"
                                            class="btn btn-full  btn-primary add_to_cart_detail ajax_addtocart">
                                        <span>Đặt phòng ngay</span>
                                    </button>
                                </div>
                                <div class="total-price" style="display:none">0₫</div>

                            </form>

                        </div>
                    </div>
                </div>
            </div>

            <button type="button" class="btn btn-close btn-default" data-dismiss="modal"><i class="fa fa-close"></i>
            </button>

        </div>

    </div>
</div>
<div class="ajax-load">
	<span class="loading-icon">
		<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
             width="24px" height="30px" viewBox="0 0 24 30" style="enable-background:new 0 0 50 50;"
             xml:space="preserve">
			<rect x="0" y="10" width="4" height="10" fill="#333" opacity="0.2">
				<animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0s" dur="0.6s"
                         repeatCount="indefinite"></animate>
				<animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0s" dur="0.6s"
                         repeatCount="indefinite"></animate>
				<animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0s" dur="0.6s"
                         repeatCount="indefinite"></animate>
			</rect>
			<rect x="8" y="10" width="4" height="10" fill="#333" opacity="0.2">
				<animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.15s" dur="0.6s"
                         repeatCount="indefinite"></animate>
				<animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.15s" dur="0.6s"
                         repeatCount="indefinite"></animate>
				<animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.15s" dur="0.6s"
                         repeatCount="indefinite"></animate>
			</rect>
			<rect x="16" y="10" width="4" height="10" fill="#333" opacity="0.2">
				<animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.3s" dur="0.6s"
                         repeatCount="indefinite"></animate>
				<animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.3s" dur="0.6s"
                         repeatCount="indefinite"></animate>
				<animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.3s" dur="0.6s"
                         repeatCount="indefinite"></animate>
			</rect>
		</svg>
	</span>
</div>

<div class="loading awe-popup">
    <div class="overlay"></div>
    <div class="loader" title="2">
        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
             width="24px" height="30px" viewBox="0 0 24 30" style="enable-background:new 0 0 50 50;"
             xml:space="preserve">
			<rect x="0" y="10" width="4" height="10" fill="#333" opacity="0.2">
                <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0s" dur="0.6s"
                         repeatCount="indefinite"></animate>
                <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0s" dur="0.6s"
                         repeatCount="indefinite"></animate>
                <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0s" dur="0.6s"
                         repeatCount="indefinite"></animate>
            </rect>
            <rect x="8" y="10" width="4" height="10" fill="#333" opacity="0.2">
                <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.15s" dur="0.6s"
                         repeatCount="indefinite"></animate>
                <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.15s" dur="0.6s"
                         repeatCount="indefinite"></animate>
                <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.15s" dur="0.6s"
                         repeatCount="indefinite"></animate>
            </rect>
            <rect x="16" y="10" width="4" height="10" fill="#333" opacity="0.2">
                <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.3s" dur="0.6s"
                         repeatCount="indefinite"></animate>
                <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.3s" dur="0.6s"
                         repeatCount="indefinite"></animate>
                <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.3s" dur="0.6s"
                         repeatCount="indefinite"></animate>
            </rect>
		</svg>
    </div>

</div>


<div class="error-popup awe-popup">
    <div class="overlay no-background"></div>
    <div class="popup-inner content">
        <div class="error-message"></div>
    </div>
</div>
<div id="popup-cart" class="hidden" role="dialog">
    <div id="popup-cart-desktop" class="clearfix">
        <div class="title-popup-cart">
            <i class="fa fa-check" aria-hidden="true"></i> Bạn đã thêm <span class="cart-popup-name"
                                                                             style="color: red;"></span> vào giỏ hàng
        </div>

        <div class="content-popup-cart">
            <div class="thead-popup">
                <div style="width: 54%;" class="text-left">Sản phẩm</div>
                <div style="width: 15%;" class="text-center">Đơn giá</div>
                <div style="width: 15%;" class="text-center">Số lượng</div>
                <div style="width: 15%;" class="text-center">Thành tiền</div>
            </div>
            <div class="tbody-popup"></div>
            <div class="tfoot-popup">
                <div class="tfoot-popup-1 clearfix">
                    <div class="pull-left popup-ship">
                        <div class="title-quantity-popup">
                            <a href="${pageContext.request.contextPath}/cart">
                                Giỏ hàng của bạn <i>(<b class="cart-popup-count">0</b> sản phẩm)</i>
                            </a>
                        </div>
                    </div>
                    <div class="pull-right popup-total">
                        <p>Thành tiền: <span class="total-price">0₫</span></p>
                    </div>
                </div>
                <div class="tfoot-popup-2 clearfix">
                    <a class="button btn-proceed-checkout" title="Tiến hành đặt hàng"
                       href="${pageContext.request.contextPath}/checkout"><span>Tiến hành đặt hàng</span></a>
                    <a class="button btn btn-gray btn-continue" title="Tới giỏ hàng"
                       href="${pageContext.request.contextPath}/cart"><span><span>Tới giỏ hàng</span></span></a>
                </div>
            </div>
        </div>
        <a title="Close" class="quickview-close close-window" href="javascript:;"
           onclick="$('#popup-cart').modal('hide');"><i class="fa  fa-times-circle"></i></a>
    </div>

</div>
<div id="myModal" class="modal fade" role="dialog">
</div>
<!-- Modal Đăng nhập -->
<div class="modal fade" id="dangnhap" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog wrap-modal-login" role="document">
        <div class="text-xs-center">
            <div id="loginx">
                <div class="row row-noGutter">

                    <div class="col-sm-6">
                        <div class="bg-dark2">
                            <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/logo.png?1667450085862"
                                 data-lazyload="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/popup_bg.jpg?1667450085862"
                                 alt="popup">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="content a-left">
                            <h5 class="title-modal a-center">ĐĂNG NHẬP TÀI KHOẢN </h5>

                            <form method="post" action="/account/login" id="customer_login" accept-charset="UTF-8">
                                <input name="FormType" type="hidden" value="customer_login"><input name="utf8"
                                                                                                   type="hidden"
                                                                                                   value="true">
                                <div class="form-signup">

                                </div>
                                <div class="form-signup clearfix">
                                    <fieldset class="form-group">
                                        <label>Email: </label>
                                        <input type="email" class="form-control form-control-lg" value="" name="email"
                                               required="">
                                    </fieldset>
                                    <fieldset class="form-group">
                                        <label>Mật khẩu: </label>
                                        <input type="password" class="form-control form-control-lg" value=""
                                               name="password" required="">
                                    </fieldset>
                                    <div class="a-left">
                                        <p class="margin-bottom-15">Bạn quyên mật khẩu? Hãy bấm <a href="#"
                                                                                                   class="btn-link-style btn-link-style-active"
                                                                                                   onclick="showRecoverPasswordForm();return false;">tại
                                            đây</a></p>
                                        <!-- <a href="/account/register" class="btn-link-style">Đăng ký tài khoản mới</a> -->
                                    </div>
                                    <fieldset class="form-group">
                                        <input class="btn btn-primary btn-full" type="submit" value="Đăng nhập">
                                    </fieldset>


                                </div>


                            </form>
                            <div class="link-popup"><p>
                                Chưa có tài khoản đăng ký
                                <a href="#" class="margin-top-20" data-dismiss="modal" data-toggle="modal"
                                   data-target="#dangky">tại đây</a>
                            </p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div id="recover-password" class="form-signup" style="display: none">
                <div class="row row-noGutter">
                    <div class="col-sm-6" style="height: 100%; width: 40%;">
                        <div class="bg-dark2">
                            <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/logo.png?1667450085862"
                                 data-lazyload="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/popup_bg.jpg?1667450085862"
                                 alt="popup">

                        </div>
                    </div>
                    <div class="col-sm-6" style="width: 60%;">
                        <div class="content a-center">
                            <h5 class="title-modal">Lấy lại mật khẩu</h5>
                            <p>Chúng tôi sẽ gửi thông tin lấy lại mật khẩu vào email đăng ký tài khoản của bạn</p>

                            <form method="post" action="/account/recover" id="recover_customer_password"
                                  accept-charset="UTF-8"><input name="FormType" type="hidden"
                                                                value="recover_customer_password"><input name="utf8"
                                                                                                         type="hidden"
                                                                                                         value="true">
                                <div class="form-signup">

                                </div>
                                <div class="form-signup clearfix">
                                    <fieldset class="form-group">
                                        <input type="email" class="form-control form-control-lg" value="" name="Email"
                                               required="">
                                    </fieldset>
                                </div>
                                <div class="action_bottom">
                                    <input class="btn btn-primary btn-full" type="submit" value="Gửi">
                                    <a href="#"
                                       class="margin-top-10 btn  btn-full btn-dark btn-style-active btn-recover-cancel"
                                       onclick="hideRecoverPasswordForm();return false;">Hủy</a>
                                </div>
                            </form>
                            <div class="margin-top-10"><p>Chào mừng bạn đến với <a
                                    href="${pageContext.request.contextPath}/">Sunrise Hanoi Hotel</a></p>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

            <script type="text/javascript">
              function showRecoverPasswordForm() {
                document.getElementById('recover-password').style.display = 'block';
                document.getElementById('loginx').style.display = 'none';
              }

              function hideRecoverPasswordForm() {
                document.getElementById('recover-password').style.display = 'none';
                document.getElementById('loginx').style.display = 'block';
              }

              if (window.location.hash == '#recover') {
                showRecoverPasswordForm()
              }
            </script>

        </div>
        <button type="button" class="btn btn-close btn-default" data-dismiss="modal"><i class="fa fa-close"></i>
        </button>
    </div>
</div>
<!-- Modal Đăng ký-->
<div class="modal fade" id="dangky" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog wrap-modal-login" role="document">
        <div class="text-xs-center">
            <div id="login">
                <div class="row row-noGutter">

                    <div class="col-sm-6">
                        <div class="bg-dark2">
                            <img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/logo.png?1667450085862"
                                 data-lazyload="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/popup_bg.jpg?1667450085862"
                                 alt="popup">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="content a-left">
                            <h5 class="title-modal a-center">ĐĂNG KÝ TÀI KHOẢN</h5>

                            <form method="post" action="/account/register" id="customer_register"
                                  accept-charset="UTF-8"><input name="FormType" type="hidden" value="customer_register"><input
                                    name="utf8" type="hidden" value="true"><input type="hidden"
                                                                                  id="Token-e8d33dd30c144badb245a488e1a4c591"
                                                                                  name="Token"
                                                                                  value="03AFcWeA5J2BGtn2dvO1KT05keSMwhR3dEuQ9OEv2sfmxv0PA9tLJUtDAd8yD3Uj3WZHfbRjSYFO9oSNVeu8fbBZmqFA94D-2lmrvz2L3ned3lV8mylynE_5IOvZ2xlkjM5ExymR7d-vHgdcnmA77xca9cMR4Yu51R3oFX-f_f2cUDDO5gqohX3R5f3Ook1CcqKcs-SvSJxMgtzNVHD0QrvpPUUxXVWKMHSbsZojnuzKutgfhnu651Ge2sxS500sPLe7O4u6DMiZqUDPpsCWbk5dJw3lmpzI0OomCTc-kZOCebeze3uldX947zeJAmuVz-gVEr-kvtn7lG3haCCw3_KLKFPmPZEPBJHZ5DL1-TH0M3iiyBbKwnDZwhdE4PXPWy1WlIeV_4yViRgnHf9SrngAi27x_Po0OEbjcKF8bjGSZajtlPJMDUKLuUISmNlnjz8UGW5ohTSgtd9rGtSPUcji5f6nuq4fBSj2-voFc7kNC7LD5heqT7j3AI6MyUUtQLCdBRubIWWgEcohlrVKhDPJJPNKpzX_HEmLQ1vbRjZOnb3yQwzXfZ7BFA5C-ybJThSa-zyAwsXs7E2Zv-xNF9EZnjcx9DlTfU2jPyQR7uQYGqb7h5dBIdOg6IcrYHrvYQFC4RV3CNEkcJec8-3bIHwIUdgUj0mJBGi3o0nH89SGSAnlDklQENksVo1Lk6KZ6s9CNZQAR1eb-ga8p4xRFxqEV5wL6H8Cs4UulJQaanm7lVoh5SAVZiOgg">
                                <script src="https://www.google.com/recaptcha/api.js?render=6Ldtu4IUAAAAAMQzG1gCw3wFlx_GytlZyLrXcsuK"></script>
                                <script>grecaptcha.ready(function () {
                                  grecaptcha.execute("6Ldtu4IUAAAAAMQzG1gCw3wFlx_GytlZyLrXcsuK", {action: "customer_register"}).then(function (token) {
                                    document.getElementById("Token-e8d33dd30c144badb245a488e1a4c591").value = token
                                  });
                                });</script>
                                <div class="form-signup">

                                </div>
                                <div class="form-signup clearfix">
                                    <fieldset class="form-group">
                                        <label>Họ tên</label>
                                        <input type="text" class="form-control form-control-lg" value=""
                                               name="firstName" required="">
                                    </fieldset>
                                    <fieldset class="form-group">
                                        <label>Email</label>
                                        <input type="email" class="form-control form-control-lg" value="" name="email"
                                               required="">
                                    </fieldset>
                                    <fieldset class="form-group">
                                        <label>Mật khẩu</label>
                                        <input type="password" class="form-control form-control-lg" value=""
                                               name="password" required="">
                                    </fieldset>

                                    <fieldset class="form-group">
                                        <button value="Đăng ký" class="btn btn-primary btn-full">Đăng ký</button>
                                    </fieldset>

                                </div>
                            </form>

                            <div class="link-popup"><p>
                                Đã có tài khoản đăng nhập
                                <a href="#" class="margin-top-20" data-dismiss="modal" data-toggle="modal"
                                   data-target="#dangnhap">tại đây</a>
                            </p></div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <button type="button" class="btn btn-close btn-default" data-dismiss="modal"><i class="fa fa-close"></i>
        </button>
    </div>
</div>


<a class="btn-call-now" href="tel:02438627555">
    <i class="fa"><img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/telephone.svg?1667450085862"
                       alt="hotline"></i>
    <span>02438627555</span>
</a>
<a class="btn-call-now btn-call-now-2" href="tel:0946516655">
    <i class="fa"><img src="//bizweb.dktcdn.net/100/467/686/themes/881628/assets/telephone.svg?1667450085862"
                       alt="hotline"></i>
    <span>0946516655</span>
</a>


<div>
    <div class="grecaptcha-badge" data-style="bottomright"
         style="width: 256px; height: 60px; display: block; transition: right 0.3s ease 0s; position: fixed; bottom: 14px; right: -186px; box-shadow: gray 0px 0px 5px; border-radius: 2px; overflow: hidden;">
        <div class="grecaptcha-logo">
            <iframe title="reCAPTCHA" width="256" height="60" role="presentation" name="a-s5se35a8xv70" frameborder="0"
                    scrolling="no"
                    sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox allow-storage-access-by-user-activation"
                    src="https://www.google.com/recaptcha/api2/anchor?ar=1&amp;k=6Ldtu4IUAAAAAMQzG1gCw3wFlx_GytlZyLrXcsuK&amp;co=aHR0cHM6Ly9zdW5yaXNlaGFub2lob3RlbC52bjo0NDM.&amp;hl=en&amp;v=KXX4ARWFlYTftefkdODAYWZh&amp;size=invisible&amp;cb=hm858dfohqsp"></iframe>
        </div>
        <div class="grecaptcha-error"></div>
        <textarea id="g-recaptcha-response-100000" name="g-recaptcha-response" class="g-recaptcha-response"
                  style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea>
    </div>
    <iframe style="display: none;"></iframe>
</div>
