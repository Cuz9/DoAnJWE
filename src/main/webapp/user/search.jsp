<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/22/2024
  Time: 10:27 PM
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
                    <li><strong><span>Tìm kiếm</span></strong></li>

                </ul>
            </div>
        </div>
    </div>
</section>
<section class="signup search-main">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h2><a href="#" class="title-box">Nhập từ khóa tìm kiếm </a></h2>
            </div>
            <div class="col-xs-12">
                <form action="/search" method="get" class="form-signup">

                    <fieldset class="form-group">
                        <input type="text" name="query" value="${query}" placeholder="Tìm kiếm ..." class="form-control" style="width:300px; float:left;height: 45px;     line-height: 2.1;">
                        <button type="submit" class="btn btn-primary">Tìm kiếm</button>
                    </fieldset>
                </form>
            </div>



            <div class="col-xs-12">
                <h2 class="title-head margin-bottom-50">Không tìm thấy bất kỳ kết quả nào với từ khóa trên.</h2>
            </div>








        </div>
    </div>
</section>
<jsp:include page="component/footer.jsp"/>
<jsp:include page="component/modal.jsp"/>
</body>
</html>
