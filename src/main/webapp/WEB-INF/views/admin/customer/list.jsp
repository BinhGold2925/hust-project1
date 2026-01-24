<%--
  Created by IntelliJ IDEA.
  User: Binh Gold
  Date: 23/01/2026
  Time: 5:41 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Danh sách khách hàng</title>
</head>
<body>
<div class="main-content" style="background: #FEFBF7; ">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Home</a>
                </li>
                <li class="active">Danh sách khách hàng</li>
            </ul><!-- /.breadcrumb -->
        </div>

        <div class="page-content" style="background: #FEFBF7; ">
            <div class="page-header">
                <h1>
                    Danh sách khách hàng
                </h1>
            </div><!-- /.page-header -->

            <div class="row" style="margin-top: 25px;">
                <div class="col-xs-12">
                    <table id="tableList" class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr style="background: #FFF0E5; font-size:16px;">
                            <th class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace">
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th>Tên khách hàng</th>
                            <th>Số điện thoại</th>
                            <th>Email</th>
                            <th>Ghi chú</th>
                            <th>Thao Tác</th>
                        </tr>
                        </thead>

                        <tbody style="background-color: #FEFBF7;">
                        <c:forEach var="item" items="${customerList}">
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace" name="checkList" value="${item.id}">
                                        <span class="lbl"></span>
                                    </label>
                                </td>
                                <td>${item.fullname}</td>
                                <td>${item.phone}</td>
                                <td>${item.email}</td>
                                <td>${item.note}</td>
                                <td>
                                    <div class="hidden-sm hidden-xs btn-group"
                                         style="display:flex; justify-content: center;">
                                        <button class="btn btn-xs btn-success" title="Giao Khách Hàng"
                                                onclick="assingmentBuilding()">
                                            <i class="ace-icon glyphicon glyphicon-align-justify"></i>
                                        </button>

                                        <a class="btn btn-xs btn-info" title="Update"
                                           href="/admin/building-edit">
                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                        </a>

                                        <button class="btn btn-xs btn-danger" title="Xóa Khách Hàng"
                                                onclick="deleteBuilding()">
                                            <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div><!-- /.span -->
            </div>
        </div><!-- /.page-content -->
    </div>
</div><!-- /.main-content -->

</script>
<style>

    .table-striped>tbody>tr:nth-child(odd) {
        background-color: #FEFBF7;
    }
    .table-striped>tbody>tr:nth-child(even) {
        background-color: #FEFBF7;
    }
    /* 1. Tổng thể nền và Font chữ */
    body, .main-content, .page-content {
        background-color: #F8F9FA !important; /* Xám nhạt hiện đại */
        font-family: 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
    }

    /* 2. Làm đẹp Breadcrumbs */
    .breadcrumb {
        background-color: transparent;
        padding: 15px 0;
    }

    /* 3. Tiêu đề trang */
    .page-header h1 {
        color: #2C3E50;
        font-weight: 600;
        font-size: 24px;
    }

    /* 4. Widget Box (Khu vực Tìm Kiếm) */
    .widget-box {
        border: 1px solid #e0e0e0;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
        transition: all 0.3s ease;
        border-radius: 12px;
        overflow: hidden;
        margin-bottom: 25px;
    }

    .widget-header {
        background: #FFF0E5 !important; /* Màu cam nhạt bạn đã chọn */
        border-bottom: 1px solid #FFE0CC;
        padding: 10px 20px 5px 20px;
    }

    .widget-title {
        color: #D35400 !important;
        font-weight: bold;
        text-transform: uppercase;
        letter-spacing: 1px;
        font-size: 20px;
    }

    /* 5. Form Input và Label */
    .form-control, select, input[type="text"] {
        border-radius: 8px !important;
        border: 1px solid #DCE1E5;
        height: 38px;
        transition: all 0.3s;
    }

    .form-control:focus {
        border-color: #E67E22;
        box-shadow: 0 0 0 3px rgba(230, 126, 34, 0.1);
    }

    label.name {
        font-weight: 600;
        color: #546E7A;
        margin-bottom: 5px;
        margin-top: 10px;
    }

    /* 6. Checkbox group */
    .checkboxes label {
        margin-right: 15px;
        font-weight: 400;
    }

    /* 7. Nút bấm (Buttons) */
    .btn {
        border-width: 0;
        font-weight: 600;
        padding: 8px 20px;
        transition: transform 0.2s, box-shadow 0.2s;
    }

    .btn:hover {
        transform: translateY(-1px);
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }

    .btn-danger { background-color: #E74C3C !important; }
    .btn-success { background-color: #2ECC71 !important; }
    .btn-info { background-color: #3498DB !important; }

    /* 8. Làm đẹp Bảng (Table) */
    #tableList {
        background-color: white;
        border-radius: 12px !important;
        border-collapse: separate !important; /* Thay collapse bằng separate để hiện border-radius */
        border-spacing: 0; /* Giúp các ô vẫn khít nhau như collapse */
        overflow: hidden;
        border: 1px solid #DCE1E5;
        box-shadow: 0 4px 12px rgba(0,0,0,0.05);
        width: 100%;
    }

    #tableList thead tr {
        background: #FFF0E5 !important;
    }

    #tableList thead th {
        border-bottom: 1px solid #FFE0CC !important;
        border-right: 1px solid #FFE0CC !important; /* Kẻ dọc cho tiêu đề */
        color: #D35400;
        text-align: center;
        padding: 12px 8px;
    }

    #tableList tbody td {
        vertical-align: middle;
        border-bottom: 1px solid #F1F1F1 !important;
        border-right: 1px solid #F1F1F1 !important; /* Kẻ dọc cho nội dung */
        padding: 10px 8px;
    }

    /* Xóa đường kẻ bên phải của cột cuối cùng để không bị dày viền bảng */
    #tableList th:last-child,
    #tableList td:last-child {
        border-right: none !important;
    }

    /* Xóa đường kẻ dưới cùng của hàng cuối cùng để không đè lên góc bo */
    #tableList tbody tr:last-child td {
        border-bottom: none !important;
    }

    /* Bo góc thủ công cho các ô ở 4 góc để màu nền không đè lên góc bo của bảng */
    #tableList thead tr:first-child th:first-child {
        border-top-left-radius: 12px;
    }
    #tableList thead tr:first-child th:last-child {
        border-top-right-radius: 12px;
    }
    #tableList tbody tr:last-child td:first-child {
        border-bottom-left-radius: 12px;
    }
    #tableList tbody tr:last-child td:last-child {
        border-bottom-right-radius: 12px;
    }

    /* 9. Nhóm nút thao tác trong bảng */
    .btn-group .btn {
        margin: 0 3px;
        border-radius: 50% !important; /* Nút tròn nhỏ chuyên nghiệp */
        width: 30px;
        height: 30px;
        padding: 0;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .main-content .checkboxes{
        display: flex;
    }
    .main-content .checkboxes span{
        padding-right: 20px;
        display: flex;
        align-items: center;
    }
    .main-content .checkboxes span input{
        margin: 0;
    }
    .main-content .checkboxes span label{
        padding-left: 3px;
        margin: 0;
    }
    .main-container:before{
        background-color: #f4f7fa !important;
    }
    .page-content {
        background-color: #f4f7fa !important; /* Màu nền sang trọng hơn */

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
    /* =========================
   CĂN MODAL RA GIỮA MÀN HÌNH
========================= */
    #assingmentBuildingModal .modal-dialog {
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        margin: 0;
        width: 600px;
        max-width: 90%;
    }

    /* =========================
       MODAL CONTENT
    ========================= */
    #assingmentBuildingModal .modal-content {
        border-radius: 12px;
        border: none;
        box-shadow: 0 20px 50px rgba(0, 0, 0, 0.35);
        overflow: hidden; /* 🔥 QUAN TRỌNG */
    }

    /* =========================
       HEADER
    ========================= */
    #assingmentBuildingModal .modal-header {
        background: linear-gradient(135deg, #4facfe, #00f2fe);
        color: #ffffff;
        border-radius: 12px 12px 0 0;
        border-bottom: none;
        padding: 15px 20px;
    }

    #assingmentBuildingModal .modal-title {
        font-weight: 600;
        font-size: 18px;
    }

    #assingmentBuildingModal .close {
        color: #ffffff;
        opacity: 1;
    }

    /* =========================
       BODY
    ========================= */
    #assingmentBuildingModal .modal-body {
        padding: 20px;
        background: #ffffff;
    }

    /* =========================
       TABLE
    ========================= */
    #staffList th {
        background-color: #f5f7fa;
        text-align: center;
        font-weight: 600;
    }
    #staffList {
        margin: 0;
    }


    #staffList td {
        text-align: center;
        vertical-align: middle;
    }

    #staffList tbody tr:hover {
        background-color: #f0f8ff;
    }

    #staffList input[type="checkbox"] {
        transform: scale(1.2);
        cursor: pointer;
    }

    /* =========================
       FOOTER
    ========================= */
    #assingmentBuildingModal .modal-footer {
        text-align: center;
        padding: 18px;
        border-top: none;

        background: #f5f8fb;
        border-radius: 0 0 12px 12px; /* 🔥 BO TRÒN ĐÁY */
    }

    #btnassingmentBuilding {
        background: linear-gradient(135deg, #4facfe, #00f2fe);
        color: #ffffff;
        border: none;
        border-radius: 20px;
        padding: 8px 25px;
        font-weight: 500;
    }

    #btnassingmentBuilding:hover {
        opacity: 0.9;
    }

    #assingmentBuildingModal .btn-default {
        border-radius: 20px;
        padding: 8px 25px;
    }

    /* =========================
       HIỆU ỨNG MỞ MODAL
    ========================= */
    #assingmentBuildingModal.fade .modal-dialog {
        animation: zoomInModal 0.3s ease;
    }

    @keyframes zoomInModal {
        from {
            opacity: 0;
            transform: translate(-50%, -60%) scale(0.9);
        }
        to {
            opacity: 1;
            transform: translate(-50%, -50%) scale(1);
        }
    }

    /* =========================
       CĂN TABLE RA GIỮA
    ========================= */
    #staffList {
        width: 80%;
        margin: 0 auto;              /* 🔥 căn giữa table */
        background: #ffffff;
        border-radius: 8px;
        overflow: hidden;
    }

    /* =========================
       HEADER TABLE
    ========================= */
    #staffList thead th {
        background: #f7f9fc;
        color: #555;
        font-weight: 600;
        text-align: center;
        vertical-align: middle;
        padding: 10px;
    }

    /* =========================
       BODY TABLE
    ========================= */
    #staffList tbody td {
        text-align: center;
        vertical-align: middle;
        padding: 10px;
        font-size: 14px;
    }

    /* =========================
       HÀNG – HIỆU ỨNG HOVER
    ========================= */
    #staffList tbody tr {
        transition: background-color 0.2s ease;
    }

    #staffList tbody tr:hover {
        background-color: #f0f8ff;
    }

    /* =========================
       CHECKBOX
    ========================= */
    #staffList input[type="checkbox"] {
        transform: scale(1.3);
        cursor: pointer;
    }

    /* =========================
       GIÃN KHOẢNG BODY
    ========================= */
    #assingmentBuildingModal .modal-body {
        padding: 25px 20px;
    }
    #staffList thead tr th {
        background-color: #FFF0E5;
        font-weight: 600;
    }

</style>
</body>
</html>
