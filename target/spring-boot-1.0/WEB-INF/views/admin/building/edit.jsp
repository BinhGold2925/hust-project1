<%--
  Created by IntelliJ IDEA.
  User: Binh Gold
  Date: 21/11/2025
  Time: 5:41 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="buildingAPI" value="/api/building"/>
<html>
<head>
    <title>Thêm Tòa Nhà</title>
</head>
<body>

    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try { ace.settings.check('breadcrumbs', 'fixed') } catch (e) { }
                </script>
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Home</a>
                    </li>
                    <li class="active">Sửa Hoặc Thêm Tòa Nhà</li>
                </ul><!-- /.breadcrumb -->
            </div>

            <div class="page-content" style="background: #f4f7fa; padding: 8px 50px 24px 20px;">
                <div class="page-header" >
                    <h1 style="color: #2C3E50;font-weight: 600;font-size: 24px;">Thêm toà nhà</h1>
                </div><!-- /.page-header -->

                <div>
                    <form:form modelAttribute="buildingEdit" id="listForm" method="GET" enctype="multipart/form-data">
                        <div class="col-xs-12 building-form" style="background-color: #FEFBF7; border-radius: 10px; margin:12px; padding-top: 15px; border: 1px solid #e0e0e0;  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08); transition: all 0.3s ease;">

                            <div class="form-group">
                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Tên tòa nhà</label>
                                    <div class="col-xs-4">
                                        <form:input class="form-control" path="name"/>
                                    </div>
                                    <div class="col-xs-1"></div>
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Quận</label>
                                    <div class="col-xs-5">
                                        <form:select class="form-control" path="district">
                                            <form:option value="">--Chọn Quận--</form:option>
                                            <form:options items="${district}"/>
                                        </form:select>
                                    </div>
                                </div>
                            </div>
<%--                            <div class="form-group">--%>
<%--                                <div class="col-xs-12" style="margin-bottom: 10px;">--%>
<%--                                    <label class="col-xs-2" style="margin:0; font-size: 20px; font-weight:600;">Quận</label>--%>
<%--                                    <div class="col-xs-10">--%>
<%--                                        <form:select class="form-control" path="district">--%>
<%--                                            <form:option value="">--Chọn Quận--</form:option>--%>
<%--                                            <form:options items="${district}"/>--%>
<%--                                        </form:select>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="form-group">
                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px; ">Phường</label>
                                    <div class="col-xs-4">
                                        <form:input class="form-control" path="ward"/>
                                    </div>
                                    <div class="col-xs-1"></div>
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Đường</label>
                                    <div class="col-xs-5">
                                        <form:input class="form-control" path="street"/>
                                    </div>
                                </div>
                            </div>
<%--                            <div class="form-group">--%>
<%--                                <div class="col-xs-12" style="margin-bottom: 10px;">--%>
<%--                                    <label class="col-xs-2" style="margin:0; font-size: 20px; font-weight:600;">Đường</label>--%>
<%--                                    <div class="col-xs-10">--%>
<%--                                        <form:input class="form-control" path="street"/>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="form-group">
                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Kết Cấu</label>
                                    <div class="col-xs-4">
                                        <form:input class="form-control" path="structure"/>
                                    </div>
                                    <div class="col-xs-1"></div>
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Số tầng hầm</label>
                                    <div class="col-xs-5">
                                        <form:input class="form-control" path="numberOfBasement"/>
                                    </div>
                                </div>
                            </div>
<%--                            <div class="form-group">--%>
<%--                                <div class="col-xs-12" style="margin-bottom: 10px;">--%>
<%--                                    <label class="col-xs-2" style="margin:0; font-size: 20px; font-weight:600;">Số tầng hầm</label>--%>
<%--                                    <div class="col-xs-10">--%>
<%--                                        <form:input class="form-control" path="numberOfBasement"/>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="form-group">
                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Diện tích sàn</label>
                                    <div class="col-xs-4">
                                        <form:input class="form-control" path="floorArea"/>
                                    </div>
                                    <div class="col-xs-1"></div>
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Hướng</label>
                                    <div class="col-xs-5">
                                        <form:input class="form-control" path="direction"/>
                                    </div>
                                </div>
                            </div>
<%--                            <div class="form-group">--%>
<%--                                <div class="col-xs-12" style="margin-bottom: 10px;">--%>
<%--                                    <label class="col-xs-2" style="margin:0; font-size: 20px; font-weight:600;">Hướng</label>--%>
<%--                                    <div class="col-xs-10">--%>
<%--                                        <form:input class="form-control" path="direction"/>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="form-group">
                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Hạng</label>
                                    <div class="col-xs-4">
                                        <form:input class="form-control" path="level"/>
                                    </div>
                                    <div class="col-xs-1"></div>
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Diện tích
                                        thuê</label>
                                    <div class="col-xs-5">
                                        <form:input class="form-control" path="rentArea"/>
                                    </div>
                                </div>
                            </div>
<%--                            <div class="form-group">--%>
<%--                                <div class="col-xs-12" style="margin-bottom: 10px;">--%>
<%--                                    <label class="col-xs-2" style="margin:0; font-size: 20px; font-weight:600;">Diện tích--%>
<%--                                        thuê</label>--%>
<%--                                    <div class="col-xs-10">--%>
<%--                                        <form:input class="form-control" path="rentArea"/>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="form-group">
                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Giá thuê</label>
                                    <div class="col-xs-4">
                                        <form:input class="form-control" path="rentPrice"/>
                                    </div>
                                    <div class="col-xs-1"></div>
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Mô tả giá</label>
                                    <div class="col-xs-5">
                                        <form:input class="form-control" path="rentPriceDescription"/>
                                    </div>
                                </div>
                            </div>
<%--                            <div class="form-group">--%>
<%--                                <div class="col-xs-12" style="margin-bottom: 10px;">--%>
<%--                                    <label class="col-xs-2" style="margin:0; font-size: 20px; font-weight:600;">Mô tả giá</label>--%>
<%--                                    <div class="col-xs-10">--%>
<%--                                        <form:input class="form-control" path="rentPriceDescription"/>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="form-group">
                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Phí dịch vụ</label>
                                    <div class="col-xs-4">
                                        <form:input class="form-control" path="serviceFee"/>
                                    </div>
                                    <div class="col-xs-1"></div>
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Phí ô tô</label>
                                    <div class="col-xs-5">
                                        <form:input class="form-control" path="carFee"/>
                                    </div>
                                </div>
                            </div>
<%--                            <div class="form-group">--%>
<%--                                <div class="col-xs-12" style="margin-bottom: 10px;">--%>
<%--                                    <label class="col-xs-2" style="margin:0; font-size: 20px; font-weight:600;">Phí ô tô</label>--%>
<%--                                    <div class="col-xs-10">--%>
<%--                                        <form:input class="form-control" path="carFee"/>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="form-group">
                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Phí mô tô</label>
                                    <div class="col-xs-4">
                                        <form:input class="form-control" path="motoFee"/>
                                    </div>
                                    <div class="col-xs-1"></div>
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Phí ngoài giờ</label>
                                    <div class="col-xs-5">
                                        <form:input class="form-control" path="overtimeFee"/>
                                    </div>
                                </div>
                            </div>
<%--                            <div class="form-group">--%>
<%--                                <div class="col-xs-12" style="margin-bottom: 10px;">--%>
<%--                                    <label class="col-xs-2" style="margin:0; font-size: 20px; font-weight:600;">Phí ngoài giờ</label>--%>
<%--                                    <div class="col-xs-10">--%>
<%--                                        <form:input class="form-control" path="overtimeFee"/>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="form-group">
                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Tiền điện</label>
                                    <div class="col-xs-4">
                                        <form:input class="form-control" path="electricityFee"/>
                                    </div>
                                    <div class="col-xs-1"></div>
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 0 0 5px;">Thời gian
                                        thuê</label>
                                    <div class="col-xs-5">
                                        <form:input class="form-control" path="rentTime"/>
                                    </div>
                                </div>
                            </div>
                            <!-- <di class="form-group">
                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                    <label class="col-xs-3" style="margin:0; font-size: 20px;">Đặt cọc</label>
                                    <div class="col-xs-9">
                                        <input type="number" class="form-control">
                                    </div>
                                </div>
                            </di> -->
                            <!-- <di class="form-group">
                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                    <label class="col-xs-3" style="margin:0; font-size: 20px;">Thanh toán</label>
                                    <div class="col-xs-9">
                                        <input type="number" class="form-control">
                                    </div>
                                </div>
                            </di> -->
<%--                            <div class="form-group">--%>
<%--                                <div class="col-xs-12" style="margin-bottom: 10px;">--%>
<%--                                    <label class="col-xs-2" style="margin:0; font-size: 20px; font-weight:600;">Thời gian--%>
<%--                                        thuê</label>--%>
<%--                                    <div class="col-xs-10">--%>
<%--                                        <form:input class="form-control" path="rentTime"/>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <!-- <di class="form-group">
                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                    <label class="col-xs-3" style="margin:0; font-size: 20px;">Thời gian trang
                                        trí</label>
                                    <div class="col-xs-9">
                                        <input type="datetime" class="form-control">
                                    </div>
                                </div>
                            </di> -->
                            <div class="form-group">
                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Tên quản lý</label>
                                    <div class="col-xs-4">
                                        <form:input class="form-control" path="managerName"/>
                                    </div>
                                    <div class="col-xs-1"></div>
                                    <label class="col-xs-1" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">SDT quản lý</label>
                                    <div class="col-xs-5">
                                        <form:input class="form-control" path="managerPhone" />
                                    </div>
                                </div>
                            </div>
<%--                            <di class="form-group">--%>
<%--                                <div class="col-xs-12" style="margin-bottom: 10px;">--%>
<%--                                    <label class="col-xs-2" style="margin:0; font-size: 20px; font-weight:600;">SDT quản lý</label>--%>
<%--                                    <div class="col-xs-10">--%>
<%--                                        <form:input class="form-control" path="managerPhone" />--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </di>--%>
                            <!-- <di class="form-group">
                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                    <label class="col-xs-3" style="margin:0; font-size: 20px;">Phí môi giới</label>
                                    <div class="col-xs-9">
                                        <input type="number" class="form-control">
                                    </div>
                                </div>
                            </di> -->
                            <div class="form-group">
                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                    <label class="col-xs-2" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Loại tòa nhà</label>
                                    <div class="col-xs-10 checkboxes" style="font-size: 20px; font-weight:600; ">
                                        <form:checkboxes path="typeCode" items="${typeCodes}"/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                    <label class="col-xs-2" style="margin:0; font-size: 20px; font-weight:600; padding: 0 5px;">Hình đại
                                        diện</label>
                                    <input type="file" id="uploadImage" class="col-xs-3" name="image" accept="image/*"
                                           onchange="openImage(this, 'viewImage')"
                                           style="margin:0; font-size: 20px; font-weight:600;"/>
                                    <div class="col-xs-7">
                                        <c:if test="${empty buildingEdit.image}">
                                            <img src="/img/loading.gif" id="viewImage" width="300px" height="300px"
                                                 style="object-fit: cover; border: 1px solid #ccc;">
                                        </c:if>
                                        <c:if test="${not empty buildingEdit.image}">
                                            <img id="viewImage"
                                                 src="${pageContext.request.contextPath}/repository${buildingEdit.image}"
                                                 width="300" height="300"
                                                 style="object-fit:cover;border:1px solid #ccc"/>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <div class="col-xs-2"></div>
                                    <div class="col-xs-10">
                                        <div class="pull-left">
                                            <c:if test="${not empty buildingEdit.id}">
                                                <button class="cssdep" type="button" id="btnAddBuilding" style="border-radius: 10px;">
                                                    <i class="ace-icon glyphicon glyphicon-plus"></i>
                                                    Cập Nhật
                                                </button>
                                                <button class="cssdep" type="button" id="btnCancel" style="border-radius: 10px;">
                                                    <i class="ace-icon glyphicon glyphicon-minus"></i>
                                                    Hủy Thao Tác
                                                </button>
                                            </c:if>
                                            <c:if test="${empty buildingEdit.id}">
                                                <button class="cssdep" type="button" id="btnAddBuilding" style="border-radius: 10px;">
                                                    <i class="ace-icon glyphicon glyphicon-plus"></i>
                                                    Thêm Tòa Nhà
                                                </button>
                                                <button class="cssdep" type="button" id="btnCancel" style="border-radius: 10px;">
                                                    <i class="ace-icon glyphicon glyphicon-minus"></i>
                                                    Hủy Thao Tác
                                                </button>
                                            </c:if>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <form:hidden path="id" id="buildingId"/>


                    </div>
                    </form:form>
                </div>

            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
    <div id="message" style="display:none; font-weight:bold;" class="success-message">
        Thêm thành công!
    </div>

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>

    <script>
        var imageBase64='';
        var imageName='';

        function openImage(input, imageView) {
            if (input.files && input.files[0]) {
                const reader = new FileReader();
                reader.onload = e => {
                    document.getElementById(imageView).src = e.target.result;
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

        $('#btnAddBuilding').click(function (){
            var data = {};
            var typeCode=[];
            var formData = $('#listForm').serializeArray();
            $.each(formData, function (i,v){
                if(v.name!='typeCode'){
                    data["" +v.name + ""]=v.value;
                }else{
                    typeCode.push(v.value);
                }
            });
            if ('' !== imageBase64) {
                data['imageBase64'] = imageBase64;
                data['imageName'] = imageName;
            }
            data['typeCode']=typeCode;
            $('#loading_image').show();
            if(typeCode!=''){
                addOrUpdateBuilding(data);
                console.log("ok");
            }else{
                window.location.href="<c:url value="/admin/building-edit?typeCode=require"/>";
            }
        });
        $('#uploadImage').change(function () {
            const file = this.files[0];
            if (!file) return;

            const reader = new FileReader();
            reader.onload = e => {
                imageBase64 = e.target.result;
                imageName = file.name;
            };
            reader.readAsDataURL(file);
        });
        function addOrUpdateBuilding(data){
            $.ajax({
                type: "POST",
                url: "${buildingAPI}",
                data: JSON.stringify(data),
                contentType: "application/json",
                dataType: "JSON",
                success: function (respond){
                    console.log("success");
                    const msg = document.getElementById("message");
                    msg.style.display = "block";

                    // chờ 1.5s rồi reload
                    setTimeout(() => {
                        location.reload();
                    }, 1000);
                },
                error: function (respond){
                    console.log("failed");
                    console.log(respond);
                }
            });
        }
        $('#btnCancel').click(function (){
            window.location.href="/admin/building-list";
        });

    </script>
      <style>
        .checkboxes{
            display: flex;
        }
        .checkboxes span{
            padding-right: 20px;
            display: flex;
            align-items: center;
        }
        .checkboxes span input{
            font-weight: 600;
            margin: 0;
        }
        .checkboxes span label{
            padding-left: 3px;
            margin: 0;
            font-weight:600;
        }
        .main-container:before{
            background-color: #f4f7fa !important;
        }

    </style>
     <style>
    /* 1. Tổng thể thanh Breadcrumbs - Nền Gradient rực rỡ */
    #breadcrumbs.breadcrumbs {
        /* Chạy màu từ Xanh dương sang Tím và Hồng neon */
        background: linear-gradient(90deg, #00d2ff 0%, #3a7bd5 30%, #8e44ad 70%, #ff00cc 100%) !important;
        border: none !important;
        padding: 0 25px !important;
        min-height: 55px !important; /* Tăng độ cao cho màu sắc tỏa ra đẹp hơn */
        display: flex !important;
        align-items: center !important;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        position: relative;
        overflow: hidden;
    }

    /* Hiệu ứng ánh sáng chạy qua nền (Glossy effect) */
    #breadcrumbs.breadcrumbs::after {
        content: '';
        position: absolute;
        top: 0; left: -100%;
        width: 100%; height: 100%;
        background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
        transition: 0.5s;
        animation: lightSweep 4s infinite;
    }

    @keyframes lightSweep {
        100% { left: 100%; }
    }

    /* 2. Danh sách điều hướng */
    .breadcrumb {
        margin: 0 !important;
        padding: 0 !important;
        background: transparent !important;
        display: flex !important;
        align-items: center !important;
        position: relative;
        z-index: 1; /* Nổi trên lớp hiệu ứng ánh sáng */
    }

    /* 3. Chữ và Icon - Chuyển sang màu Trắng để nổi trên nền lèo loẹt */
    .breadcrumb > li {
        display: flex !important;
        align-items: center !important;
        font-size: 15px !important;
        font-weight: 600 !important;
        color: rgba(255, 255, 255, 0.8) !important;
        text-shadow: 0 2px 4px rgba(0,0,0,0.3);
    }

    /* 4. Link Home - Màu Vàng Neon rực rỡ */
    .breadcrumb > li > a {
        color: #f1c40f !important; /* Vàng chanh rực rỡ */
        text-transform: uppercase;
        letter-spacing: 1px;
        transition: all 0.3s ease;
    }

    .breadcrumb > li > a:hover {
        color: #ffffff !important;
        transform: scale(1.1);
        text-decoration: none !important;
    }

    /* Icon Ngôi nhà */
    .home-icon {
        color: #f1c40f !important;
        margin-right: 8px !important;
        font-size: 18px !important;
        filter: drop-shadow(0 0 5px rgba(241, 196, 15, 0.8));
    }

    /* 5. Dấu phân cách - Màu trắng tinh */
    .breadcrumb > li + li::before {
        content: "\f105" !important;
        font-family: FontAwesome;
        color: #ffffff !important;
        font-size: 20px !important;
        font-weight: bold;
        padding: 0 15px !important;
    }

    /* 6. Mục đang hoạt động (Active) - Màu Xanh Neon */
    .breadcrumb > li.active {
        color: #00ffcc !important; /* Xanh ngọc neon cực sáng */
        text-transform: uppercase;
        background: rgba(255, 255, 255, 0.1);
        padding: 5px 12px;
        border-radius: 20px;
        border: 1px solid rgba(255, 255, 255, 0.3);
    }
</style>
<style>
.success-message {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);

    background: linear-gradient(135deg, #4facfe, #00f2fe);
    color: #ffffff;
    padding: 22px 45px;
    border-radius: 12px;

    font-size: 20px;
    font-weight: 600;
    letter-spacing: 0.5px;

    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.25);

    display: none;
    z-index: 9999;
}
</style>
<style>
.building-form .form-control {
    border-radius: 14px !important;
    border: 1px solid #dcdcdc !important;
    font-size: 16px;
    box-shadow: none !important;
    font-weight: 600;
}
.building-form .form-control:focus {
    border-color: #4facfe !important;
    box-shadow: 0 0 8px rgba(79, 172, 254, 0.4) !important;
}
</style>
<style>
    .sidebar.menu-min .sidebar-shortcuts {
        z-index: 100;
    }
    .cssdep {
        font-weight: 600;
        text-shadow: 0 0 6px rgba(255, 255, 255, 0.6);
        border: 1px solid rgba(255, 255, 255, 0.3);
        border-radius: 15px;
        box-shadow: 0 0 8px rgba(0, 245, 255, 0.6), inset 0 0 6px rgba(255, 255, 255, 0.2);
        transition: all 0.3s ease;
        background: linear-gradient(135deg, #00f5ff, #a855f7);
        padding: 8px 20px;
        color: #000000 !important;
        font-size: 15px;
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
</style>


</body>
</html>
