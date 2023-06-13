<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="images/favicon.png" rel="shortcut icon">
<title>QuickBuy - Thủ Tục Thanh Toán</title>

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
									<li class="is-marked"><a href="checkout">Thủ tục
											thanh toán</a></li>
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
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div id="checkout-msg-group">
									<div class="msg u-s-m-b-30">

										<span class="msg__text">Phản hồi của khách hàng? <a
											class="gl-link" href="#return-customer"
											data-toggle="collapse">Nhấn vào đây để đăng nhập</a></span>
										<div class="collapse" id="return-customer"
											data-parent="#checkout-msg-group">
											<div class="l-f u-s-m-b-16">

												<span class="gl-text u-s-m-b-16">Nếu bạn có một tài
													khoản với chúng tôi, xin vui lòng đăng nhập.</span>
												<form class="l-f__form">
													<div class="gl-inline">
														<div class="u-s-m-b-15">

															<label class="gl-label" for="login-email">E-MAIL
																*</label> <input class="input-text input-text--primary-style"
																type="text" id="login-email" placeholder="Nhập email">
														</div>
														<div class="u-s-m-b-15">

															<label class="gl-label" for="login-password">MẬT
																KHẨU *</label> <input
																class="input-text input-text--primary-style" type="text"
																id="login-password" placeholder="Nhập mật khẩu">
														</div>
													</div>
													<div class="gl-inline">
														<div class="u-s-m-b-15">

															<button class="btn btn--e-transparent-brand-b-2"
																type="submit">ĐĂNG NHẬP</button>
														</div>
														<div class="u-s-m-b-15">

															<a class="gl-link" href="lost-password">Quên mật
																khẩu?</a>
														</div>
													</div>

													<!--====== Check Box ======-->
													<div class="check-box">

														<input type="checkbox" id="remember-me">
														<div class="check-box__state check-box__state--primary">

															<label class="check-box__label" for="remember-me">Ghi
																nhớ tôi</label>
														</div>
													</div>
													<!--====== End - Check Box ======-->
												</form>
											</div>
										</div>
									</div>
									<div class="msg">

										<span class="msg__text">Có mã giảm giá? <a
											class="gl-link" href="#have-coupon" data-toggle="collapse">Nhấn
												vào đây để nhập mã của bạn</a></span>
										<div class="collapse" id="have-coupon"
											data-parent="#checkout-msg-group">
											<div class="c-f u-s-m-b-16">

												<span class="gl-text u-s-m-b-16">Nhập mã phiếu giảm
													giá của bạn nếu bạn có.</span>
												<form class="c-f__form">
													<div class="u-s-m-b-16">
														<div class="u-s-m-b-15">

															<label for="coupon"></label> <input
																class="input-text input-text--primary-style" type="text"
																id="coupon" placeholder="Mã giảm giá">
														</div>
														<div class="u-s-m-b-15">

															<button class="btn btn--e-transparent-brand-b-2"
																type="submit">ÁP DỤNG</button>
														</div>
													</div>
												</form>
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


			<!--====== Section 3 ======-->
			<div class="u-s-p-b-60">

				<!--====== Section Content ======-->
				<div class="section__content">
					<div class="container">
						<div class="checkout-f">
							<div class="row">
								<div class="col-lg-6">
									<h1 class="checkout-f__h1">THÔNG TIN GIAO HÀNG</h1>
									<form class="checkout-f__delivery">
										<div class="u-s-m-b-30">
											<div class="u-s-m-b-15">

												<!--====== Check Box ======-->
												<div class="check-box">

													<input type="checkbox" id="get-address">
													<div class="check-box__state check-box__state--primary">

														<label class="check-box__label" for="get-address">Sử
															dụng địa chỉ thanh toán và giao hàng mặc định từ tài
															khoản</label>
													</div>
												</div>
												<!--====== End - Check Box ======-->
											</div>

											<!--====== First Name, Last Name ======-->
											<div class="gl-inline">
												<div class="u-s-m-b-15">

													<label class="gl-label" for="billing-fname">TÊN *</label> <input
														class="input-text input-text--primary-style" type="text"
														id="billing-fname" data-bill="">
												</div>
												<div class="u-s-m-b-15">

													<label class="gl-label" for="billing-lname">HỌ *</label> <input
														class="input-text input-text--primary-style" type="text"
														id="billing-lname" data-bill="">
												</div>
											</div>
											<!--====== End - First Name, Last Name ======-->


											<!--====== E-MAIL ======-->
											<div class="u-s-m-b-15">

												<label class="gl-label" for="billing-email">E-MAIL *</label>

												<input class="input-text input-text--primary-style"
													type="text" id="billing-email" data-bill="">
											</div>
											<!--====== End - E-MAIL ======-->


											<!--====== PHONE ======-->
											<div class="u-s-m-b-15">

												<label class="gl-label" for="billing-phone">SỐ
													ĐIỆN THOẠI *</label> <input
													class="input-text input-text--primary-style" type="text"
													id="billing-phone" data-bill="">
											</div>
											<!--====== End - PHONE ======-->


											<!--====== Street Address ======-->
											<div class="u-s-m-b-15">

												<label class="gl-label" for="billing-street">ĐỊA
													CHỈ ĐƯỜNG*</label> <input
													class="input-text input-text--primary-style" type="text"
													id="billing-street" placeholder="Tên đường" data-bill="">
											</div>
											<div class="u-s-m-b-15">

												<label for="billing-street-optional"></label> <input
													class="input-text input-text--primary-style" type="text"
													id="billing-street-optional" placeholder="Địa chỉ nhà"
													data-bill="">
											</div>
											<!--====== End - Street Address ======-->

											<!--====== STATE/PROVINCE ======-->
											<div class="u-s-m-b-15">

												<!--====== Select Box ======-->

												<label class="gl-label" for="billing-state">TỈNH *</label><select
													class="select-box select-box--primary-style"
													id="billing-state" data-bill="">
													<option selected value="">Chọn Tỉnh</option>
													<option value="al">Alabama</option>
													<option value="al">Alaska</option>
													<option value="ny">New York</option>
												</select>
												<!--====== End - Select Box ======-->
											</div>
											<!--====== End - STATE/PROVINCE ======-->

											<!--====== Town / City ======-->
											<div class="u-s-m-b-15">

												<label class="gl-label" for="billing-town-city">ĐỊA
													CHỈ CỤ THỂ *</label> <input
													class="input-text input-text--primary-style" type="text"
													id="billing-town-city" data-bill="">
											</div>
											<!--====== End - Town / City ======-->


											<div class="u-s-m-b-10">

												<!--====== Check Box ======-->
												<div class="check-box">

													<input type="checkbox" id="make-default-address"
														data-bill="">
													<div class="check-box__state check-box__state--primary">

														<label class="check-box__label" for="make-default-address">Đặt
															địa chỉ giao hàng và thanh toán mặc định</label>
													</div>
												</div>
												<!--====== End - Check Box ======-->
											</div>
											<div class="u-s-m-b-10">

												<a class="gl-link" href="#create-account"
													data-toggle="collapse">Bạn muốn tạo một tài khoản mới?</a>
											</div>
											<div class="collapse u-s-m-b-15" id="create-account">

												<span class="gl-text u-s-m-b-15">Tạo một tài khoản
													bằng cách nhập các thông tin dưới đây. Nếu bạn là khách
													hàng cũ, vui lòng đăng nhập ở đầu trang.</span>
												<div>

													<label class="gl-label" for="reg-password">Mật
														khẩu tài khoản *</label> <input
														class="input-text input-text--primary-style" type="text"
														data-bill id="reg-password">
												</div>
											</div>
											<div class="u-s-m-b-10">

												<label class="gl-label" for="order-note">GHI CHÚ</label>
												<textarea class="text-area text-area--primary-style"
													id="order-note"></textarea>
											</div>
											<div>

												<button class="btn btn--e-transparent-brand-b-2"
													type="submit">LƯU</button>
											</div>
										</div>
									</form>
								</div>
								<div class="col-lg-6">
									<h1 class="checkout-f__h1">TÓM TẮT THEO THỨ TỰ</h1>

									<!--====== Order Summary ======-->
									<div class="o-summary">
										<div class="o-summary__section u-s-m-b-30">
											<div class="o-summary__item-wrap gl-scroll">
												<div class="o-card">
													<div class="o-card__flex">
														<div class="o-card__img-wrap">

															<img class="u-img-fluid"
																src="images/product/electronic/product3.jpg" alt="">
														</div>
														<div class="o-card__info-wrap">

															<span class="o-card__name"> <a
																href="product-detail">Yellow Wireless Headphone</a></span> <span
																class="o-card__quantity">Quantity x 1</span> <span
																class="o-card__price">$150.00</span>
														</div>
													</div>

													<a class="o-card__del far fa-trash-alt"></a>
												</div>
												<div class="o-card">
													<div class="o-card__flex">
														<div class="o-card__img-wrap">

															<img class="u-img-fluid"
																src="images/product/electronic/product18.jpg" alt="">
														</div>
														<div class="o-card__info-wrap">

															<span class="o-card__name"> <a
																href="product-detail">Nikon DSLR Camera 4k</a></span> <span
																class="o-card__quantity">Quantity x 1</span> <span
																class="o-card__price">$150.00</span>
														</div>
													</div>

													<a class="o-card__del far fa-trash-alt"></a>
												</div>
												<div class="o-card">
													<div class="o-card__flex">
														<div class="o-card__img-wrap">

															<img class="u-img-fluid"
																src="images/product/women/product8.jpg" alt="">
														</div>
														<div class="o-card__info-wrap">

															<span class="o-card__name"> <a
																href="product-detail">New Dress D Nice Elegant</a></span> <span
																class="o-card__quantity">Quantity x 1</span> <span
																class="o-card__price">$150.00</span>
														</div>
													</div>

													<a class="o-card__del far fa-trash-alt"></a>
												</div>
												<div class="o-card">
													<div class="o-card__flex">
														<div class="o-card__img-wrap">

															<img class="u-img-fluid"
																src="images/product/men/product8.jpg" alt="">
														</div>
														<div class="o-card__info-wrap">

															<span class="o-card__name"> <a
																href="product-detail">New Fashion D Nice Elegant</a></span> <span
																class="o-card__quantity">Quantity x 1</span> <span
																class="o-card__price">$150.00</span>
														</div>
													</div>

													<a class="o-card__del far fa-trash-alt"></a>
												</div>
											</div>
										</div>
										<div class="o-summary__section u-s-m-b-30">
											<div class="o-summary__box">
												<h1 class="checkout-f__h1">THANH TOÁN & VẬN CHUYỂN</h1>
												<div class="ship-b">

													<span class="ship-b__text">Giao hàng đến:</span>
													<div class="ship-b__box u-s-m-b-10">
														<p class="ship-b__p">893 tổ 5 ấp Hòa Long, xã Hòa
															An, Thành Phố Cao Lãnh Đồng Tháp</p>

														<a class="ship-b__edit btn--e-transparent-platinum-b-2"
															data-modal="modal" data-modal-id="#edit-ship-address">Chỉnh
															sửa</a>
													</div>
													<div class="ship-b__box">

														<span class="ship-b__text">Thanh toán đến địa chỉ
															thanh toán mặc định</span> <a
															class="ship-b__edit btn--e-transparent-platinum-b-2"
															data-modal="modal" data-modal-id="#edit-ship-address">Chỉnh
															sửa</a>
													</div>
												</div>
											</div>
										</div>
										<div class="o-summary__section u-s-m-b-30">
											<div class="o-summary__box">
												<table class="o-summary__table">
													<tbody>
														<tr>
															<td>PHÍ VẬN CHUYỂN</td>
															<td>$4.00</td>
														</tr>
														<tr>
															<td>THUẾ</td>
															<td>$0.00</td>
														</tr>
														<tr>
															<td>TỔNG SỐ TIỀN</td>
															<td>$379.00</td>
														</tr>
														<tr>
															<td>TỔNG CỘNG</td>
															<td>$379.00</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="o-summary__section u-s-m-b-30">
											<div class="o-summary__box">
												<h1 class="checkout-f__h1">PHƯƠNG THỨC THANH TOÁN</h1>
												<form class="checkout-f__payment">
													<div class="u-s-m-b-10">

														<!--====== Radio Box ======-->
														<div class="radio-box">

															<input type="radio" id="cash-on-delivery" name="payment">
															<div class="radio-box__state radio-box__state--primary">

																<label class="radio-box__label" for="cash-on-delivery">Thanh
																	toán khi nhận được hàng</label>
															</div>
														</div>
														<!--====== End - Radio Box ======-->

														<span class="gl-text u-s-m-t-6">Thanh toán tiền mặt
															khi nhận hàng. </span>
													</div>
													<div class="u-s-m-b-10">

														<!--====== Radio Box ======-->
														<div class="radio-box">

															<input type="radio" id="direct-bank-transfer"
																name="payment">
															<div class="radio-box__state radio-box__state--primary">

																<label class="radio-box__label"
																	for="direct-bank-transfer">Chuyển khoản trực
																	tiếp</label>
															</div>
														</div>
														<!--====== End - Radio Box ======-->

														<span class="gl-text u-s-m-t-6">Thực hiện thanh
															toán của bạn trực tiếp vào tài khoản ngân hàng của chúng
															tôi. Vui lòng sử dụng ID đơn đặt hàng của bạn làm tham
															chiếu thanh toán. Đơn đặt hàng của bạn sẽ không được giao
															cho đến khi số tiền trong tài khoản của chúng tôi được
															thanh toán.</span>
													</div>
													<div class="u-s-m-b-10">

														<!--====== Radio Box ======-->
														<div class="radio-box">

															<input type="radio" id="pay-with-card" name="payment">
															<div class="radio-box__state radio-box__state--primary">

																<label class="radio-box__label" for="pay-with-card">Thanh
																	toán bằng thẻ tín dụng/thẻ ghi nợ</label>
															</div>
														</div>
														<!--====== End - Radio Box ======-->

														<span class="gl-text u-s-m-t-6">Thẻ tín dụng quốc
															tế phải đủ điều kiện để sử dụng tại Việt Nam.</span>
													</div>
													<div class="u-s-m-b-10">

														<!--====== Radio Box ======-->
														<div class="radio-box">

															<input type="radio" id="pay-pal" name="payment">
															<div class="radio-box__state radio-box__state--primary">

																<label class="radio-box__label" for="pay-pal">Pay
																	Pal</label>
															</div>
														</div>
														<!--====== End - Radio Box ======-->

														<span class="gl-text u-s-m-t-6">Khi bạn nhấp vào
															"Đặt hàng" bên dưới, chúng tôi sẽ đưa bạn đến trang web
															của Paypal để thiết lập thông tin thanh toán của bạn.</span>
													</div>
													<div class="u-s-m-b-15">

														<!--====== Check Box ======-->
														<div class="check-box">

															<input type="checkbox" id="term-and-condition">
															<div class="check-box__state check-box__state--primary">

																<label class="check-box__label" for="term-and-condition">Tôi
																	đồng ý với</label>
															</div>
														</div>
														<!--====== End - Check Box ======-->

														<a class="gl-link">Điều khoản dịch vụ.</a>
													</div>
													<div>

														<button class="btn btn--e-brand-b-2" type="submit">ĐẶT
															HÀNG</button>
													</div>
												</form>
											</div>
										</div>
									</div>
									<!--====== End - Order Summary ======-->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--====== End - Section Content ======-->
			</div>
			<!--====== End - Section 3 ======-->
		</div>
		<!--====== End - App Content ======-->


		<!--====== Footer ======-->
		<jsp:include page="../share_page/footer.jsp"></jsp:include>


		<!--====== Modal Section ======-->


		<!--====== Shipping Address Add Modal ======-->
		<div class="modal fade" id="edit-ship-address">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-body">
						<div class="checkout-modal2">
							<div class="u-s-m-b-30">
								<div class="dash-l-r">
									<h1 class="gl-modal-h1">Địa chỉ giao hàng</h1>
									<div class="dash__link dash__link--brand">

										<a data-modal="modal" data-modal-id="#add-ship-address"
											data-dismiss="modal">Thêm địa chỉ mới</a>
									</div>
								</div>
							</div>
							<form class="checkout-modal2__form">
								<div class="dash__table-2-wrap u-s-m-b-30 gl-scroll">
									<table class="dash__table-2">
										<thead>
											<tr>
												<th>Hoạt động</th>
												<th>Họ và tên</th>
												<th>Địa chỉ</th>
												<th>Số điện thoại</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<!--====== Radio Box ======-->
													<div class="radio-box">

														<input type="radio" id="address-1" name="default-address"
															checked="">
														<div class="radio-box__state radio-box__state--primary">
															<label class="radio-box__label" for="address-1"></label>
														</div>
													</div> <!--====== End - Radio Box ======-->
												</td>
												<td>Võ Thái Hòa</td>
												<td>893 tổ 5, ấp Hòa Long, xã Hòa An, Thành Phố
													Cao Lãnh, Đồng Tháp</td>
												<td>(+84) 392677003</td>
											</tr>

										</tbody>
									</table>
								</div>
								<div class="gl-modal-btn-group">

									<button class="btn btn--e-brand-b-2" type="submit">LƯU</button>

									<button class="btn btn--e-grey-b-2" type="button"
										data-dismiss="modal">HỦY</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--====== End - Shipping Address Add Modal ======-->


		<!--====== Shipping Address Add Modal ======-->
		<div class="modal fade" id="add-ship-address">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-body">
						<div class="checkout-modal1">
							<form class="checkout-modal1__form">
								<div class="u-s-m-b-30">
									<h1 class="gl-modal-h1">Thêm địa chỉ giao hàng mới</h1>
								</div>
								<div class="gl-inline">
									<div class="u-s-m-b-30">

										<label class="gl-label" for="address-fname">TÊN *</label> <input
											class="input-text input-text--primary-style" type="text"
											id="address-fname" placeholder="First Name">
									</div>
									<div class="u-s-m-b-30">

										<label class="gl-label" for="address-lname">HỌ *</label> <input
											class="input-text input-text--primary-style" type="text"
											id="address-lname" placeholder="Last Name">
									</div>
								</div>
								<div class="gl-inline">
									<div class="u-s-m-b-30">

										<label class="gl-label" for="address-phone">SỐ ĐIỆN
											THOẠI *</label> <input class="input-text input-text--primary-style"
											type="text" id="address-phone">
									</div>
									<div class="u-s-m-b-30">

										<label class="gl-label" for="address-street">ĐỊA CHỈ *</label>
										<input class="input-text input-text--primary-style"
											type="text" id="address-street"
											placeholder="Địa chỉ chi tiết">
									</div>
								</div>
								<div class="gl-inline">
									<div class="u-s-m-b-30">

										<!--====== Select Box ======-->

										<label class="gl-label" for="address-state">TỈNH *</label><select
											class="select-box select-box--primary-style"
											id="address-state">
											<option selected value="">Choose Tỉnh</option>
											<option value="al">Cần Thơ</option>
											<option value="al">Đồng Tháp</option>
											<option value="ny">Sóc Trăng</option>
										</select>
										<!--====== End - Select Box ======-->
									</div>
									
									<div class="u-s-m-b-30">

										<label class="gl-label" for="address-city">THỊ TRẤN/THÀNH PHỐ *</label>

										<input class="input-text input-text--primary-style"
											type="text" id="address-city">
									</div>
								</div>
								<div class="gl-modal-btn-group">

									<button class="btn btn--e-brand-b-2" type="submit">LƯU</button>

									<button class="btn btn--e-grey-b-2" type="button"
										data-dismiss="modal">HỦY</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--====== End - Shipping Address Add Modal ======-->
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