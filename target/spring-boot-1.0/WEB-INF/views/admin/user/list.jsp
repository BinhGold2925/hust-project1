<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="formUrl" value="/admin/user-list"/>
<c:url var="formAjax" value="/api/user"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>
        <%--<spring:message code="label.user.list"/>--%>
        Danh sách người dùng
    </title>
</head>

<body>
<div class="main-content">
    <form:form modelAttribute="model" action="${formUrl}" id="listForm" method="GET">
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
                        <a href="<c:url value="/admin/home"/>">
                                <%--<spring:message code="label.home"/>--%>
                            Trang chủ
                        </a>
                    </li>
                    <li class="active">
                            <%--<spring:message code="label.user.list"/>--%>
                        Danh sách người dùng
                    </li>
                </ul>
                <!-- /.breadcrumb -->
            </div>
            <div class="page-content" style="background: #FEFBF7;">
                <div class="page-header">
                    <h1>
                        Danh sách khách hàng
                    </h1>
                </div><!-- /.page-header -->
                <div class="row">
                    <div class="col-xs-12">
                        <c:if test="${messageResponse!=null}">
                            <div class="alert alert-block alert-${alert}">
                                <button type="button" class="close" data-dismiss="alert">
                                    <i class="ace-icon fa fa-times"></i>
                                </button>
                                    ${messageResponse}
                            </div>
                        </c:if>
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="widget-box table-filter">
                                    <div class="widget-header" style="background: #FFF0E5;">
                                        <h4 class="widget-title">
                                                <%--<spring:message code="label.search"/>--%>
                                            Tìm kiếm
                                        </h4>
                                        <div class="widget-toolbar">
                                            <a href="#" data-action="collapse">
                                                <i class="ace-icon fa fa-chevron-up"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="widget-body" style="background: #FEFBF7;">
                                        <div class="widget-main">
                                            <div class="form-horizontal">
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label">
                                                            <%--<spring:message code="label.search.value"/>--%>
                                                        Giá trị cần tìm
                                                    </label>
                                                    <div class="col-sm-8">
                                                        <div class="fg-line">
                                                            <form:input path="searchValue" cssClass="form-control input-sm"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label"></label>
                                                    <div class="col-sm-8">
                                                        <button id="btnSearch" type="button"
                                                                class="btn-sm cssdep">
                                                                <%--spring:message code="label.search"/>--%>
                                                            Tìm kiếm
                                                            <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="table-btn-controls">
                                    <div class="pull-right tableTools-container">
                                        <div class="dt-buttons btn-overlap btn-group">
                                            <a flag="info"
                                               class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
                                               data-toggle="tooltip"
                                                <%--title='<spring:message code="label.user.add"/>'--%>
                                               title="Thêm người dùng"
                                               href='<c:url value="/admin/user-edit"/>'>
															<span style="font-size: 25px;">
																<i class="fa fa-plus-circle bigger-110 purple"></i>
															</span>
                                            </a>
                                            <button id="btnDelete" type="button" disabled
                                                    class="dt-button buttons-html5 btn btn-white btn-primary btn-bold"
                                                    data-toggle="tooltip"
                                                    title="Xóa bài viết" onclick="warningBeforeDelete()">
															<span style="font-size: 25px;">
																<i class="fa fa-trash-o bigger-110 pink"></i>
															</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="table-responsive" style="text-align: center;">
                                    <display:table name="model.listResult" cellspacing="0" cellpadding="0"
                                                   requestURI="${formUrl}" partialList="true" sort="external"
                                                   size="${model.totalItems}" defaultsort="2" defaultorder="ascending"
                                                   id="tableList" pagesize="${model.maxPageItems}"
                                                   export="false"
                                                   class="table table-fcv-ace table-striped table-bordered table-hover dataTable no-footer"
                                                   style="margin: 3em 0 1.5em;">
                                        <display:column title="<fieldset class='form-group'>
												        <input type='checkbox' id='checkAll' class='check-box-element'>
												        </fieldset>" class="center select-cell"
                                                        headerClass="center select-cell">
                                            <fieldset>
                                                <input type="checkbox" name="checkList" value="${tableList.id}"
                                                       id="checkbox_${tableList.id}" class="check-box-element"/>
                                            </fieldset>
                                        </display:column>
                                        <display:column headerClass="text-left" property="userName" title="Tên"/>
                                        <display:column headerClass="text-left" property="fullName" title="full name"/>
                                        <display:column headerClass="col-actions" title="Thao tác">
                                            <c:if test="${tableList.roleCode != 'MANAGER'}">
                                                <a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
                                                   title="Cập nhật người dùng"
                                                   href='<c:url value="/admin/user-edit-${tableList.id}"/>'>
                                                    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                </a>
                                            </c:if>
                                            <c:if test="${tableList.roleCode == 'MANAGER'}">
                                                <p>Không đươc thao tác</p>
                                            </c:if>
                                        </display:column>
                                    </display:table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form:form>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        var someJsVar = "<c:out value='${addOrEditNews}'/>";
        $('#btnSearch').click(function () {
            $('#listForm').submit();
        });
    });

    function warningBeforeDelete() {
        showAlertBeforeDelete(function () {
            event.preventDefault();
            var dataArray = $('tbody input[type=checkbox]:checked').map(function () {
                return $(this).val();
            }).get();
            deleteUser(dataArray);
        });
    }

    function deleteUser(data) {
        $.ajax({
            url: '${formAjax}/',
            type: 'DELETE',
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function (res) {
                window.location.href = "<c:url value='/admin/user-list?message=delete_success'/>";
            },
            error: function (res) {
                console.log(res);
                window.location.href = "<c:url value='/admin/user-list?message=error_system'/>";
            }
        });
    }
</script>
<style>
    .table-responsive thead tr{
        background: #FFF0E5;
    }
    .table-responsive tbody tr{
        background: #F5F5F5;
    }
    .main-container:before{
        background: #FEFBF7;
    }
</style>
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
        margin-right: 15px;
        border-radius: 50% !important; /* Nút tròn nhỏ chuyên nghiệp */
        width: 50px;
        height: 50px;
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