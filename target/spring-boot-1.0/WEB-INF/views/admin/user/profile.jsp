<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="formUrl" value="/api/user"/>
<html>
<head>
    <title>Chỉnh sửa người dùng</title>
</head>
<body>
<div class="main-content">
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
                    <a href="#">Trang chủ</a>
                </li>
                <li class="active">Chỉnh sửa người dùng</li>
            </ul><!-- /.breadcrumb -->
        </div>
        <div class="page-content">
            <div class="row">
            <div class="page-header">
                <h1>
                    Thông tin tài khoản
                </h1>
            </div><!-- /.page-header -->
                <div class="col-xs-12">
                    <c:if test="${not empty messageResponse}">
                        <div class="alert alert-block alert-${alert}">
                            <button type="button" class="close" data-dismiss="alert">
                                <i class="ace-icon fa fa-times"></i>
                            </button>
                                ${messageResponse}
                        </div>
                    </c:if>
                    <div id="profile">
                        <form:form id="formEdit" class="form-horizontal" modelAttribute="model">
                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">
                                <%--<spring:message code="label.username"/>--%>
                                    Tên đăng nhập
                            </label>
                            <div class="col-sm-9">
                                <form:input path="userName" id="userName" cssClass="form-control" disabled="true"/>
                            </div>
                        </div>
                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">
                                <%--<spring:message code="label.fullname"/>--%>
                                    Tên đầy đủ
                            </label>
                            <div class="col-sm-9">
                                <form:input path="fullName" id="fullName" cssClass="form-control"/>
                            </div>
                        </div>
                        <!--Btn-->
                        <div class="col-sm-12">
                                <label class="col-sm-3 control-label no-padding-right message-info"></label>
                                <input type="button" class="btn btn-white btn-warning btn-bold"
                                       value="Cập nhật người dùng" id="btnUpdateUser"/>
                        </div>
                        <!--Btn-->
                        <form:hidden path="id" id="userId"/>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $("#btnUpdateUser").click(function (event) {
            event.preventDefault();
            var dataArray = {};
            dataArray["fullName"] = $('#fullName').val();
            if ($('#userId').val() != "") {
                updateInfo(dataArray, $('#userName').val());
            }
        });

        function updateInfo(data, username) {
            $.ajax({
                url: '${formUrl}/profile/' + username,
                type: 'PUT',
                dataType: 'json',
                contentType: 'application/json',
                data: JSON.stringify(data),
                success: function (res) {
                    window.location.href = "<c:url value='/admin/profile/"+res.userName+"?message=update_success'/>";
                },
                error: function (res) {
                    console.log(res);
                    window.location.href = "<c:url value='/admin/profile/"+username+"?message=error_system'/>";
                }
            });
        }
    </script>
</div>
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
    #profile {
        border: 1px solid #e0e0e0;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
        transition: all 0.3s ease;
        border-radius: 12px;
        overflow: hidden;
        margin-bottom: 25px;
    }

    #profile {
        background: #FEFBF7 !important; /* Màu cam nhạt bạn đã chọn */
        border-bottom: 1px solid #FFE0CC;
        padding: 20px 200px 20px 20px;
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
    .sidebar.menu-min .sidebar-shortcuts {
        z-index: 100;
    }
</style>
</body>
</html>
