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
									<li class="is-marked"><a href="dash-address-book">Tài
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

											<span class="dash__text u-s-m-b-16">Hello, John Doe</span>
											<ul class="dash__f-list">
												<li><a href="dashboard">Quản lý tài khoản của tôi</a></li>
												<li><a href="dash-my-profile">Thông tin của tôi</a></li>
												<li><a class="dash-active" href="dash-address-book">Địa
														chỉ</a></li>
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
															class="dash__w-text">4</span> <span class="dash__w-name">Đặt
															hàng</span>
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

														<span class="dash__w-name">Danh sách yêu thích</span>
													</div>
												</li>
											</ul>
										</div>
									</div>
									<!--====== End - Dashboard Features ======-->
								</div>
								<div class="col-lg-9 col-md-12">
									<div
										class="dash__box dash__box--shadow dash__box--radius dash__box--bg-white u-s-m-b-30">
										<div class="dash__pad-2">
											<div class="dash__address-header">
												<h1 class="dash__h1">Địa chỉ</h1>
												<div>

													<span class="dash__link dash__link--black u-s-m-r-8">
														<a href="dash-address-make-default">Đặt địa chỉ giao hàng mặc định</a>
													</span>
												</div>
											</div>
										</div>
									</div>
									<div
										class="dash__box dash__box--shadow dash__box--bg-white dash__box--radius u-s-m-b-30">
										<div class="dash__table-2-wrap gl-scroll">
											<table class="dash__table-2">
												<thead>
													<tr>
														<th>Hành động</th>
														<th>Họ và tên</th>
														<th>Địa chỉ</th>
														<th>Số điện thoại</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><a
															class="address-book-edit btn--e-transparent-platinum-b-2"
															href="dash-address-edit">Chỉnh sửa</a></td>
														<td>Hòa Võ</td>
														<td>893 tổ 5 ấp Hòa Long, xã Hòa An, TP.Cao Lãnh</td>
														<td>(+84) 0392677003</td>
													</tr>
													<tr>
														<td><a
															class="address-book-edit btn--e-transparent-platinum-b-2"
															href="dash-address-edit">Chỉnh sửa</a></td>
														<td>Văn Tấn</td>
														<td>893 tổ 5 ấp Hòa Long, xã Hòa An, TP.Cao Lãnh</td>
														<td>(+84) 0345350819</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div>

										<a class="dash__custom-link btn--e-brand-b-2"
											href="dash-address-add"><i class="fas fa-plus u-s-m-r-8"></i>
											<span>Thêm địa chỉ mới</span></a>
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
		<!--====== End - App Content ======-->


		<!--====== Footer ======-->
		<jsp:include page="../share_page/footer.jsp"></jsp:include>
	
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