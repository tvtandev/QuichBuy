<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
       <title>Quản lý sản phẩm | Molle Co., Ltd</title>
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
                                                Quản lý sản phẩm
                                            </li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">
                                        Quản lý sản phẩm
                                    </h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title end breadcrumb -->
                        <div class="row">
                            <div class="card col-12">
                                <div class="card-body">
                                    <form id="item" class="row" action="admin/product" method="post"
                                        enctype="multipart/form-data">


                                        <div class="col-xl-6">
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    STT
                                                </label>
                                                <div class="col-sm-10">
                                                    <input id="id" name="id" class="form-control" type="text"
                                                        disabled="disabled" value="" />
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Tên sản phẩm
                                                </label>
                                                <div class="col-sm-10">
                                                    <input id="name" name="name" class="form-control"
                                                        placeholder="t-shirt" type="text" value="" />
                                                    <span>

                                                    </span>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Giá
                                                </label>
                                                <div class="col-sm-10">
                                                    <input id="price" name="price" class="form-control"
                                                        placeholder="123" type="number" value="0.0" />
                                                    <span>

                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-6">
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Danh mục
                                                </label>
                                                <div class="col-sm-10">
                                                    <select id="category" name="category" class="form-control">
                                                        <option value="1">Clothing</option>
                                                        <option value="2">Activewear</option>
                                                        <option value="3">Sleepwear</option>
                                                        <option value="4">Lingerie</option>
                                                        <option value="5">Swimwear</option>
                                                        <option value="6">Shoes</option>
                                                        <option value="7">Accessories</option>
                                                    </select>
                                                    <span>

                                                    </span>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Có sẵn
                                                </label>
                                                <div class="form-check-inline my-2">
                                                    <span><input id="available1" name="available"
                                                            class="form-check-input ml-3" type="radio"
                                                            value="false" /><label
                                                            for="available1">No</label></span><span><input
                                                            id="available2" name="available"
                                                            class="form-check-input ml-3" type="radio" value="true"
                                                            checked="checked" /><label
                                                            for="available2">Yes</label></span>
                                                    <span>

                                                    </span>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Ngày
                                                </label>
                                                <div class="col-sm-10">
                                                    <input id="createDate" name="createDate" class="form-control"
                                                        placeholder="1970-01-01" type="date" value="2023-05-20" />
                                                    <span>

                                                    </span>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Ảnh
                                                </label>
                                                <div class="col-sm-10">
                                                    <input id="img" name="img" type="file" class="custom-file-input"
                                                        value="" />
                                                    <label class="custom-file-label mx-3">Choose file</label>
                                                    <span>

                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-12">
                                            <div class="form-group row">
                                                <label class="col-sm-1 col-form-label">
                                                    Mô tả
                                                </label>
                                                <div class="col-sm-11">
                                                    <textarea id="description" name="description" class="form-control"
                                                        placeholder="Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                                                        type="text">
</textarea>
                                                    <span>

                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xl-12">
                                                <div class="input-group-append mt-3">
                                                    <button class="btn btn-primary ml-3"
                                                        formaction="admin/product/create">
                                                        Thêm mới
                                                    </button>
                                                    <button class="btn btn-primary ml-3"
                                                        formaction="admin/product/update">
                                                        Cập nhật
                                                    </button>
                                                    <button class="btn btn-primary ml-3" type="button"
                                                        data-toggle="modal" data-target="#delete">
                                                        Xoá bỏ
                                                    </button>
                                                    <button class="btn btn-primary ml-3" formaction="admin/product">
                                                        Đặt lại
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row -->
                        <div class="row">
                            <div class="col-12 px-0">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="mt-0 header-title">
                                            Danh sách sản phẩm
                                        </h4>
                                        <table id="datatable-buttons"
                                            class="table table-striped table-bordered dt-responsive nowrap"
                                            style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        STT
                                                    </th>
                                                    <th>
                                                        Tên sản phẩm
                                                    </th>
                                                    <th>
                                                        Giá
                                                    </th>
                                                    <th>
                                                        Ngày
                                                    </th>
                                                    <th>
                                                        Có sẵn
                                                    </th>
                                                    <th>
                                                        Ảnh
                                                    </th>
                                                    <th>
                                                        Danh mục
                                                    </th>
                                                    <th>#</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr>
                                                    <td>1</td>
                                                    <td>Organic Crew T-Shirt</td>
                                                    <td>
                                                        19,39 $
                                                    </td>
                                                    <td>
                                                        30/04/2022
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/1.jpg">
                                                    </td>
                                                    <td>Clothing</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/1"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>2</td>
                                                    <td>Organic Crew T-Shirt</td>
                                                    <td>
                                                        35,13 $
                                                    </td>
                                                    <td>
                                                        30/04/2022
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/2.jpg">
                                                    </td>
                                                    <td>Lingerie</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/2"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>3</td>
                                                    <td>Relaxed Tapered Jean</td>
                                                    <td>
                                                        11,55 $
                                                    </td>
                                                    <td>
                                                        25/02/2021
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/3.jpg">
                                                    </td>
                                                    <td>Sleepwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/3"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>4</td>
                                                    <td>Mayfair Long Sleeve Shirt</td>
                                                    <td>
                                                        36,78 $
                                                    </td>
                                                    <td>
                                                        19/09/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/4.jpg">
                                                    </td>
                                                    <td>Accessories</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/4"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>5</td>
                                                    <td>Ribbed Beanie Personalised</td>
                                                    <td>
                                                        32,51 $
                                                    </td>
                                                    <td>
                                                        19/09/2020
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/5.jpg">
                                                    </td>
                                                    <td>Shoes</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/5"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>6</td>
                                                    <td>Mens Seamless Trunks</td>
                                                    <td>
                                                        73,32 $
                                                    </td>
                                                    <td>
                                                        30/04/2022
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/6.jpg">
                                                    </td>
                                                    <td>Swimwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/6"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>7</td>
                                                    <td>Hampton Plait Belt</td>
                                                    <td>
                                                        60,79 $
                                                    </td>
                                                    <td>
                                                        19/09/2020
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/7.jpg">
                                                    </td>
                                                    <td>Lingerie</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/7"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>8</td>
                                                    <td>Micro Crop Tee</td>
                                                    <td>
                                                        72,62 $
                                                    </td>
                                                    <td>
                                                        04/04/2020
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/8.jpg">
                                                    </td>
                                                    <td>Sleepwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/8"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>9</td>
                                                    <td>Sorrento Short Sleeve Shirt</td>
                                                    <td>
                                                        19,35 $
                                                    </td>
                                                    <td>
                                                        30/04/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Sleepwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/9"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>10</td>
                                                    <td>Vegan Leather Mini Skirt</td>
                                                    <td>
                                                        17,65 $
                                                    </td>
                                                    <td>
                                                        19/09/2020
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Swimwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/10"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>11</td>
                                                    <td>Jacquard Knit Lounge Top</td>
                                                    <td>
                                                        69,79 $
                                                    </td>
                                                    <td>
                                                        30/04/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Sleepwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/11"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>12</td>
                                                    <td>Satin Sleep Short</td>
                                                    <td>
                                                        30,19 $
                                                    </td>
                                                    <td>
                                                        30/04/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Swimwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/12"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>13</td>
                                                    <td>Waffle Twist Front Crop</td>
                                                    <td>
                                                        22,91 $
                                                    </td>
                                                    <td>
                                                        30/04/2021
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Accessories</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/13"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>14</td>
                                                    <td>Lifestyle Yoga Crop</td>
                                                    <td>
                                                        60,04 $
                                                    </td>
                                                    <td>
                                                        30/04/2022
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Shoes</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/14"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>15</td>
                                                    <td>Cropped Sherpa Jacket</td>
                                                    <td>
                                                        58,25 $
                                                    </td>
                                                    <td>
                                                        30/04/2021
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Shoes</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/15"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>16</td>
                                                    <td>Relaxed Tapered Jean</td>
                                                    <td>
                                                        50,69 $
                                                    </td>
                                                    <td>
                                                        30/04/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Activewear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/16"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>17</td>
                                                    <td>Micro Crop Tee</td>
                                                    <td>
                                                        44,99 $
                                                    </td>
                                                    <td>
                                                        30/04/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Lingerie</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/17"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>18</td>
                                                    <td>Mayfair Long Sleeve Shirt</td>
                                                    <td>
                                                        16,48 $
                                                    </td>
                                                    <td>
                                                        26/05/2021
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Accessories</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/18"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>19</td>
                                                    <td>Amy Mini Shoulder Bag</td>
                                                    <td>
                                                        41,93 $
                                                    </td>
                                                    <td>
                                                        26/05/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Lingerie</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/19"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>20</td>
                                                    <td>Active Bomber Jacket</td>
                                                    <td>
                                                        14 $
                                                    </td>
                                                    <td>
                                                        26/05/2021
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Activewear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/20"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>21</td>
                                                    <td>Vegan Leather Mini Skirt</td>
                                                    <td>
                                                        21,24 $
                                                    </td>
                                                    <td>
                                                        26/05/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Clothing</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/21"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>22</td>
                                                    <td>Lexi Cross Body Bag</td>
                                                    <td>
                                                        56,31 $
                                                    </td>
                                                    <td>
                                                        26/05/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Lingerie</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/22"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>23</td>
                                                    <td>Vegan Leather Mini Skirt</td>
                                                    <td>
                                                        36,79 $
                                                    </td>
                                                    <td>
                                                        04/03/2022
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Lingerie</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/23"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>24</td>
                                                    <td>Boyfriend Fit Graphic Tee</td>
                                                    <td>
                                                        58,35 $
                                                    </td>
                                                    <td>
                                                        22/03/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Sleepwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/24"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>25</td>
                                                    <td>Scout Cargo Pant</td>
                                                    <td>
                                                        65,52 $
                                                    </td>
                                                    <td>
                                                        04/03/2022
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Accessories</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/25"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>26</td>
                                                    <td>Waffle Full Length Tight</td>
                                                    <td>
                                                        35,35 $
                                                    </td>
                                                    <td>
                                                        04/03/2022
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Activewear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/26"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>27</td>
                                                    <td>Lexi Cross Body Bag</td>
                                                    <td>
                                                        66,46 $
                                                    </td>
                                                    <td>
                                                        25/02/2020
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Activewear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/27"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>28</td>
                                                    <td>Micro Crop Tee</td>
                                                    <td>
                                                        45,47 $
                                                    </td>
                                                    <td>
                                                        22/03/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Activewear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/28"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>29</td>
                                                    <td>Amy Mini Shoulder Bag</td>
                                                    <td>
                                                        69,23 $
                                                    </td>
                                                    <td>
                                                        25/02/2020
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Swimwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/29"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>30</td>
                                                    <td>Satin Sleep Short</td>
                                                    <td>
                                                        58,27 $
                                                    </td>
                                                    <td>
                                                        25/02/2021
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Sleepwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/30"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>31</td>
                                                    <td>Micro Crop Tee</td>
                                                    <td>
                                                        14,21 $
                                                    </td>
                                                    <td>
                                                        25/02/2020
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Clothing</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/31"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>32</td>
                                                    <td>Plie Grip Studio Sock</td>
                                                    <td>
                                                        15,57 $
                                                    </td>
                                                    <td>
                                                        25/02/2021
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Swimwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/32"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>33</td>
                                                    <td>Amy Mini Shoulder Bag</td>
                                                    <td>
                                                        43,85 $
                                                    </td>
                                                    <td>
                                                        19/09/2020
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Accessories</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/33"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>34</td>
                                                    <td>Square Toe Slide Slipper</td>
                                                    <td>
                                                        26,76 $
                                                    </td>
                                                    <td>
                                                        19/09/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Accessories</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/34"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>35</td>
                                                    <td>Plie Grip Studio Sock</td>
                                                    <td>
                                                        27,53 $
                                                    </td>
                                                    <td>
                                                        25/02/2020
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Sleepwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/35"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>36</td>
                                                    <td>Take Control Waisted Bikini</td>
                                                    <td>
                                                        67,93 $
                                                    </td>
                                                    <td>
                                                        25/02/2020
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Sleepwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/36"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>37</td>
                                                    <td>Seamless High Cut G String Brief</td>
                                                    <td>
                                                        60,17 $
                                                    </td>
                                                    <td>
                                                        25/02/2020
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Swimwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/37"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>38</td>
                                                    <td>Square Toe Slide Slipper</td>
                                                    <td>
                                                        76,89 $
                                                    </td>
                                                    <td>
                                                        19/09/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Activewear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/38"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>39</td>
                                                    <td>Organic Crew T-Shirt</td>
                                                    <td>
                                                        12,11 $
                                                    </td>
                                                    <td>
                                                        22/03/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Swimwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/39"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>40</td>
                                                    <td>Active Bomber Jacket</td>
                                                    <td>
                                                        74,48 $
                                                    </td>
                                                    <td>
                                                        19/09/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Activewear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/40"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>41</td>
                                                    <td>Scout Cargo Pant</td>
                                                    <td>
                                                        27,91 $
                                                    </td>
                                                    <td>
                                                        22/03/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Lingerie</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/41"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>42</td>
                                                    <td>Lexi Cross Body Bag</td>
                                                    <td>
                                                        33,05 $
                                                    </td>
                                                    <td>
                                                        04/04/2020
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Swimwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/42"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>43</td>
                                                    <td>Body Surf Wetsuit Boyleg</td>
                                                    <td>
                                                        64,13 $
                                                    </td>
                                                    <td>
                                                        04/04/2020
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Accessories</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/43"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>44</td>
                                                    <td>Square Toe Slide Slipper</td>
                                                    <td>
                                                        24,17 $
                                                    </td>
                                                    <td>
                                                        19/09/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Sleepwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/44"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>45</td>
                                                    <td>Satin Sleep Short</td>
                                                    <td>
                                                        67,66 $
                                                    </td>
                                                    <td>
                                                        19/09/2019
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Sleepwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/45"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>46</td>
                                                    <td>Organic Crew T-Shirt</td>
                                                    <td>
                                                        47,89 $
                                                    </td>
                                                    <td>
                                                        19/09/2020
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Shoes</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/46"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>47</td>
                                                    <td>Brodie Flatform Loafer Mule</td>
                                                    <td>
                                                        36,95 $
                                                    </td>
                                                    <td>
                                                        30/04/2022
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Accessories</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/47"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>48</td>
                                                    <td>Organic Crew T-Shirt</td>
                                                    <td>
                                                        45,4 $
                                                    </td>
                                                    <td>
                                                        25/02/2021
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Sleepwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/48"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>49</td>
                                                    <td>Seamless High Cut G String Brief</td>
                                                    <td>
                                                        46,35 $
                                                    </td>
                                                    <td>
                                                        04/04/2020
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Lingerie</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/49"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>50</td>
                                                    <td>Amy Mini Shoulder Bag</td>
                                                    <td>
                                                        35,42 $
                                                    </td>
                                                    <td>
                                                        25/02/2021
                                                    </td>
                                                    <td>Có</td>
                                                    <td class="text-center">
                                                        <img class="w-50" src="img/products/noavt.png">
                                                    </td>
                                                    <td>Sleepwear</td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <a href="admin/product/edit/50"
                                                                class="btn btn-sm btn-success text-white">
                                                                <span class="ti-pencil"></span>
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
                        <!-- DELETE PRODUCT -->
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
                                        Bạn muốn xóa sản phẩm này và không thể hoàn tác! Bạn có muốn tiếp tục không?
                                    </div>
                                    <div class="modal-footer">
                                        <a href="admin/product/delete/" class="btn btn-primary">
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