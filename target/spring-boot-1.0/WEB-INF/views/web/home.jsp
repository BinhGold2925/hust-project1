<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
</head>

<body>
<div class="page-wrapper">
    <div class="">
        <!-- HEADER -->
        <%--<header>--%>
            <%--<!-- Begin menu  -->--%>
            <%--<div class="p-4">--%>
                <%--<div class="row navbar">--%>
                    <%--<div class="col-12 col-md-3">--%>
                        <%--<div class="logo">--%>
                            <%--<a href="">--%>
                                <%--<img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/logo.png?1676257083798"--%>
                                     <%--alt="">--%>
                            <%--</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="col-12 col-md-6">--%>
                        <%--<div class="item-menu">--%>
                            <%--<div class="nav nav1">--%>
                                <%--<div class="nav-item p-2">--%>
                                    <%--<a class="nav-item-link" href="">--%>
                                        <%--<span style="color: var(--primary-color);">Trang chủ</span>--%>
                                    <%--</a>--%>
                                <%--</div>--%>
                                <%--<div class="nav-item p-2">--%>
                                    <%--<a href='<c:url value='/gioi-thieu'/>'>--%>
                                        <%--<span>Giới thiệu</span>--%>
                                        <%--&lt;%&ndash;<span style="color: var(--primary-color);">Giới thiệu</span>&ndash;%&gt;--%>
                                    <%--</a>--%>
                                <%--</div>--%>
                                <%--<div class="nav-item p-2">--%>
                                    <%--&lt;%&ndash;<a class="nav-item-link" href="./Duan.html">&ndash;%&gt;--%>
                                        <%--<a href='<c:url value='/san-pham'/>'>--%>
                                        <%--<span>Sản phẩm</span>--%>
                                        <%--&lt;%&ndash;<span style="color: var(--primary-color);">Sản phẩm</span>&ndash;%&gt;--%>
                                    <%--</a>--%>
                                <%--</div>--%>
                                <%--<div class="nav-item p-2">--%>
                                    <%--&lt;%&ndash;<a class="nav-item-link" href="./TinTuc.html">&ndash;%&gt;--%>
                                        <%--<a href='<c:url value='/tin-tuc'/>'>--%>
                                        <%--<span>Tin tức</span>--%>
                                    <%--</a>--%>
                                <%--</div>--%>
                                <%--<div class="nav-item p-2">--%>
                                    <%--<a href='<c:url value='/lien-he'/>'>--%>
                                        <%--<span>Liên hệ</span>--%>
                                    <%--</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="nav-login col-12 col-md-3">--%>
                        <%--<button class="btn btn-primary px-4">--%>
                            <%--<a style="color:#fff;" href="/login">Đăng nhập</a>--%>
                        <%--</button>--%>
                        <%--<button class="btn btn-primary px-4">--%>
                            <%--Đăng ký--%>
                        <%--</button>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<!-- End menu  -->--%>
        <%--</header>--%>
        <!-- SLIDESHOW -->
        <div class="container-fluid">
            <div class="p-0">
                <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
                                class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                                aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div><img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/slider_1.png?1676257083798" alt="">
                            </div>
                            <div class="carousel-caption d-none d-md-block">
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="img-slideshow"><img src="https://media.tapchitaichinh.vn/images/upload/hoangthuviet/04202019/bat-dong-san.jpg"
                                                            alt=""></div>
                            <div class="carousel-caption d-none d-md-block">
                                <!-- <h5>Cho thuê căn hộ chung cư Saigon Mia</h5>
                                <p>. Dự án cho thuê căn hộ chung cư Saigon Mia là dự án được sử dụng dành cho các
                                    khách hàng thành đạt với sở thích và mong muốn được sống trong môi trường có
                                    nguồn không khí trong lành</p> -->
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="https://richnguyen.vn/wp-content/uploads/2020/08/buc-anh-bat-dong-san-dep-2.jpg" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <!-- <h5>Dự án Chung cư Hòa Khánh Liên Chiểu Đà Nẵng</h5>
                                <p>Dự án xây dựng nhằm đáp ứng nhu cầu về nhà ở cho cán bộ, công nhân viên chức, các
                                    đối tượng chính sách xã hội có thu nhập thấp</p> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- SEARCH -->
        <div class="search neon-search">
            <div class="container">
                <form:form id="formHot" action="/trang-chu" method="GET" modelAttribute="modelSearch">
                    <div class="row" style="align-items: flex-end;">
                        <div class="col-12 col-md-3">
                            <div class="search-item">
                                <p class="search-text">Chọn tỉnh/thành phố</p>
                                <select class="search-option" style="font-size: 16px;">
                                    <option value>- Tỉnh/thành phố</option>
                                    <option value="">TP.Hà Nội</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-12 col-md-3">
                            <div class="search-item">
                                <p class="search-text">Chọn quận/huyện</p>
                                <form:select class="form-control" path="district">
                                    <form:option value="">--Chọn Quận--</form:option>
                                    <form:options items="${districts}"/>
                                </form:select>
                            </div>
                        </div>
                        <div class="col-12 col-md-3">
                            <div class="search-item">
                                <p class="search-text">Chọn loại bất động sản</p>
                                <form:select class="form-control" path="type" multiple="none">
                                    <form:option value="">--Loại bất động sản--</form:option>
                                    <form:options items="${buildingsType}"/>
                                </form:select>
                            </div>
                        </div>
                        <div class="col-12 col-md-3 ">
                            <div class="search-btn">
                                <a href='/san-pham'>
                                    <button class="search-btn-text" id="btnFormHot">
                                        <i class="fa-solid fa-magnifying-glass search-btn-icon"></i>
                                        <span style="font-size: 16px;">Tìm kiếm nhanh</span>
                                    </button>
                                </a>
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
        <!-- CONTENT 1  -->
        <div class="content">
            <div class="content-title">
                <div class="title-cover">
                    <span id="title1">Dự án BĐS nổi bật</span>
                    <span id="title2">Tổng hợp các BĐS tại Hà Nội, Đà Nẵng, TP Hồ Chí Minh,... và các tỉnh thành
                            phố khác hot hiện tại</span>
                </div>
            </div>
            <div class="content-product ">
                <div class="container">
                    <div class="content1 justify-content-center">
                        <div class="row">
                            <c:forEach var="item" items="${buildingList}" begin="0" end="2">
                                <div class="col-12 col-md-4 mb-3">
                                    <div class="product1 vip" style="border-radius: 10px;">
                                        <div class="new">
                                            <c:choose>
                                                <c:when test="${not empty item.image}">
                                                    <img class="viewImage"
                                                         src="${pageContext.request.contextPath}/repository${item.image}"
                                                         style="object-fit:cover;border:1px solid #ccc; width: 100%; height: 15.525rem; border-top-left-radius: 10px;
        border-top-right-radius: 10px;" />
                                                </c:when>
                                                <c:otherwise>
                                                    <img class="viewImage"
                                                         src="${pageContext.request.contextPath}/img/loading.gif"
                                                         style="object-fit:cover;border:1px solid #ccc; width: 100%; height: 15.525rem; border-top-left-radius: 10px;
        border-top-right-radius: 10px;"/>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <div class="product1-conntent">
                                            <div class="product1-conntent-header">
                                                <a href="">${item.name}</a>
                                            </div>
                                            <span class="product1-conntent-title">Dự án Sky Park Residence số 3 Tôn Thất Thuyết đang
                                    trong quá trình hoàn thiện để đáp ứng tiến độ bàn giao nhà trong năm 2018. Khách
                                    hàng có thể thăm quan và giám sát trực tiếp chất lương công trình cũng như thưởng
                                    ngoạn tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu Giấy.</span>
                                            <ul class="product1-conntent-list">
                                                <li class="product1-conntent-item">
                                                    <i class="fa-solid fa-location-dot"></i>
                                                    <span>Số 03 Tôn Thất thuyết</span>
                                                </li>
                                                <li class="product1-conntent-item">
                                                    <i class="fa-solid fa-building"></i>
                                                    <span>Loại BĐS: Chung cư</span>
                                                </li>
                                                <li class="product1-conntent-item">
                                                    <i class="fa-solid fa-earth-asia"></i>
                                                    <span>Diện tích: ${item.floorArea}m2</span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="product1-footer">
                                            <span class="product1-footer-cost">${item.rentPrice}/m2</span>
                                            <button class="product1-footer-detail cssdep"><a href=""
                                                                                      style="color:#fff">Xem
                                                chi
                                                tiết</a></button>
                                        </div>
                                    </div>
                                </div>

                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- CONTENT 2  -->
        <section class="section-why mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-12">
                        <div class="title_module_main a-center text-center">
                            <h2 style="margin-bottom: 15px;"><span>Vì sao bạn chọn bất động sản
                                        SkyLand ?</span>
                            </h2>
                            <p style="margin-bottom: 30px;">Chúng tôi cung cấp đầy đủ và chính xác
                                nhất thông tin
                                các dự án bất động sản trên
                                toàn quốc song hành với dịch vụ tư vấn nhanh chóng và hiệu quả</p>
                        </div>
                    </div>
                    <div class="col-12 col-md-12">
                        <div class="wrap">
                            <div
                                    class="swiper_why swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-multirow">
                                <div class="swiper-wrapper">
                                    <div class="item swiper-slide swiper-slide-active">
                                        <div class="row section-why">
                                            <div class="col-12 col-md-4">
                                                <div class="wrap-temp d-flex">
                                                    <div class="ico">
                                                        <img class="img-responsive lazyload loaded"
                                                             src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/img_why1.png?1676257083798" data-src=""
                                                             alt="Chất lượng tốt nhất" data-was-processed="true">
                                                    </div>
                                                    <div class="content_p ml-4">
                                                        <h4><a href="#" class="why-title a-text">Chất lượng
                                                            tốt nhất</a>
                                                        </h4>
                                                        <p class="why-desc">Nghiên cứu, thiết kế và
                                                            đầu tư xây dựng
                                                            với hệ thống dịch
                                                            vụ
                                                            với chất
                                                            lượng tốt nhất</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-4">
                                                <div class="wrap-temp d-flex">
                                                    <div class="ico">
                                                        <img class="img-responsive lazyload loaded"
                                                             src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/img_why2.png?1676257083798" data-src="" alt=""
                                                             data-was-processed="true">
                                                    </div>
                                                    <div class="content_p ml-4">
                                                        <h4><a href="#" class="why-title a-text">Tìm kiếm
                                                            thông tin dễ
                                                            dàng</a></h4>
                                                        <p class="why-desc">Tìm kiếm bất động sản
                                                            bạn muốn theo danh
                                                            mục cực kì dễ
                                                            dàng</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-4">
                                                <div class="wrap-temp d-flex">
                                                    <div class="ico">
                                                        <img class="img-responsive lazyload loaded"
                                                             src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/img_why3.png?1676257083798" data-src="" alt=""
                                                             data-was-processed="true">
                                                    </div>
                                                    <div class="content_p ml-4">
                                                        <h4><a href="#" class="why-title a-text">Kết nối
                                                            với nhà đầu tư</a>
                                                        </h4>
                                                        <p class="why-desc">Nhà đầu tư sẽ mang đến
                                                            những sản phẩm và
                                                            dịch vụ tốt nhất
                                                            đáp ứng nhu cầu của bạn</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 col-md-4">
                                            <div class="wrap-temp d-flex">
                                                <div class="ico">
                                                    <img class="img-responsive lazyload loaded"
                                                         src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/img_why4.png?1676257083798" data-src=""
                                                         alt="Chất lượng tốt nhất" data-was-processed="true">
                                                </div>
                                                <div class="content_p ml-4">
                                                    <h4 class=""><a href="#" class="why-title a-text">Tối
                                                        ưu hóa dịch
                                                        vụ</a></h4>
                                                    <p class="why-desc">Nghiên cứu, thiết kế và đầu
                                                        tư xây dựng với
                                                        hệ thống dịch vụ
                                                        với chất
                                                        lượng tốt nhất</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-4">
                                            <div class="wrap-temp d-flex">
                                                <div class="ico">
                                                    <img class="img-responsive lazyload loaded"
                                                         src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/img_why5.png?1676257083798" data-src=""
                                                         alt="Chất lượng tốt nhất" data-was-processed="true">
                                                </div>
                                                <div class="content_p ml-4">
                                                    <h4><a href="#" class="why-title a-text">Đảm bảo quyền
                                                        lợi khách
                                                        hàng</a></h4>
                                                    <p>
                                                    <p class="why-desc">Thực hiện các chương trình
                                                        chăm sóc và gia
                                                        tăng lợi ích cho
                                                        khách hàng.</p>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-4">
                                            <div class="wrap-temp d-flex">
                                                <div class="ico">
                                                    <img class="img-responsive lazyload loaded"
                                                         src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/img_why6.png?1676257083798" data-src=""
                                                         alt="Chất lượng tốt nhất" data-was-processed="true">
                                                </div>
                                                <div class="content_p ml-4">
                                                    <h4><a href="#" class="why-title a-text">Tiết kiệm thời
                                                        gian và chi
                                                        phí</a></h4>
                                                    <p class="why-desc">Cập nhật giá cả nhanh chóng
                                                        và chính xác
                                                        giúp bạn tiết kiệm
                                                        chi phí hơn nhiều</p>
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
            </div>
        </section>
        <!-- CONTENT 3 - NEW  -->
        <div class="content3">
            <div class="container">
                <div class="text-center">
                    <a class="content3-title" href="">Bất động sản mới nhất</a>
                </div>
                <div class="content3-product justify-content-center">
                    <div class="row">
                        <div class="col-12 col-md-3">
                            <div class="product2">
                                <div class="product1-image"></div>

                                <div class="product1-conntent">
                                    <div class="product1-conntent-header">
                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                    </div>
                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3
                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến
                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và
                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn
                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu
                                            Giấy.</span>
                                    <ul class="product1-conntent-list">
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-location-dot"></i>
                                            <span>Số 03 Tôn Thất thuyết</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-building"></i>
                                            <span>Loại BĐS: Chung cư</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-earth-asia"></i>
                                            <span>Diện tích: 78m2 - 146m2</span>
                                        </li>
                                    </ul>
                                </div>

                                <div class="product1-footer">
                                    <span class="product1-footer-cost">2,5 Tỷ</span>
                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                              style="color:#fff">Xem chi
                                        tiết</a></button>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-3">
                            <div class="product2">
                                <div class="product1-image"></div>
                                <div class="product1-conntent">
                                    <div class="product1-conntent-header">
                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                    </div>
                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3
                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến
                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và
                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn
                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu
                                            Giấy.</span>
                                    <ul class="product1-conntent-list">
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-location-dot"></i>
                                            <span>Số 03 Tôn Thất thuyết</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-building"></i>
                                            <span>Loại BĐS: Chung cư</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-earth-asia"></i>
                                            <span>Diện tích: 78m2 - 146m2</span>
                                        </li>
                                    </ul>
                                </div>

                                <div class="product1-footer">
                                    <span class="product1-footer-cost">2,5 Tỷ</span>
                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                              style="color:#fff">Xem chi
                                        tiết</a></button>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-3">
                            <div class="product2">
                                <div class="product1-image"></div>

                                <div class="product1-conntent">
                                    <div class="product1-conntent-header">
                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                    </div>
                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3
                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến
                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và
                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn
                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu
                                            Giấy.</span>
                                    <ul class="product1-conntent-list">
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-location-dot"></i>
                                            <span>Số 03 Tôn Thất thuyết</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-building"></i>
                                            <span>Loại BĐS: Chung cư</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-earth-asia"></i>
                                            <span>Diện tích: 78m2 - 146m2</span>
                                        </li>
                                    </ul>
                                </div>

                                <div class="product1-footer">
                                    <span class="product1-footer-cost">2,5 Tỷ</span>
                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                              style="color:#fff">Xem chi
                                        tiết</a></button>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-3">
                            <div class="product2">
                                <div class="product1-image"></div>

                                <div class="product1-conntent">
                                    <div class="product1-conntent-header">
                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                    </div>
                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3
                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến
                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và
                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn
                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu
                                            Giấy.</span>
                                    <ul class="product1-conntent-list">
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-location-dot"></i>
                                            <span>Số 03 Tôn Thất thuyết</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-building"></i>
                                            <span>Loại BĐS: Chung cư</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-earth-asia"></i>
                                            <span>Diện tích: 78m2 - 146m2</span>
                                        </li>
                                    </ul>
                                </div>

                                <div class="product1-footer">
                                    <span class="product1-footer-cost">2,5 Tỷ</span>
                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                              style="color:#fff">Xem chi
                                        tiết</a></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- CONTENT 4 - HOT -->
        <div class="content3">
            <div class="container">
                <div class="text-center">
                    <a class="content3-title" href="">Bất động sản xem nhiều</a>
                </div>
                <div class="content3-product justify-content-center">
                    <div class="row">
                        <div class="col-12 col-md-3">
                            <div class="product2">
                                <div class="product1-image"></div>

                                <div class="product1-conntent">
                                    <div class="product1-conntent-header">
                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                    </div>
                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3
                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến
                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và
                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn
                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu
                                            Giấy.</span>
                                    <ul class="product1-conntent-list">
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-location-dot"></i>
                                            <span>Số 03 Tôn Thất thuyết</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-building"></i>
                                            <span>Loại BĐS: Chung cư</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-earth-asia"></i>
                                            <span>Diện tích: 78m2 - 146m2</span>
                                        </li>
                                    </ul>
                                </div>

                                <div class="product1-footer">
                                    <span class="product1-footer-cost">2,5 Tỷ</span>
                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                              style="color:#fff">Xem chi
                                        tiết</a></button>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-3">
                            <div class="product2">
                                <div class="product1-image"></div>
                                <div class="product1-conntent">
                                    <div class="product1-conntent-header">
                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                    </div>
                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3
                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến
                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và
                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn
                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu
                                            Giấy.</span>
                                    <ul class="product1-conntent-list">
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-location-dot"></i>
                                            <span>Số 03 Tôn Thất thuyết</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-building"></i>
                                            <span>Loại BĐS: Chung cư</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-earth-asia"></i>
                                            <span>Diện tích: 78m2 - 146m2</span>
                                        </li>
                                    </ul>
                                </div>

                                <div class="product1-footer">
                                    <span class="product1-footer-cost">2,5 Tỷ</span>
                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                              style="color:#fff">Xem chi
                                        tiết</a></button>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-3">
                            <div class="product2">
                                <div class="product1-image"></div>

                                <div class="product1-conntent">
                                    <div class="product1-conntent-header">
                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                    </div>
                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3
                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến
                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và
                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn
                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu
                                            Giấy.</span>
                                    <ul class="product1-conntent-list">
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-location-dot"></i>
                                            <span>Số 03 Tôn Thất thuyết</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-building"></i>
                                            <span>Loại BĐS: Chung cư</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-earth-asia"></i>
                                            <span>Diện tích: 78m2 - 146m2</span>
                                        </li>
                                    </ul>
                                </div>

                                <div class="product1-footer">
                                    <span class="product1-footer-cost">2,5 Tỷ</span>
                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                              style="color:#fff">Xem chi
                                        tiết</a></button>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-3">
                            <div class="product2">
                                <div class="product1-image"></div>

                                <div class="product1-conntent">
                                    <div class="product1-conntent-header">
                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                    </div>
                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3
                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến
                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và
                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn
                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu
                                            Giấy.</span>
                                    <ul class="product1-conntent-list">
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-location-dot"></i>
                                            <span>Số 03 Tôn Thất thuyết</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-building"></i>
                                            <span>Loại BĐS: Chung cư</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-earth-asia"></i>
                                            <span>Diện tích: 78m2 - 146m2</span>
                                        </li>
                                    </ul>
                                </div>

                                <div class="product1-footer">
                                    <span class="product1-footer-cost">2,5 Tỷ</span>
                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                              style="color:#fff">Xem chi
                                        tiết</a></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- CONTENT 5 -->
        <section class="section-subscribe mt-5">
            <div class="container">
                <div class="row text-center">
                    <div class="title_module_main a-center">
                        <h2>Nhận thông tin nhà đất miễn phí</h2>
                        <p class="mt-15">Cập nhật hơn 1.000.000 thông tin mua bán và
                            giao dịch nhà
                            đất mỗi
                            tháng tại 63 tỉnh thành phố trên cả nước</p>
                    </div>
                </div>
                <div class="wrap-subscribe text-center">
                    <div class="row justify-content-center">
                        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 col-lg-offset-2 col-md-offset-2">
                            <div class="module-get">
                                <div class="inner-get">
                                    <div class="form-inner">
                                        <form class="a-center"
                                              action="//dkt.us13.list-manage.com/subscribe/post?u=0bafe4be7e17843051883e746&amp;id=3bdd6e9e3b"
                                              method="post" id="mc-embedded-subscribe-form"
                                              name="mc-embedded-subscribe-form" target="_blank">
                                            <input type="email" value="" placeholder="Nhập địa chỉ email của bạn.."
                                                   name="EMAIL" id="mail"
                                                   aria-label="general.newsletter_form.newsletter_email">
                                            <button class="button-subscribe button-45 subscribe" name="subscribe"
                                                    id="subscribe">NHẬN TIN
                                                MIỄN
                                                PHÍ</button>
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- CONTENT 6 - NEW  -->

        <!-- FOOTER  -->
        <div class="brand mt-5 border-top">
            <div class="container">
                <div class="row">
                    <div class="d-flex justify-content-evenly mt-4">
                        <div><img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/brand1.png?1676257083798" alt="" style="border-top-left-radius: 20px; border-bottom-left-radius: 20px;"></div>
                        <div><img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/brand2.png?1676257083798" alt=""></div>
                        <div><img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/brand3.png?1676257083798" alt=""></div>
                        <div><img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/brand4.png?1676257083798" alt=""></div>
                        <div><img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/brand5.png?1676257083798" alt=""></div>
                        <div><img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/brand6.png?1676257083798" alt="" style="border-bottom-right-radius: 20px; border-top-right-radius: 20px;" ></div>
                    </div>
                </div>
            </div>
        </div>

        <footer class="footer">
            <div class="container-fluid">
                <div class="top-footer text-center mt-0">
                    <div class="logo logo-footer pt-5">
                        <a href="./ViewHome.html"><img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/logo_footer.png?1676257083798"
                                                       alt="logo-footer"></a>
                        <p class="desc-logo-footer mt-3">Với hơn 10 năm kinh nghiệm, SkyLand tự hào là sàn
                            mua
                            bán, giao dịch và quảng cáo
                            bất động sản hàng đầu tại Việt Nam</p>
                        <div class="item-footer mt-5">
                            <div class="row">
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_maps.png?1676257083798" alt="">
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="mb-1 mt-3">Trụ sở chính</p>
                                        <p class="desc-footer">NGUYỄN ĐỨC CẢNH, TP HÀ NỘI</p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_phone.png?1676257083798" alt="">
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="mb-1 mt-3">Hotline</p>
                                        <p class="desc-footer"><a class="a-text" href="#">098828</a></p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_email.png?1676257083798" alt="">
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="mb-1 mt-3">Email</p>
                                        <p class="desc-footer"><a class="a-text" href="#">vsh@gmail.com</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <div class="border-bottom mb-5 mt-4"></div>
                    </div>
                </div>
                <div class="bottom-footer container">
                    <div class="row">
                        <div class="col-12 col-md-3">
                            <h4 class="title-item-bottom-footer">Thông tin công ty</h4>
                            <p class="desc-item-bottom-footer desc-1"><a class="a-text" href="">Trang
                                chủ</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Giới thiệu</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Dự án bất động
                                sản</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Tin tức</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Liên hệ</a></p>
                        </div>
                        <div class="col-12 col-md-3">
                            <h4 class="title-item-bottom-footer">Chính sách hoạt động</h4>
                            <p class="desc-item-bottom-footer desc-1"><a class="a-text" href="">Trang
                                chủ</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Giới thiệu</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Dự án bất động
                                sản</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Tin tức</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Liên hệ</a></p>
                        </div>
                        <div class="col-12 col-md-3">
                            <h4 class="title-item-bottom-footer">Hỗ trợ khách hàng</h4>
                            <p class="desc-item-bottom-footer desc-1"><a class="a-text" href="">Trang
                                chủ</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Giới thiệu</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Dự án bất động
                                sản</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Tin tức</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Liên hệ</a></p>
                        </div>
                        <div class="col-12 col-md-3">
                            <h4 class="title-item-bottom-footer">Kết nối với chúng tôi</h4>
                            <p class="desc-item-bottom-footer desc-1"><a class="a-text" href="">Trang
                                chủ</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Giới thiệu</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Dự án bất động
                                sản</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Tin tức</a></p>
                            <p class="desc-item-bottom-footer"><a class="a-text" href="">Liên hệ</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bottom-footer-2">
                <div class="text-center desc-bottom-footer-2">@ Bản quyền thuộc về GonDer |
                    Cung cấp bởi <a class="a-text group-name" href="#">GonDer</a></div>
            </div>
        </footer>
    </div>
</div>

<section class="vh-100 gradient-custom form-register">
    <div class="container">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card text-white" style="border-radius: 1rem; background-color: #35bf76;">
                    <div class="card-body p-2 px-5 text-center">
                        <div class="md-5 md-4 mt-4 pb-2">
                            <h2 class="fw-bold mb-2 text-uppercase">Create an account</h2>
                            <p class="text-white-50 mb-2">Please enter your Information</p>

                            <div class="row">
                                <div class="col-md-6 mb-2">
                                    <div class="form-outline">
                                        <label class="form-label" for="form3Example1m">First name</label>
                                        <input type="text" id="form3Example1m"
                                               class="form-control form-control-lg" />
                                    </div>
                                </div>
                                <div class="col-md-6 mb-2">
                                    <div class="form-outline">
                                        <label class="form-label" for="form3Example1n">Last name</label>
                                        <input type="text" id="form3Example1n"
                                               class="form-control form-control-lg" />
                                    </div>
                                </div>
                            </div>

                            <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">
                                <h6 class="mb-0 me-4">Gender: </h6>

                                <div class="form-check form-check-inline mb-0 me-4">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions"
                                           id="femaleGender" value="option1" />
                                    <label class="form-check-label" for="femaleGender">Female</label>
                                </div>

                                <div class="form-check form-check-inline mb-0 me-4">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions"
                                           id="maleGender" value="option2" />
                                    <label class="form-check-label" for="maleGender">Male</label>
                                </div>

                                <div class="form-check form-check-inline mb-0">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions"
                                           id="otherGender" value="option3" />
                                    <label class="form-check-label" for="otherGender">Other</label>
                                </div>
                            </div>

                            <div class="form-outline form-white mb-2">
                                <label class="form-label" for="typePasswordX">Username</label>
                                <input type="email" id="typePasswordX" class="form-control form-control-lg" />
                            </div>

                            <div class="form-outline form-white mb-2">
                                <label class="form-label" for="typeEmailX">Password</label>
                                <input type="email" id="typeEmailX" class="form-control form-control-lg" />
                            </div>

                            <div class="form-outline form-white mb-2">
                                <label class="form-label" for="typeEmailX">Repeat your password</label>
                                <input type="email" id="typeEmailX" class="form-control form-control-lg" />
                            </div>

                            <div class="form-check justify-content-center mb-2">
                                <input class="form-check-input me-2" type="checkbox" value=""
                                       id="form2Example3cg" />
                                <label class="form-check-label">
                                    I agree all statements in <a href="#!" class="text-body"><u
                                        style="color: white ;">Terms of
                                    service</u></a>
                                </label>
                            </div>


                            <button class="btn btn-outline-light btn-lg px-5" type="submit">Register</button>



                            <p class="text-center text-muted mt-2 mb-0">Have already an account? <a href="#!"
                                                                                                    class="fw-bold text-body"><u style="color: white ;">Login here</u></a></p>

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%--<script>--%>
<%--    $('#btnFormHot').click(function (e){--%>
<%--        e.preventDefault();--%>
<%--        $('#formHot').submit();--%>
<%--    });--%>
<%--</script>--%>
<style>
    /* ===== NEON SEARCH BAR ===== */
    .neon-search {
        background: linear-gradient(
                270deg,
                #00f5ff,
                #00ff85,
                #a855f7,
                #00f5ff
        );
        background-size: 600% 600%;
        animation: neonFlow 8s ease infinite;

        padding: 24px;
        border-radius: 0 0 14px 14px;
        box-shadow:
                0 0 15px rgba(0, 245, 255, 0.6),
                0 0 30px rgba(0, 255, 133, 0.4),
                inset 0 0 20px rgba(255, 255, 255, 0.15);
    }

    /* ===== ANIMATION ===== */
    @keyframes neonFlow {
        0% { background-position: 0% 50%; }
        50% { background-position: 100% 50%; }
        100% { background-position: 0% 50%; }
    }

    /* ===== SELECT + BUTTON ===== */
    .neon-search select,
    .neon-search button {
        background: rgba(0, 0, 0, 0.35);
        color: #000000;
        border: 1px solid rgba(255, 255, 255, 0.3);
        border-radius: 10px;

        box-shadow:
                0 0 8px rgba(0, 245, 255, 0.6),
                inset 0 0 6px rgba(255, 255, 255, 0.2);

        transition: all 0.3s ease;
        font-weight:600;
    }

    /* ===== HOVER EFFECT ===== */
    .neon-search select:hover,
    .neon-search button:hover {
        color: #00f5ff !important;
        background: rgba(0, 0, 0, 0.55);
        box-shadow:
                0 0 14px rgba(168, 85, 247, 0.9),
                0 0 28px rgba(0, 245, 255, 0.8);
        transform: translateY(-2px);
    }

    /* ===== BUTTON RIÊNG ===== */
    .neon-search button {
        background: linear-gradient(135deg, #00f5ff, #a855f7);
        font-weight: bold;
        cursor: pointer;
    }

    /* ===== TEXT ===== */
    .neon-search label {
        color: #eaffff;
        font-weight: 600;
        text-shadow: 0 0 6px rgba(255, 255, 255, 0.6);
    }
    .cssdep {
        font-weight: 600;
        text-shadow: 0 0 6px rgba(255, 255, 255, 0.6);
        border: 1px solid rgba(255, 255, 255, 0.3);
        border-radius: 15px;
        box-shadow: 0 0 8px rgba(0, 245, 255, 0.6), inset 0 0 6px rgba(255, 255, 255, 0.2);
        transition: all 0.3s ease;
        background: linear-gradient(135deg, #00f5ff, #a855f7);
    }
    .css a {
        color: #000000 !important;
        text-decoration: none;
        padding: 8px 14px;
        border-radius: 10px;
        transition: all 0.3s ease;
    }
    .cssdep a:hover {
        color: #00f5ff !important;
        text-decoration: none;
    }
    .cssdep:hover {
        color: #00f5ff !important;
        background: rgba(0, 0, 0, 0.55);
        box-shadow:
                0 0 14px rgba(168, 85, 247, 0.9),
                0 0 28px rgba(0, 245, 255, 0.8);
        transform: translateY(-2px);
    }
    html, body {
        margin: 0;
        padding: 0;
        background: #f4f7fa;
    }


    .page-wrapper {
        min-height: 100vh;
        background: #f4f7fa;
    }
</style>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>

</html>