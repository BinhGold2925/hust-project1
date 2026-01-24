<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaweb.security.utils.SecurityUtils" %>
<nav class="navbar-expand-lg navbar-dark">
	<%--<div class="container">--%>
		<%--<a class="navbar-brand" href="#">Nhóm 1</a>--%>
		<%--<button class="navbar-toggler" type="button" data-toggle="collapse"--%>
			<%--data-target="#navbarResponsive" aria-controls="navbarResponsive"--%>
			<%--aria-expanded="false" aria-label="Toggle navigation">--%>
			<%--<span class="navbar-toggler-icon"></span>--%>
		<%--</button>--%>
		<%--<div class="collapse navbar-collapse" id="navbarResponsive">--%>
			<%--<ul class="navbar-nav ml-auto">--%>
				<%--<li class="nav-item active"><a class="nav-link" href="/trang-chu#">Trang chủ--%>
						<%--<span class="sr-only">(current)</span>--%>
				<%--</a></li>--%>
				<%--<security:authorize access = "isAnonymous()">--%>
					<%--<li class><a class="nav-link" href="<c:url value='/login'/>">Đăng nhập</a></li>--%>
					<%--<li class="nav-item"><a class="nav-link" href="#">Đăng ký</a></li>="nav-item"--%>
				<%--</security:authorize>--%>
				<%--<security:authorize access = "isAuthenticated()">--%>
					<%--<li class="nav-item"><a class="nav-link" href="#"> Xin chào <%=SecurityUtils.getPrincipal().getUsername()%></a></li>--%>
					<%--<li class="nav-item"><a class="nav-link" href="<c:url value='/logout'/>">Thoát</a></li>--%>
				<%--</security:authorize>--%>
			<%--</ul>--%>
		<%--</div>--%>
	<%--</div>--%>




		<div class="row navbar">
			<div class="col-12 col-md-3">
				<div class="logo">
					<a href="">
						<img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/logo.png?1676257083798"
							 alt="">
					</a>
				</div>
			</div>
			<div class="col-12 col-md-6">
				<div class="item-menu">
					<div class="nav nav1">
						<div class="nav-item p-2">
							<a class="nav-item-link" href="/trang-chu">
								<span style="color: var(--primary-color);">Trang chủ</span>
							</a>
						</div>
						<div class="nav-item p-2">
							<a href='<c:url value='/gioi-thieu'/>'>
								<%--<span>Giới thiệu</span>--%>
								<span style="color: var(--primary-color);">Giới thiệu</span>
							</a>
						</div>
						<div class="nav-item p-2">
							<%--<a class="nav-item-link" href="./Duan.html">--%>
							<a href='<c:url value='/san-pham'/>'>
								<%--<span>Sản phẩm</span>--%>
								<span style="color: var(--primary-color);">Sản phẩm</span>
							</a>
						</div>
						<div class="nav-item p-2">
							<a href='<c:url value='/tin-tuc'/>'>
								<%--<span>Tin tức</span>--%>
								<span style="color: var(--primary-color);">Tin tức</span>
							</a>
						</div>
						<div class="nav-item p-2">
							<a href='<c:url value='/lien-he'/>'>
								<%--<span>Liên hệ</span>--%>
									<span style="color: var(--primary-color);">Liên hệ</span>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<%--<li class="nav-item active"><a class="nav-link" href="/trang-chu#">Trang chủ--%>
						<%--<span class="sr-only">(current)</span>--%>
					<%--</a></li>--%>
					<security:authorize access = "isAnonymous()">
						<li class><a class="nav-link" href="<c:url value='/login'/>">Đăng nhập</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Đăng ký</a></li>
					</security:authorize>
					<security:authorize access = "isAuthenticated()">
						<li class="nav-item"><a class="nav-link" href="#"> Xin chào <%=SecurityUtils.getPrincipal().getUsername()%></a></li>
						<li class="nav-item"><a class="nav-link" href="<c:url value='/logout'/>">Thoát</a></li>
					</security:authorize>
				</ul>
			</div>
		</div>
</nav>
<style>
    /* ===== NAVBAR NEON FIXED TOP ===== */
    nav.navbar-expand-lg {
        position: fixed;
        top: 0;
        left: 0;
        padding: 10px;
        margin: 20px;
        width: calc(100% - 40px);
        z-index: 9999;
        border-radius: 40px;
        background: linear-gradient(
                270deg,
                #00f5ff,
                #00ff85,
                #a855f7,
                #00f5ff
        );
        background-size: 600% 600%;
        animation: neonFlow 8s ease infinite;

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

    /* ===== ROW NAVBAR ===== */
    nav .row.navbar {
        align-items: center;
        padding: 10px 20px;
    }

    /* ===== LOGO ===== */
    nav .logo img {
        max-height: 55px;
    }

    /* ===== MENU ===== */
    .item-menu .nav {
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .item-menu .nav-item a {
        text-decoration: none;
        padding: 8px 14px;
        border-radius: 10px;
        transition: all 0.3s ease;

    }


    /* ===== TEXT MENU ===== */
    .item-menu .nav-item span {
        color: #000000 !important;
        font-weight: 600;
        text-shadow: 0 0 6px rgba(255, 255, 255, 0.6);
    }
    .item-menu .nav-item span:hover{
        color: #00f5ff !important;
    }

    /* ===== HOVER MENU ===== */
    .item-menu .nav-item a:hover {
        color: #00f5ff !important;
        background: rgba(0, 0, 0, 0.55);
        box-shadow:
                0 0 14px rgba(168, 85, 247, 0.9),
                0 0 28px rgba(0, 245, 255, 0.8);
        transform: translateY(-2px);
    }

    /* ===== LOGIN / USER ===== */
    .navbar-nav .nav-link {
        font-weight: 600;
        text-shadow: 0 0 6px rgba(255, 255, 255, 0.6);
        color: #000000 !important;
        border: 1px solid rgba(255, 255, 255, 0.3);
        border-radius: 15px;
        box-shadow: 0 0 8px rgba(0, 245, 255, 0.6), inset 0 0 6px rgba(255, 255, 255, 0.2);
        transition: all 0.3s ease;
        background: linear-gradient(135deg, #00f5ff, #a855f7);
    }

    .navbar-nav .nav-link:hover {
        color: #00f5ff !important;
        background: rgba(0, 0, 0, 0.55);
        box-shadow:
                0 0 14px rgba(168, 85, 247, 0.9),
                0 0 28px rgba(0, 245, 255, 0.8);
    }

    /* ===== ĐẨY NỘI DUNG XUỐNG (QUAN TRỌNG) ===== */


</style>