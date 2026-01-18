<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ page import="com.javaweb.security.utils.SecurityUtils" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div id="navbar" class="navbar navbar-default ace-save-state nav-animated-luxury">
    <div class="navbar-container ace-save-state" id="navbar-container">
        <div class="navbar-header pull-left">
            <a href="#" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    Trang quản trị
                </small>
            </a>
        </div>
        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="light-10">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        Xin chào, <%=SecurityUtils.getPrincipal().getFullName()%>
                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>
                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li>
                            <a href="/admin/profile-<%=SecurityUtils.getPrincipal().getUsername()%>">
                                <i class="ace-icon fa fa-user"></i>
                                Thông tin tài khoản
                            </a>
                        </li>
                        <li>
                            <a href="<c:url value="/admin/profile-password"/>">
                                <i class="ace-icon fa fa-key"></i>
                                Đổi mật khẩu
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="<c:url value='/logout'/>">
                                <i class="ace-icon fa fa-power-off"></i>
                                Thoát
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<style>
    /* 1. KHUNG NAVBAR CHÍNH - FIX LỖI LỆCH DÒNG */
    #navbar.navbar.nav-animated-luxury {
        /* Chuyển động màu Neon Deep Blue & Purple cực sang */
        background: linear-gradient(-45deg, #0f172a, #1e1b4b, #312e81, #581c87) !important;
        background-size: 400% 400%;
        animation: neonNavbarGradient 15s ease infinite;
        border: none !important;
        height: 60px !important;
        display: flex !important;
        align-items: center !important;
        box-shadow: 0 4px 15px rgba(0,0,0,0.4) !important;
        padding: 0 !important;
    }

    @keyframes neonNavbarGradient {
        0% { background-position: 0% 50%; }
        50% { background-position: 100% 50%; }
        100% { background-position: 0% 50%; }
    }

    /* Container bên trong Navbar */
    #navbar-container {
        display: flex !important;
        align-items: center !important;
        justify-content: space-between !important;
        width: 100% !important;
        padding: 0 20px !important;
    }

    /* 2. LOGO & CHỮ "TRANG QUẢN TRỊ" */
    .navbar-header.pull-left {
        display: flex !important;
        align-items: center !important;
        height: 100% !important;
    }

    .navbar-brand {
        display: flex !important;
        align-items: center !important;
        margin: 0 !important;
        padding: 0 !important;
        color: #ffffff !important;
        font-weight: 700 !important;
        text-transform: uppercase;
        text-shadow: 0 0 10px rgba(0, 210, 255, 0.6);
    }

    .navbar-brand small {
        display: flex !important;
        align-items: center !important;
        font-size: 18px !important;
    }

    .navbar-brand i {
        color: #00d2ff !important;
        margin-right: 12px !important;
        font-size: 22px !important;
        text-shadow: 0 0 15px #00d2ff;
        display: inline-block;
    }

    /* 3. KHU VỰC NGƯỜI DÙNG BÊN PHẢI */
    .navbar-buttons.pull-right {
        display: flex !important;
        align-items: center !important;
        height: 100% !important;
    }

    .ace-nav {
        display: flex !important;
        align-items: center !important;
        height: 100% !important;
        list-style: none !important;
        margin: 0 !important;
    }

    .ace-nav > li {
        height: 100% !important;
        display: flex !important;
        align-items: center !important;
    }

    .ace-nav > li > a {
        background: transparent !important;
        color: #ffffff !important;
        height: 60px !important;
        display: flex !important;
        align-items: center !important;
        padding: 0 15px !important;
        font-weight: 600;
        text-shadow: 0 0 5px rgba(255, 255, 255, 0.3);
        transition: 0.3s;
    }

    .ace-nav > li > a:hover, .ace-nav > li > a:focus {
        background: rgba(255, 255, 255, 0.1) !important;
    }

    /* 4. DROPDOWN MENU TINH TẾ */
    .user-menu.dropdown-menu {
        border-radius: 10px !important;
        border: 1px solid rgba(255, 255, 255, 0.1) !important;
        box-shadow: 0 10px 40px rgba(0,0,0,0.4) !important;
        margin-top: 2px !important;
        padding: 8px 0 !important;
        background: #ffffff !important;
        animation: menuFadeUp 0.3s ease;
    }

    @keyframes menuFadeUp {
        from { opacity: 0; transform: translateY(10px); }
        to { opacity: 1; transform: translateY(0); }
    }

    .user-menu > li > a {
        padding: 10px 20px !important;
        display: flex !important;
        align-items: center !important;
        color: #1e293b !important;
        font-size: 14px !important;
        transition: 0.2s;
    }

    .user-menu > li > a:hover {
        background: #f1f5f9 !important;
        color: #312e81 !important;
        padding-left: 25px !important;
    }

    .user-menu > li > a i {
        margin-right: 12px;
        width: 18px;
        text-align: center;
        opacity: 0.8;
    }

    /* Mục Thoát có màu đỏ */
    .user-menu > li > a[href*='logout']:hover {
        color: #e11d48 !important;
    }
</style>