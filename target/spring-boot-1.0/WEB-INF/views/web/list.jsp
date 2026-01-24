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
    <title>Sản phẩm</title>
</head>

<body>
<div class="page-wrapper" style="background: #f4f7fa !important;">
    <%--<header>--%>
        <%--<!-- MENU  -->--%>
        <%--<div class="p-4">--%>
            <%--<div class="row navbar">--%>
                <%--<div class="col-12 col-md-3">--%>
                    <%--<div class="logo">--%>
                        <%--<a href="/trang-chu">--%>
                            <%--<img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/logo.png?1676257083798"--%>
                                 <%--alt="">--%>
                        <%--</a>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-12 col-md-6">--%>
                    <%--<div class="item-menu">--%>
                        <%--<div class="nav nav1">--%>
                            <%--<div class="nav-item p-2"><a class="nav-item-link" href="/trang-chu"><span>Trang--%>
                                            <%--chủ</span></a></div>--%>
                            <%--<div class="nav-item p-2"><a class="nav-item-link" href="/gioi-thieu"><span>Giới--%>
                                            <%--thiệu</span></a></div>--%>
                            <%--<div class="nav-item p-2"><a class="nav-item-link" href=""><span--%>
                                    <%--style="color: var(--primary-color);">Sản phẩm</span></a></div>--%>
                            <%--<div class="nav-item p-2"><a class="nav-item-link" href="/tin-tuc"><span>Tin--%>
                                            <%--tức</span></a>--%>
                            <%--</div>--%>
                            <%--<div class="nav-item p-2"><a href='<c:url value='/lien-he'/>'><span>Liên hệ--%>
                                    <%--</span></a>--%>
                            <%--</div>--%>

                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-12 col-md-3">--%>
                    <%--<button class="btn btn-primary px-4">--%>
                        <%--Liên hệ tư vấn--%>
                    <%--</button>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</header>--%>
    <!-- INTRO  -->
    <div class="intro text-center">
        <div class="title-page">Tất cả dự án</div>
        <div class="row">
            <div class="col-xs-12 a-left">
                <ul class="desc-intro">
                    <li class="home">
                        <a href="./ViewHome.html"><span style="color:#fff">Trang chủ</span></a>
                        <span class="mx-1" style="color:#fff"> / </span>
                    </li>
                    <li class="intro-item"><span>Tất cả sản phẩm</span></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- SEARCH  -->
        <div class="search neon-search">
            <div class="container">
                <form:form id="formHot" action="/san-pham" method="GET" modelAttribute="modelSearchs">
                    <div class="row" style="align-items: flex-end;">
                        <div class="col-12 col-md-3">
                            <div class="search-item">
                                <p class="search-text">Chọn tỉnh/thành phố</p>
                                <select class="search-option" style="font-size: 16px;">
                                    <option value="" >- Tỉnh/thành phố</option>
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
                                <button class="search-btn-text" id="btnFormHot">
                                    <i class="fa-solid fa-magnifying-glass search-btn-icon"></i>
                                    <span style="font-size: 16px;">Tìm kiếm nhanh</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>

    <!-- CONTENT  -->
    <div class="product mt-5">
        <div class="container">
            <div class="row">
                <c:forEach var="item" items="${buildingLists}">
                    <div class="col-12 col-md-4 mb-3">
                        <div class="product1 vip" style="border-radius: 10px;">
                            <div class="new">
                                <c:choose>
                                    <c:when test="${not empty item.image}">
                                        <img class="viewImage"
                                             src="${pageContext.request.contextPath}/repository${item.image}"
                                             style="object-fit:cover;border:1px solid #ccc; width: 100%; height: 15.525rem; border-top-left-radius: 10px;
        border-top-right-radius: 10px;"/>
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
                                        <span>${item.address}</span>
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
                                <button class="product1-footer-detail cssdep"><a href="" style="color:#fff">Xem
                                    chi
                                    tiết</a></button>
                            </div>
                        </div>
                    </div>

                </c:forEach>

            </div>
        </div>

        <!-- TIEN TRINH  -->
        <div class="container text-center">
            <div class="shop-pag text-xs-right mt-5">
                <nav class="text-center">
                    <ul class="pagination clearfix justify-content-center">
                        <li class="page-item disabled"><a class="page-link" href="#">«</a></li>
                        <li class="active page-item disabled"><a class="page-link" href="javascript:;">1</a></li>
                        <li class="page-item"><a class="page-link" onclick="doSearch(2)" href="javascript:;">2</a>
                        </li>
                        <li class="page-item"><a class="page-link" onclick="doSearch(2)" href="javascript:;">»</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

        <!-- FOOTER  -->
        <footer class="footer">
            <div class="container">
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
                                        <p class="desc-footer">Số 46 Man Thiện, TP Thủ Đức, TP HCM</p>
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
                <div class="bottom-footer">
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
                <div class="text-center desc-bottom-footer-2">@ Bản quyền thuộc về Happy Team |
                    Cung cấp bởi <a class="a-text group-name" href="#">HappyTeam</a></div>
            </div>
        </footer>
    </div>
</div>
<script>
    $('#btnFormHot').click(function (e){
        e.preventDefault();
        $('#formHot').submit();
    });
</script>
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