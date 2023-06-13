<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />

<title>Quản lý người dùng | Molle Co., Ltd</title>
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
								Quản lý người dùng
							</li>
						</ol>
					</div>
					<h4 class="page-title">
						Quản lý người dùng
					</h4>
				</div>
			</div>
		</div>
		<!-- end page title end breadcrumb -->
		<div class="row">
			<div class="col-12">
				<div class="card">
					<div class="card-body">
						<form id="item" action="admin/account" method="post" enctype="multipart/form-data">
							<div class="row">
								
								<div class="col-xl-6">
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">
											Ảnh
										</label>
										<div class="col-sm-10">
											<input type="file" name="img" class="custom-file-input" />
											<label class="custom-file-label mx-3">Choose file</label>
										</div>
									</div>
								</div>
								<div class="col-xl-6"></div>
								<div class="col-xl-6">
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">
											Tài khoản
										</label>
										<div class="col-sm-10">
											<input id="username" name="username" class="form-control" placeholder="username2022" type="text" value=""/>
											<span>
												
											</span>
										</div>
									</div>
									<div class="form-group row">
										<label for="example-password-input" class="col-sm-2 col-form-label">
											Mật khẩu
										</label>
										<div class="col-sm-10">
											<input id="password" name="password" class="form-control" placeholder="&bull;&bull;&bull;&bull;&bull;&bull;&bull;" type="password" value=""/>
											<span>
												
											</span>
										</div>
									</div>
									<div class="form-group row">
										<label for="example-text-input" class="col-sm-2 col-form-label">
											Họ và tên
										</label>
										<div class="col-sm-10">
											<input id="fullname" name="fullname" class="form-control" placeholder="Nguyễn Văn A" type="text" value=""/>
											<span>
												
											</span>
										</div>
									</div>
								</div>
								<div class="col-xl-6">
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">
											Email
										</label>
										<div class="col-sm-10">
											<input id="email" name="email" class="form-control" placeholder="abc@example.com" type="email" value=""/>
											<span>
												
											</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">
											Quyền
										</label>
										<div class="form-check-inline my-2">
											<span><input id="admin1" name="admin" class="form-check-input ml-3" type="radio" value="false" checked="checked"/><label for="admin1">User</label></span><span><input id="admin2" name="admin" class="form-check-input ml-3" type="radio" value="true"/><label for="admin2">Admin</label></span>
											<span>
												
											</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">
											Kích hoạt
										</label>
										<div class="form-check-inline my-2">
											<span><input id="activated1" name="activated" class="form-check-input ml-3" type="radio" value="false"/><label for="activated1">No</label></span><span><input id="activated2" name="activated" class="form-check-input ml-3" type="radio" value="true" checked="checked"/><label for="activated2">Yes</label></span>
											<span>
												
											</span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xl-12">
										<div class="input-group-append mt-3">
											<button class="btn btn-primary ml-3" formaction="admin/account/create">
												Thêm mới
											</button>
											<button class="btn btn-primary ml-3" formaction="admin/account/update">
												Cập nhật
											</button>
											<button class="btn btn-primary ml-3" type="button" data-toggle="modal" data-target="#delete">
												Xoá bỏ
											</button>
											<button class="btn btn-primary ml-3" formaction="admin/account">
												Đặt lại
											</button>
										</div>
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
						<table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap"
							style="border-collapse: collapse; border-spacing: 0; width: 100%;">
							<thead>
								<tr>
									<th>
										Tài khoản
									</th>
									<th>
										Mật khẩu
									</th>
									<th>
										Họ và tên
									</th>
									<th>
										Email
									</th>
									<th>
										Quyền
									</th>
									<th>
										Kích hoạt
									</th>
									<th>
										Ảnh
									</th>
									<th>#</th>
								</tr>
							</thead>
							<tbody>
								
									<tr>
										<td>admin</td>
										<td>123</td>
										<td>Nguyễn Văn A</td>
										<td>duyplus1999@gmail.com</td>
										<td>Admin</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/cherry.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/admin" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>bmaclee2</td>
										<td>3Jg7yz</td>
										<td>Xuân Mã</td>
										<td>xuanma@cisco.com</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/bmaclee2" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>cbatille</td>
										<td>XE3t9c</td>
										<td>Phong Giao</td>
										<td>pgiao@cbsnews.com</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/cbatille" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>crafeoa</td>
										<td>BFuV7V</td>
										<td>Huỳnh Kim</td>
										<td>hkimad4@mail.biz</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/crafeoa" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>dstewart</td>
										<td>2le6pU</td>
										<td>Thoa Bùi</td>
										<td>thoabuip@yandex.ru</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/dstewart" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>duyplus</td>
										<td>123</td>
										<td>Nguyễn Hoàng Duy</td>
										<td>duyplusdz@gmail.com</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/duyplus" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>gsipper9</td>
										<td>sfj6qZ</td>
										<td>Mỹ Cát</td>
										<td>mycat421@yahoo.com</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/gsipper9" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>hfoucar5</td>
										<td>jLQJfD</td>
										<td>Ân Hình</td>
										<td>anhinhh@tiny.net</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/hfoucar5" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>hgoomesh</td>
										<td>SXgySV</td>
										<td>Kiên Ninh</td>
										<td>kiemniinh@gmail.com</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/hgoomesh" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>hnorgan8</td>
										<td>AtoQdc</td>
										<td>Trúc Vi</td>
										<td>vitruccc@hotmail.com</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/hnorgan8" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>kpenritg</td>
										<td>oc6tcL</td>
										<td>Quang Khương</td>
										<td>qkhung55@gmail.com</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/kpenritg" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>mlovejoy3</td>
										<td>wosJl8</td>
										<td>Thái Cung</td>
										<td>thaicng1@vinaa.com</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/mlovejoy3" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>ngerdez4</td>
										<td>OHIvre</td>
										<td>Thọ Thiều</td>
										<td>thothiue@zume.it</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/ngerdez4" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>pcaelnic</td>
										<td>XteWiS</td>
										<td>Quyền Chung</td>
										<td>qchungn@hotmai.de</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/pcaelnic" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>pcowell1</td>
										<td>aycIan</td>
										<td>Nhã Đan</td>
										<td>nhdam512@yahoo.com</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/pcowell1" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>pdolane</td>
										<td>VG0edk</td>
										<td>Vỹ Quản</td>
										<td>quanvyyy@gmail.com</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/pdolane" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>rfealeyi</td>
										<td>Fcyh7n</td>
										<td>Hải Tiêu</td>
										<td>tieuhaii@vinaora.com</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/rfealeyi" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>tantv</td>
										<td>123</td>
										<td>Nguyễn Văn A</td>
										<td>tantvpc03268@fpt.edu.vn</td>
										<td>Admin</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/cherry.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/tantv" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>tgilletb</td>
										<td>avBwbS</td>
										<td>Thành Thịnh</td>
										<td>ththinh12@yahoo.com</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/tgilletb" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>tjerach7</td>
										<td>aIb7Od</td>
										<td>Phúc Thôi</td>
										<td>phucth0i@hotmai.org</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/tjerach7" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
												</a>
											</div>
										</td>
									</tr>
								
									<tr>
										<td>vyahin6</td>
										<td>qMe6Uq</td>
										<td>Trưởng Bùi</td>
										<td>truongb22@gmail.com</td>
										<td>User</td>
										<td>Yes</td>
										<td class="text-center">
											
											
												<img class="w-50" src="img/accounts/noavt.png">
											
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/vyahin6" class="btn btn-sm btn-success text-white">
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
		<!-- DELETE USER -->
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
						Bạn muốn xóa người dùng này và không thể hoàn tác! Bạn có muốn tiếp tục không?
					</div>
					<div class="modal-footer">
						<a href="admin/account/delete/" class="btn btn-primary">
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