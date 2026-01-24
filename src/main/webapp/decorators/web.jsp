<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>

	<!-- Bootstrap core CSS -->
	<link href="web/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">

	<!-- Custom styles for this template -->
	<link href="web/css/small-business.css" rel="stylesheet" type="text/css">
    <script type='text/javascript' src="web/assets/js/ace-extra.min.js"></script>
    <script type='text/javascript' src="web/js/2.1.4/jquery.min.js"></script>
    <script type='text/javascript' src="web/assets/sweetalert2/sweetalert2.min.js"></script>
</head>
<body>
	<!-- Navigation -->
	<%@ include file="/common/web/header.jsp" %>

	<dec:body/>

	<!-- Footer -->
	<%@ include file="/common/web/footer.jsp" %>

	<!-- Bootstrap core JavaScript -->
	<script src="web/vendor/jquery/jquery.min.js"></script>
	<script src="web/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <%--jQuery Validation Plugin--%>
    <script src="web/js/jqueryvalidate/jquery.validate.min.js"></script>

    <%--common javascript file--%>
    <script type="text/javascript" src="web/js/global_admin_script.js"></script>

    <script src="web/assets/js/bootstrap.min.js"></script>
    <script src="web/assets/js/jquery-ui.custom.min.js"></script>
    <script src="web/assets/js/jquery.ui.touch-punch.min.js"></script>
    <script src="web/assets/js/jquery.easypiechart.min.js"></script>
    <script src="web/assets/js/jquery.sparkline.min.js"></script>
    <script src="web/assets/js/jquery.flot.min.js"></script>
    <script src="web/assets/js/jquery.flot.pie.min.js"></script>
    <script src="web/assets/js/jquery.flot.resize.min.js"></script>
    <script src="web/assets/js/ace-elements.min.js"></script>
    <script src="web/assets/js/ace.min.js"></script>

    <!-- page specific plugin scripts -->
    <script src="web/assets/js/jquery-ui.min.js"></script>
    <script type="text/javascript">
        function showAlertBeforeDelete(callback) {
            swal({
                title: "Xác nhận xóa",
                text: "Bạn có chắc chắn xóa những dòng đã chọn",
                type: "warning",
                showCancelButton: true,
                confirmButtonText: "Xác nhận",
                cancelButtonText: "Hủy bỏ",
                confirmButtonClass: "btn btn-success",
                cancelButtonClass: "btn btn-danger"
            }).then(function (res) {
                if(res.value){
                    callback();
                }else if(res.dismiss == 'cancel'){
                    console.log('cancel');
                }
            });
        }
    </script>
</body>
</html>