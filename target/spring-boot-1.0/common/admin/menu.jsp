<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="sidebar" class="sidebar responsive ace-save-state">
    <script type="text/javascript">
        try { ace.settings.loadState('sidebar') } catch (e) { }
    </script>

    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large">
            <a href="/trang-chu" class="btn btn-success" style="border-radius: 8px;" title="Trang chủ">
                <i class="ace-icon fa fa-home"></i>
            </a>
            <button class="btn btn-info" style="border-radius: 8px;">
                <i class="ace-icon fa fa-pencil"></i>
            </button>
            <button class="btn btn-warning" style="border-radius: 8px;">
                <i class="ace-icon fa fa-users"></i>
            </button>
            <button class="btn btn-danger" style="border-radius: 8px;">
                <i class="ace-icon fa fa-cogs"></i>
            </button>
        </div>
    </div>

    <ul class="nav nav-list">
        <li class="">
            <a href="#" class="dropdown-toggle" style="display: flex; align-items: center;">
                <i class="menu-icon fa fa-building-o" style="font-size: 20px; width: 25px;"></i>
                <span class="menu-text" style="margin-left: 5px;"> Quản Lý Tòa Nhà </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu">
                <li class="">
                    <a href="/admin/building-list">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Danh sách tòa nhà
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>

        <li class="">
            <a href="#" class="dropdown-toggle" style="display: flex; align-items: center;">
                <i class="menu-icon fa fa-user" style="font-size: 20px; width: 25px;"></i>
                <span class="menu-text" style="margin-left: 5px;"> Quản Lý Tài Khoản </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu">
                <li class="">
                    <a href="/admin/user-list">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Danh sách tài khoản
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>

        <li class="">
            <a href="#" class="dropdown-toggle" style="display: flex; align-items: center;">
                <i class="menu-icon fa fa-users" style="font-size: 20px; width: 25px;"></i>
                <span class="menu-text" style="margin-left: 5px;"> Quản Lý Khách Hàng </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <b class="arrow"></b>
            <ul class="submenu">
                <li class="">
                    <a href="/admin/customer-list">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Danh sách khách hàng
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
    </ul>

    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
        <i class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
</div>
