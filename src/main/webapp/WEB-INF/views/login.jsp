<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập</title>
</head>
<body>
	<div class="container">
		<!-- <h1 class="form-heading">login Form</h1> -->
		<div class="login-form">
			<div class="main-div">
				<c:if test="${param.incorrectAccount != null}">
					<div class="alert alert-danger">
							Username or password incorrect
					</div>
				</c:if>
				<c:if test="${param.accessDenied != null}">
					<div class="alert alert-danger">
							You Not authorize
					</div>
				</c:if>
				<c:if test="${param.sessionTimeout != null}">
					<div class="alert alert-danger">
							Session Timeout
					</div>
				</c:if>
				<div class="container-fluid" >
					<section class="gradient-custom">
						<div class="page-wrapper">
							<div class="row d-flex justify-content-center align-items-center">
								<div class="col-12 col-md-8 col-lg-6 col-xl-5">
									<div class="card text-white" style="border-radius: 1rem;">
										<div class="card-body p-5">
											<div class="mb-md-5 mt-md-4 pb-5 text-center">
												<h2 class="fw-bold mb-2 text-uppercase">Login</h2>
												<p class="text-white-50 mb-5">Please enter your login and password!</p>
												<form action="j_spring_security_check" id="formLogin" method="post">
												<div class="form-outline form-white mb-4">
													<label class="form-label" for="userName">Email</label>
													<input type="text" class="form-control" id="userName" name="j_username" placeholder="Tên đăng nhập">
												</div>

												<div class="form-outline form-white mb-4">
													<label class="form-label" for="password">Password</label>
													<input type="password" class="form-control" id="password" name="j_password" placeholder="Mật khẩu">
												</div>

												<div class="form-check d-flex justify-content-center mb-5">
													<div><input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg" /></div>
													<div><label class="form-check-label">
                                                        Remember Password
                                                    </label></div>
												</div>

												<p class="small mb-2 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a></p>

												<button type="submit" class="btn btn-primary" >Đăng nhập</button>
												</form>

											</div>
											<div class="text-center">
												<p class="mb-0 tex-center account">Don't have an account? <a href="#!" class="text-white-50 fw-bold">Sign Up</a></p>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
				<%--<script src="./assets/dist/js/boostrap-v5/bootstrap.js"></script>--%>
				<%--<script src="./assets/dist/js/fontawsome-v5/all.js"></script>--%>
			</div>
		</div>
	</div>
    <style>
        /* 1. Hiệu ứng nền động chảy màu */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(-45deg, #ee7752, #f399bc, #23a6d5, #23d5ab);
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
            overflow: hidden;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* 2. Hiệu ứng hiện hình từ từ (Fade-in) cho khung Login */
        .card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 25px !important;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
            animation: fadeIn 1.2s ease-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* 3. Nâng cấp các ô nhập liệu */
        .form-control {
            background: rgba(255, 255, 255, 0.2) !important;
            border: 1px solid rgba(255, 255, 255, 0.3) !important;
            border-radius: 12px;
            color: white !important;
            padding: 12px 20px;
            transition: 0.4s;
        }

        .form-control::placeholder {
            color: rgba(255, 255, 255, 0.7) !important;
        }

        .form-control:focus {
            background: rgba(255, 255, 255, 0.3) !important;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.2);
            transform: scale(1.02);
        }

        /* 4. Nút bấm hiệu ứng Gradient chuyển động */
        .btn-primary {
            background: linear-gradient(90deg, #ff00cc, #3333ff);
            background-size: 200% auto;
            border: none;
            border-radius: 50px;
            padding: 12px 30px;
            font-weight: bold;
            transition: 0.5s;
            width: 100%;
            text-transform: uppercase;
        }

        .btn-primary:hover {
            background-position: right center; /* Di chuyển gradient khi hover */
            box-shadow: 0 10px 20px rgba(0,0,0,0.3);
            transform: translateY(-3px);
        }

        /* 5. Hiệu ứng cho các icon mạng xã hội */
        .login-extension i {
            transition: 0.4s ease;
            padding: 10px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
        }

        .login-extension i:hover {
            background: #fff;
            color: #e73c7e !important;
            transform: rotate(360deg) scale(1.2);
        }

        .text-white-50 { color: rgba(255,255,255,0.7) !important; }
        label { font-weight: 500; margin-bottom: 8px; color: white; }
        /* ===== GHI ĐÈ MÀU XANH CŨ (#35bf76) ===== */

        /* Card login */
        .card {
            background: linear-gradient(
                    135deg,
                    rgba(120, 70, 255, 0.85),
                    rgba(236, 72, 153, 0.85)
            ) !important;
            backdrop-filter: blur(25px);
            border: 1px solid rgba(255, 255, 255, 0.25);
            box-shadow: 0 25px 50px rgba(0, 0, 0, 0.35);
        }

        /* Tiêu đề */
        .card h2 {
            letter-spacing: 3px;
            color: #ffffff;
        }

        /* Input */
        .form-control {
            background: rgba(255, 255, 255, 0.15) !important;
            border: 1px solid rgba(255, 255, 255, 0.35) !important;
        }

        .form-control:focus {
            background: rgba(255, 255, 255, 0.25) !important;
            box-shadow: 0 0 25px rgba(236, 72, 153, 0.6);
        }

        /* Checkbox */
        .form-check-input {
            background-color: transparent;
            border: 1px solid rgba(255,255,255,0.6);
        }

        .form-check-input:checked {
            background-color: #ec4899;
            border-color: #ec4899;
        }

        /* Link */
        a.text-white-50:hover {
            color: #fff !important;
            text-decoration: underline;
        }

        /* Dòng Sign up */
        .account a {
            color: #fff !important;
        }

        .account a:hover {
            color: #ffd6ff !important;
        }
        /* ===== FIX CHECKBOX + TEXT BỊ LỆCH ===== */
        .form-check {
            display: flex !important;
            align-items: center !important;
            justify-content: center;
            gap: 10px;
        }

        /* div bọc checkbox + div bọc text */
        .form-check > div {
            display: flex;
            align-items: center;
        }

        /* checkbox */
        .form-check-input {
            margin: 0 !important;
            width: 18px;
            height: 18px;
        }

        /* text */
        .form-check-label {
            margin: 0;
            line-height: 1;
            font-size: 14px;
        }
        /* ===== FIX KHOẢNG CÁCH CHECKBOX & TEXT ===== */
        .form-check {
            display: flex !important;
            align-items: center !important;
            justify-content: center;
        }

        /* div bọc checkbox */
        .form-check > div:first-child {
            margin-right: 10px;
        }

        /* checkbox */
        .form-check-input {
            margin: 0 !important;
            width: 18px;
            height: 18px;
        }

        /* label */
        .form-check-label {
            margin: 0;
            line-height: 1;
            font-size: 14px;
        }




    </style>
</body>
</html>