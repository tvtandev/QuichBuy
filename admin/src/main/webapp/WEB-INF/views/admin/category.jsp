<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
                <!-- Top Bar End -->
                <title>Quản lý danh mục | Molle Co., Ltd</title>
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
                                                Quản lý danh mục
                                            </li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">
                                        Quản lý danh mục
                                    </h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title end breadcrumb -->
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <form id="item" action="admin/category" method="post">
                                            <div class="row">

                                                <div class="col-xl-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-2 col-form-label">
                                                            STT
                                                        </label>
                                                        <div class="col-sm-10">
                                                            <input id="id" name="id" class="form-control"
                                                                placeholder="123" type="number" disabled="disabled"
                                                                value="" />
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="example-password-input"
                                                            class="col-sm-2 col-form-label">
                                                            Tên danh mục
                                                        </label>
                                                        <div class="col-sm-10">
                                                            <input id="name" name="name" class="form-control"
                                                                placeholder="Clothes" type="text" value="" />
                                                            <span>

                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xl-12">
                                                    <div class="input-group-append mt-3">
                                                        <button class="btn btn-primary ml-3"
                                                            formaction="admin/category/create">
                                                            Thêm mới
                                                        </button>
                                                        <button class="btn btn-primary ml-3"
                                                            formaction="admin/category/update">
                                                            Cập nhật
                                                        </button>
                                                        <button class="btn btn-primary ml-3" type="button"
                                                            data-toggle="modal" data-target="#delete">
                                                            Xoá bỏ
                                                        </button>
                                                        <button class="btn btn-primary ml-3"
                                                            formaction="admin/category">
                                                            Đặt lại
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row -->
                        <div class="row">
                            <div class="col-12 px-0">
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
                                                        Tên danh mục
                                                    </th>
                                                    <th>#</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr>
                                                    <td>1</td>
                                                    <td>Clothing</td>
                                                    <td>
                                                        <a href="admin/category/edit/1"
                                                            class="btn btn-sm btn-success text-white">
                                                            <span class="ti-pencil"></span>
                                                        </a>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>2</td>
                                                    <td>Activewear</td>
                                                    <td>
                                                        <a href="admin/category/edit/2"
                                                            class="btn btn-sm btn-success text-white">
                                                            <span class="ti-pencil"></span>
                                                        </a>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>3</td>
                                                    <td>Sleepwear</td>
                                                    <td>
                                                        <a href="admin/category/edit/3"
                                                            class="btn btn-sm btn-success text-white">
                                                            <span class="ti-pencil"></span>
                                                        </a>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>4</td>
                                                    <td>Lingerie</td>
                                                    <td>
                                                        <a href="admin/category/edit/4"
                                                            class="btn btn-sm btn-success text-white">
                                                            <span class="ti-pencil"></span>
                                                        </a>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>5</td>
                                                    <td>Swimwear</td>
                                                    <td>
                                                        <a href="admin/category/edit/5"
                                                            class="btn btn-sm btn-success text-white">
                                                            <span class="ti-pencil"></span>
                                                        </a>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>6</td>
                                                    <td>Shoes</td>
                                                    <td>
                                                        <a href="admin/category/edit/6"
                                                            class="btn btn-sm btn-success text-white">
                                                            <span class="ti-pencil"></span>
                                                        </a>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>7</td>
                                                    <td>Accessories</td>
                                                    <td>
                                                        <a href="admin/category/edit/7"
                                                            class="btn btn-sm btn-success text-white">
                                                            <span class="ti-pencil"></span>
                                                        </a>
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
                        <!-- DELETE CATEGORY -->
                        <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="deleteLabel"
                            aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="deleteLabel">
                                            Bạn có chắc rằng?
                                        </h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        Bạn muốn xóa danh mục này và không thể hoàn tác! Bạn có muốn tiếp tục không?
                                    </div>
                                    <div class="modal-footer">
                                        <a href="admin/category/delete/" class="btn btn-primary">
                                            Có, xoá ngay
                                        </a>
                                        <a class="btn btn-secondary text-white" data-dismiss="modal">
                                            Không, huỷ bỏ
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- container -->
                </div>
                <!-- Page content Wrapper -->
<jsp:include page="footer.jsp" />