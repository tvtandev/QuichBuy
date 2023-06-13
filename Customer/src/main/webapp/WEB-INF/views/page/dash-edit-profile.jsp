<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="images/favicon.png" rel="shortcut icon">
<title>Ludus - Electronics, Apparel, Computers, Books, DVDs &
	more</title>

<!--====== Google Font ======-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800"
	rel="stylesheet">

<!--====== Vendor Css ======-->
<link rel="stylesheet" href="css/vendor.css">

<!--====== Utility-Spacing ======-->
<link rel="stylesheet" href="css/utility.css">

<!--====== App ======-->
<link rel="stylesheet" href="css/app.css">
</head>
<body class="config">
	<div class="preloader is-active">
		<div class="preloader__wrap">

			<img class="preloader__img" src="images/preloader.png" alt="">
		</div>
	</div>

	<!--====== Main App ======-->
	<div id="app">

		<!--====== Header ======-->
		<jsp:include page="../share_page/header.jsp"></jsp:include>


		<!--====== App Content ======-->
		<div class="app-content">

			<!--====== Section 1 ======-->
			<div class="u-s-p-y-60">

				<!--====== Section Content ======-->
				<div class="section__content">
					<div class="container">
						<div class="breadcrumb">
							<div class="breadcrumb__wrap">
								<ul class="breadcrumb__list">
									<li class="has-separator"><a href="/">Trang chủ</a></li>
									<li class="is-marked"><a href="dash-edit-profile">Tài
											khoản của tôi</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--====== End - Section 1 ======-->


			<!--====== Section 2 ======-->
			<div class="u-s-p-b-60">

				<!--====== Section Content ======-->
				<div class="section__content">
					<div class="dash">
						<div class="container">
							<div class="row">
								<div class="col-lg-3 col-md-12">

									<!--====== Dashboard Features ======-->
									<div
										class="dash__box dash__box--bg-white dash__box--shadow u-s-m-b-30">
										<div class="dash__pad-1">

											<span class="dash__text u-s-m-b-16">Xin chào, Hòa
												Võ</span>
											<ul class="dash__f-list">
												<li><a class="dash-active" href="dashboard">Quản lý
														tài khoản của tôi</a></li>
												<li><a href="dash-my-profile">Thông tin của tôi</a></li>
												<li><a href="dash-address-book">Địa chỉ</a></li>
												<li><a href="dash-track-order">Theo dõi đơn hàng</a></li>
												<li><a href="dash-my-order">Đơn hàng của tôi</a></li>
												<li><a href="dash-payment-option">Tùy chọn thanh
														toán của tôi</a></li>
												<li><a href="dash-cancellation">Trả lại & hủy
														bỏ đơn hàng</a></li>
											</ul>
										</div>
									</div>
									<div
										class="dash__box dash__box--bg-white dash__box--shadow dash__box--w">
										<div class="dash__pad-1">
											<ul class="dash__w-list">
												<li>
													<div class="dash__w-wrap">

														<span class="dash__w-icon dash__w-icon-style-1"><i
															class="fas fa-cart-arrow-down"></i></span> <span
															class="dash__w-text">4</span> <span class="dash__w-name">Đặt
															hàng</span>
													</div>
												</li>
												<li>
													<div class="dash__w-wrap">

														<span class="dash__w-icon dash__w-icon-style-2"><i
															class="fas fa-times"></i></span> <span class="dash__w-text">0</span>

														<span class="dash__w-name">Hủy đơn hàng</span>
													</div>
												</li>
												<li>
													<div class="dash__w-wrap">

														<span class="dash__w-icon dash__w-icon-style-3"><i
															class="far fa-heart"></i></span> <span class="dash__w-text">0</span>

														<span class="dash__w-name">Danh sách yêu thích</span>
													</div>
												</li>
											</ul>
										</div>
									</div>
									<!--====== End - Dashboard Features ======-->
								</div>
								<div class="col-lg-9 col-md-12">
									<div
										class="dash__box dash__box--shadow dash__box--radius dash__box--bg-white">
										<div class="dash__pad-2">
											<h1 class="dash__h1 u-s-m-b-14">Chỉnh sửa hồ sơ</h1>

											<span class="dash__text u-s-m-b-30">Có vẻ như bạn chưa
												cập nhật hồ sơ của mình</span>
											<div class="dash__link dash__link--secondary u-s-m-b-30">

												<a data-modal="modal" data-modal-id="#dash-newsletter">Theo
													dõi bản tin</a>
											</div>
											<div class="row">
												<div class="col-lg-12">
													<form class="dash-edit-p">
														<div class="gl-inline">
															<div class="u-s-m-b-30">

																<label class="gl-label" for="reg-fname">TÊN *</label> <input
																	class="input-text input-text--primary-style"
																	type="text" id="reg-fname" placeholder="Hòa">
															</div>
															<div class="u-s-m-b-30">

																<label class="gl-label" for="reg-lname">Họ *</label> <input
																	class="input-text input-text--primary-style"
																	type="text" id="reg-lname" placeholder="Võ">
															</div>
														</div>
														<div class="gl-inline">
															<div class="u-s-m-b-30">

																<!--====== Date of Birth Select-Box ======-->

																<span class="gl-label">NGÀY THÁN NĂM SINH</span>
																<div class="gl-dob">
																	<select class="select-box select-box--primary-style">
																		<option selected>Tháng</option>
																		<option value="male">Một</option>
																		<option value="male">Hai</option>
																		<option value="male">Ba</option>
																		<option value="male">Tư</option>
																	</select><select class="select-box select-box--primary-style">
																		<option selected>Ngày</option>
																		<option value="01">01</option>
																		<option value="02">02</option>
																		<option value="03">03</option>
																		<option value="04">04</option>
																	</select><select class="select-box select-box--primary-style">
																		<option selected>Năm</option>
																		<option value="1991">1991</option>
																		<option value="1992">1992</option>
																		<option value="1993">1993</option>
																		<option value="1994">1994</option>
																	</select>
																</div>
																<!--====== End - Date of Birth Select-Box ======-->
															</div>
															<div class="u-s-m-b-30">

																<label class="gl-label" for="gender">GIỚI TÍNH</label><select
																	class="select-box select-box--primary-style u-w-100"
																	id="gender">
																	<option selected>Lựa chọn</option>
																	<option value="male">Nam</option>
																	<option value="male">Nữ</option>
																</select>
															</div>
														</div>
														<div class="gl-inline">
															<div class="u-s-m-b-30">
																<h2 class="dash__h2 u-s-m-b-8">E-mail</h2>
																<input class="input-text input-text--primary-style"
																	type="email" id="reg-lname" placeholder="hoavo@gmail.com">

															</div>
															<div class="u-s-m-b-30">
																<h2 class="dash__h2 u-s-m-b-8">Số điện thoại</h2>
																<input class="input-text input-text--primary-style"
																	type="tel" id="reg-lname" placeholder="0392677003">
															</div>
														</div>

														<button class="btn btn--e-brand-b-2" type="submit">LƯU</button>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--====== End - Section Content ======-->
			</div>
			<!--====== End - Section 2 ======-->
		</div>

		<!--====== Footer ======-->
		<jsp:include page="../share_page/footer.jsp"></jsp:include>


		<!--====== Modal Section ======-->


		<!--====== Unsubscribe or Subscribe Newsletter ======-->
		<div class="modal fade" id="dash-newsletter">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content modal--shadow">
					<div class="modal-body">
						<form class="d-modal__form">
							<div class="u-s-m-b-15">
								<h1 class="gl-modal-h1">Newsletter Subscription</h1>

								<span class="gl-modal-text">I have read and understood</span> <a
									class="d_modal__link" href="dash-edit-profile">Ludus
									Privacy Policy</a>
							</div>
							<div class="gl-modal-btn-group">

								<button class="btn btn--e-brand-b-2" type="submit">SUBSCRIBE</button>

								<button class="btn btn--e-grey-b-2" type="button"
									data-dismiss="modal">CANCEL</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!--====== Unsubscribe or Subscribe Newsletter ======-->
		<!--====== End - Modal Section ======-->
	</div>
	<!--====== End - Main App ======-->


	<!--====== Google Analytics: change UA-XXXXX-Y to be your site's ID ======-->
	<script>
		window.ga = function() {
			ga.q.push(arguments)
		};
		ga.q = [];
		ga.l = +new Date;
		ga('create', 'UA-XXXXX-Y', 'auto');
		ga('send', 'pageview')
	</script>
	<script src="https://www.google-analytics.com/analytics.js" async defer></script>

	<!--====== Vendor Js ======-->
	<script src="js/vendor.js"></script>

	<!--====== jQuery Shopnav plugin ======-->
	<script src="js/jquery.shopnav.js"></script>

	<!--====== App ======-->
	<script src="js/app.js"></script>

	<!--====== Noscript ======-->
	<noscript>
		<div class="app-setting">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="app-setting__wrap">
							<h1 class="app-setting__h1">JavaScript is disabled in your
								browser.</h1>

							<span class="app-setting__text">Please enable JavaScript
								in your browser or upgrade to a JavaScript-capable browser.</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</noscript>
</body>
</html>