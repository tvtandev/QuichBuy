<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
              <!-- Top Bar End -->
                <title>Danh sách đơn hàng | Molle Co., Ltd</title>
                <div class="page-content-wrapper">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="page-title-box">
                                    <div class="btn-group float-right">
                                        <ol class="breadcrumb hide-phone p-0 m-0">
                                            <li class="breadcrumb-item">
                                                <a href="admin/índex">
                                                    Bảng điều khiển
                                                </a>
                                            </li>
                                            <li class="breadcrumb-item active">
                                                Danh sách đơn hàng
                                            </li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">
                                        Danh sách đơn hàng
                                    </h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title end breadcrumb -->
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <table id="datatable-buttons"
                                            class="table table-striped table-bordered dt-responsive nowrap"
                                            style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        STT
                                                    </th>
                                                    <th>
                                                        Địa chỉ
                                                    </th>
                                                    <th>
                                                        Điện thoại
                                                    </th>
                                                    <th>
                                                        Ngày
                                                    </th>
                                                    <th>
                                                        Tài khoản
                                                    </th>
                                                    <th>#</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr>
                                                    <td>1</td>
                                                    <td>Phan Thiết</td>
                                                    <td>0919993715</td>
                                                    <td>
                                                        28/05/2022
                                                    </td>
                                                    <td>admin</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/orderdetail/1"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-eye"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>2</td>
                                                    <td>Hồ Chí Minh</td>
                                                    <td>0334123456</td>
                                                    <td>
                                                        12/04/2022
                                                    </td>
                                                    <td>duyplus</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/orderdetail/2"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-eye"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>3</td>
                                                    <td>Vũng Tàu</td>
                                                    <td>0983234567</td>
                                                    <td>
                                                        15/03/2022
                                                    </td>
                                                    <td>pcowell1</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/orderdetail/3"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-eye"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>4</td>
                                                    <td>Cần Thơ</td>
                                                    <td>0342069161</td>
                                                    <td>
                                                        26/04/2023
                                                    </td>
                                                    <td>admin</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/orderdetail/4"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-eye"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>5</td>
                                                    <td>Cần Thơ</td>
                                                    <td>0342069161</td>
                                                    <td>
                                                        26/04/2023
                                                    </td>
                                                    <td>admin</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/orderdetail/5"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-eye"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>6</td>
                                                    <td>123</td>
                                                    <td>123</td>
                                                    <td>
                                                        20/05/2023
                                                    </td>
                                                    <td>admin</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/orderdetail/6"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-eye"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>7</td>
                                                    <td>Cần Thơ</td>
                                                    <td>0342069161</td>
                                                    <td>
                                                        20/05/2023
                                                    </td>
                                                    <td>admin</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/orderdetail/7"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-eye"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row -->
                    </div>
                    <!-- container -->
                </div>
                <!-- Page content Wrapper -->           
<jsp:include page="footer.jsp" />