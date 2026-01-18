<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="buildingListUrl" value="/admin/building-list"/>
<c:url var="buildingAPI" value="/api/building"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>
        <%--<spring:message code="label.user.list"/>--%>
        Danh sách tòa nhà
    </title>
</head>
<body>

    <div class="main-content" style="background: #FEFBF7; ">
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
                    <li class="active">Quản Lý Tòa Nhà</li>
                </ul><!-- /.breadcrumb -->
            </div>

            <div class="page-content" style="background: #FEFBF7; ">
                <div class="page-header">
                    <h1>
                        Danh sách toà nhà
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12 ui-sortable">
                        <div class="widget-box ui-sortable-handle">
                            <div class="widget-header" style="background: #FFF0E5;">
                                <h5 class="widget-title">Tìm Kiếm</h5>
                                <div class="widget-toolbar">

                                    <a href="#" data-action="collapse">
                                        <i class="ace-icon fa fa-chevron-up"></i>
                                    </a>
                                </div>
                            </div>

                            <div class="widget-body" style="background: #FEFBF7; ">
                                <div class="widget-main">
                                    <form:form id="listForm" action="${buildingListUrl}" method="GET" modelAttribute="modelSearch">
                                        <div class="row">
                                            <div class="form-group">
                                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                                    <div class="col-xs-6">
                                                        <label class="name">Tên tòa nhà</label>
<%--                                                        <input type="text" class="form-control" name="name" value="${modelSearch.name}">--%>
                                                        <form:input cssClass="form-control input-radius" path="name"/>
                                                    </div>
                                                    <div class="col-xs-6">
                                                        <label class="name">Diện tích sàn</label>
                                                        <form:input cssClass="form-control input-radius" path="floorarea"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                                    <div class="col-xs-2">
                                                        <label class="name">Quận hiện có</label>
                                                        <form:select class="form-control" path="district">
                                                            <form:option value="">--Chọn Quận--</form:option>
                                                            <form:options items="${district}"/>
                                                        </form:select>
                                                    </div>
                                                    <div class="col-xs-5">
                                                        <label class="name">Phường</label>
                                                        <form:input class="form-control" path="ward"/>
                                                    </div>
                                                    <div class="col-xs-5">
                                                        <label class="name">Đường</label>
                                                        <form:input class="form-control" path="street"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                                    <div class="col-xs-4">
                                                        <label class="name">Số tầng hầm</label>
                                                        <form:input class="form-control" path="numberofbasement"/>
                                                    </div>
                                                    <div class="col-xs-4">
                                                        <label class="name">Hướng</label>
                                                        <form:input class="form-control" path="direction"/>
                                                    </div>
                                                    <div class="col-xs-4">
                                                        <label class="name">Hạng</label>
                                                        <form:input class="form-control" path="level"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                                    <div class="col-xs-3">
                                                        <label class="name">Diện tích từ</label>
                                                        <form:input class="form-control" path="areafrom"/>
                                                    </div>
                                                    <div class="col-xs-3">
                                                        <label class="name">Diện tích đến</label>
                                                        <form:input class="form-control" path="areato"/>
                                                    </div>
                                                    <div class="col-xs-3">
                                                        <label class="name">Giá thuê từ</label>
                                                        <form:input class="form-control" path="rentpricefrom"/>
                                                    </div>
                                                    <div class="col-xs-3">
                                                        <label class="name">Giá thuê đến</label>
                                                        <form:input class="form-control" path="rentpriceto" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                                    <div class="col-xs-4">
                                                        <label class="name">Tên quản lý</label>
                                                        <form:input class="form-control" path="managername"/>
                                                    </div>
                                                    <div class="col-xs-4">
                                                        <label class="name">Điện thoại quản lý</label>
                                                        <form:input class="form-control" path="managerphone"/>
                                                    </div>
                                                    <div class="col-xs-4">
                                                        <label class="name">Chọn nhân viên phụ trách</label>
                                                        <form:select class="form-control" path="staffid">
                                                            <form:option value="">--Chọn nhân viên--</form:option>
                                                            <form:options items="${listStaffs}"/>
                                                        </form:select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-xs-12" style="margin-bottom: 10px;">
                                                    <div class="col-xs-6 checkboxes">
                                                        <form:checkboxes path="type" items="${typeCodes}"/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <div class="col-xs-6">
                                                        <button class="btn btn-danger" id="btnSearchBuilding" style="border-radius: 10px;">Tìm
                                                            Kiếm</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form:form>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="pull-right">
                            <a href='/admin/building-edit'>
                                <button class="btn btn-success" style="border-radius: 10px;">
                                    <i class="ace-icon glyphicon glyphicon-plus"></i>
                                    Thêm Tòa Nhà
                                </button>
                            </a>
                            <button class="btn btn-danger" id="btnDeleteBuilding" style="border-radius: 10px;">
                                <i class="ace-icon glyphicon glyphicon-minus"></i>
                                Xóa Toàn Bộ
                            </button>
                        </div>
                    </div>
                </div>

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
                                <th>Tên tòa nhà</th>
                                <th>Địa chỉ</th>
                                <th>Số Tầng Hầm</th>
                                <th>Tên quản lý</th>
                                <th>Số điện thoại</th>
                                <th>DT sàn</th>
                                <th>DT trống</th>
                                <th>DT thuê</th>
                                <th>Phí dịch vụ</th>
                                <th>Phí môi giới</th>
                                <th>Thao Tác</th>
                            </tr>
                            </thead>

                            <tbody style="background-color: #FEFBF7;">
                            <c:forEach var="item" items="${buildingList}">
                                <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace" name="checkList" value="${item.id}">
                                        <span class="lbl"></span>
                                    </label>
                                </td>
                                <td>${item.name}</td>
                                <td>${item.address}</td>
                                <td>${item.numberOfBasement}</td>
                                <td>${item.managerName}</td>
                                <td>${item.managerPhone}</td>
                                <td>${item.floorArea}</td>
                                <td>${item.emptyArea}</td>
                                <td>${item.rentArea}</td>
                                <td>${item.serviceFee}</td>
                                <td>${item.brokerageFee}</td>
                                <td>
                                    <div class="hidden-sm hidden-xs btn-group"
                                         style="display:flex; justify-content: center;">
                                        <button class="btn btn-xs btn-success" title="Giao Tòa Nhà"
                                                onclick="assingmentBuilding(${item.id})">
                                            <i class="ace-icon glyphicon glyphicon-align-justify"></i>
                                        </button>

                                        <a class="btn btn-xs btn-info" title="Update" href="/admin/building-edit-${item.id}">
                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                        </a>

                                        <button class="btn btn-xs btn-danger" title="Xóa Tòa Nhà" onclick="deleteBuilding(${item.id})">
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

    <div class="modal fade" id="assingmentBuildingModal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Danh Sách Nhân Viên</h4>
                </div>
                <div class="modal-body">
                    <table id="staffList" class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th class="center">Chọn</th>
                            <th class="center">Tên Nhân Viên</th>
                        </tr>
                        </thead>
                        <tbody class="center">
                        </tbody>
                    </table>
                    <input type="hidden" id="buildingId" name="building" value="">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" id="btnassingmentBuilding">Giao Tòa Nhà</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>
    <div id="message" style="display:none; font-weight:bold;" class="success-message">
        Xóa thành công!
    </div>
    <div id="messages" style="display:none; font-weight:bold;" class="success-message">
        Giao thành công!
    </div>


    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
    <script>
        function assingmentBuilding(buildingId) {
            $('#assingmentBuildingModal').modal();
            loadStaff(buildingId);
            $('#buildingId').val(buildingId);
        }
        function loadStaff(buildingId){
            $.ajax({
                type: "GET",
                url: "${buildingAPI}/"+buildingId+'/staffs',
                dataType: "json",
                success: function (response){
                    var row='';
                    $.each(response.data, function (index, item){
                        row+='<tr>';
                        row+='<td class="center"><input type="checkbox" value="'+item.staffId+'" '+item.checked +'></td>';
                        row+='<td class="center">'+item.fullName +'</td>'

                        row+='</tr>';
                    });
                    $('#staffList tbody').html(row);
                    console.log("success");
                },
                error: function (response){
                    console.log("failed");
                    window.location.href="<c:url value="/admin/building-list?message=error"/>";
                    console.log(response);
                }
            });
        }
        $('#btnassingmentBuilding').click(function(e){
            e.preventDefault();
            var data ={};
            data['buildingId'] = $('#buildingId').val();
            var staffs =$('#staffList').find('tbody input[type=checkbox]:checked').map(function (){
                return $(this).val();
            }).get();
            data['staffs'] =staffs;
            if(data['staffs'].length > 0){
                assignmentBuilding(data);
                console.log("da vao");
            }
            console.log("OK");
        });
        function assignmentBuilding(data){
            $.ajax({
                type: "POST",
                url: "${buildingAPI}/assignment",
                data: JSON.stringify(data),
                contentType: "application/json",
                //dataType: "json",
                success: function (response){
                    console.log("success");
                    const msg = document.getElementById("messages");
                    msg.style.display = "block";

                    // chờ 1.5s rồi reload
                    setTimeout(() => {
                        location.reload();
                    }, 1500);
                },
                error: function (response){
                    console.info("failed");
                    console.log(response);
                    window.location.href="<c:url value="/admin/building-list?message=err"/>";

                }
            });
        }


        $('#btnSearchBuilding').click(function (e){
            e.preventDefault();
            $('#listForm').submit();
        });

        function deleteBuilding(id){
            var buildingId =[id];
            deleteBuildings(buildingId);
        }
        $('#btnDeleteBuilding').click(function(e){
            e.preventDefault();
            var buildingIds =$('#tableList').find('tbody input[type=checkbox]:checked').map(function (){
                return $(this).val();
            }).get();
            deleteBuildings(buildingIds);
        });
        function deleteBuildings(data){
            $.ajax({
                type: "Delete",
                url: "${buildingAPI}",
                data: JSON.stringify(data),
                contentType: "application/json",
                dataType: "json",
                success: function (respond){
                    console.log("success");
                    const msg = document.getElementById("message");
                    msg.style.display = "block";

                    // chờ 1.5s rồi reload
                    setTimeout(() => {
                        location.reload();
                    }, 1500);
                },
                error: function (respond){
                    console.log("failed");
                    console.log(respond);
                }
            });
        }

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

<style>
    .sidebar.menu-min .sidebar-shortcuts {
        z-index: 100;
    }
</style>


</body>
</html>
