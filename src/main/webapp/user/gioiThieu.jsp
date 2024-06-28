<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/22/2024
  Time: 9:50 PM
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
                        <a href="${pageContext.request.contextPath}/"><span>Trang chủ</span></a>
                        <span>/</span>
                    </li>

                    <li><strong><span>Giới thiệu</span></strong></li>

                </ul>
            </div>
        </div>
    </div>
</section>
<section class="page">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="page-title category-title">
                    <h1 class="title-head"><a href="#">Giới thiệu</a></h1>
                </div>
                <div class="content-page rte">
                    <h2>CHÀO MỪNG ĐẾN VỚI KHÁCH SẠN SUNRISE HÀ NỘI</h2>
                    <p>- Nằm ở thành phố Hà Nội, Khách sạn Sunrise Hà Nội có nhà hàng. Chỗ nghỉ cung cấp dịch vụ lễ tân 24 giờ, dịch vụ phòng và dịch vụ thu đổi ngoại tệ cho khách.<br>
                        - Tất cả phòng nghỉ tại đây đều được trang bị máy điều hòa, truyền hình cáp màn hình phẳng, ấm đun nước, chậu rửa vệ sinh (bidet), máy sấy tóc và bàn làm việc. Các phòng còn có tầm nhìn ra quang cảnh thành phố và phòng tắm riêng đi kèm vòi sen cùng đồ vệ sinh cá nhân miễn phí.<br>
                        - Khách sạn Sunrise Hà Nội phục vụ bữa sáng kiểu lục địa hoặc tự chọn.<br>
                        Du khách có thể thoải mái sử dụng phòng xông hơi khô của chỗ nghỉ. Đi xe đạp là hoạt động được ưa chuộng trong khu vực và du khách cũng có thể thuê xe hơi tại Khách sạn Sunrise Hà Nội.<br>
                        - Khách sạn nằm cách Nhà Hát Lớn Hà Nội 2 km và trung tâm thương mại Tràng Tiền Plaza 2,4 km. Sân bay gần nhất là sân bay quốc tế Nội Bài, nằm trong bán kính 23 km từ Khách sạn Sunrise Hà Nội, và chỗ nghỉ cung cấp dịch vụ đưa đón sân bay với một khoản phụ phí.</p>
                    <p style="text-align: justify;">&nbsp;</p>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="component/footer.jsp"/>
<jsp:include page="component/modal.jsp"/>
</body>
</html>
