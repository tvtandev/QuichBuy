<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="images/favicon.png" rel="shortcut icon">
<title>Ludus - Giỏ Hàng</title>

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
									<li class="is-marked"><a href="cart">Giỏ hàng</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--====== End - Section 1 ======-->


			<!--====== Section 2 ======-->
			<div class="u-s-p-b-60">

				<!--====== Section Intro ======-->
				<div class="section__intro u-s-m-b-60">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="section__text-wrap">
									<h1 class="section__heading u-c-secondary">GIỎ HÀNG</h1>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--====== End - Section Intro ======-->


				<!--====== Section Content ======-->
				<div class="section__content">
					<div class="container">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 u-s-m-b-30">
								<div class="table-responsive">
									<table class="table-p">
										<tbody>

											<c:forEach items="${shoppingCarts}" var="item">
												<!--====== Row ======-->
												<tr>
													<td>
														<div class="table-p__box">
															<div class="table-p__img-wrap">

																<img class="u-img-fluid"
																	src="${item.product.image}" alt="">
															</div>
															<div class="table-p__info">

																<span class="table-p__name"> <a
																	href="product-detail?product-id=${item.product.productID}">${item.product.productName}</a></span> <span
																	class="table-p__category"> <a
																	href="shop-side-version-2">${item.product.category.categoryName}</a></span>
																<ul class="table-p__variant-list">
																	<li><span>Size: </span></li>
																	<li><span>Color: </span></li>
																</ul>
															</div>
														</div>
													</td>
													<td><span class="table-p__price">${item.product.price}00 VNĐ</span></td>
													<td>
														<div class="table-p__input-counter-wrap">

															<!--====== Input Counter ======-->
															<div class="input-counter">

																<span class="input-counter__minus fas fa-minus"
																	style="border-right: 1px solid #ccc; width: 35px;"></span>
																<input
																	class="input-counter__text input-counter--text-primary-style"
																	style="border-radius: 0 !important; border: 1px solid rgba(0, 0, 0, 0.09); background: none;"
																	type="text" value="${item.quantity}" data-min="1" data-max="1000">
																<span class="input-counter__plus fas fa-plus"
																	style="border-left: 1px solid #ccc; width: 35px;"></span>
															</div>
															<!--====== End - Input Counter ======-->
														</div>
													</td>
													<td>
														<div class="table-p__del-wrap">

															<a class="far fa-trash-alt table-p__delete-link" href="#"></a>
														</div>
													</td>
												</tr>
												<!--====== End - Row ======-->
											</c:forEach>

										</tbody>
									</table>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="route-box">
									<div class="route-box__g1">

										<a class="route-box__link" href="shop-side-version-2"><i
											class="fas fa-long-arrow-alt-left"></i> <span>TIẾP
												TỤC MUA SẮM</span></a>
									</div>
									<div class="route-box__g2">

										<a class="route-box__link" href="cart"><i
											class="fas fa-trash"></i> <span>XÓA GIỎ HÀNG</span></a> <a
											class="route-box__link" href="cart"><i
											class="fas fa-sync"></i> <span>CẬP NHẬT GIỎ HÀNG</span></a>
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
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 u-s-m-b-30">
								<form class="f-cart">
									<div class="row">
										<div class="col-lg-4 col-md-6 u-s-m-b-30">
											<div class="f-cart__pad-box">
												<h1 class="gl-h1">ƯỚC TÍNH VẬN CHUYỂN VÀ THUẾ</h1>

												<span class="gl-text u-s-m-b-30">Nhập điểm đến của
													bạn để có ước tính vận chuyển.</span>

												<div class="u-s-m-b-30">

													<!--====== Select Box ======-->

													<label class="gl-label" for="shipping-state">TỈNH/THÀNH
														PHỐ, QUẬN/HUYỆN, PHƯỜNG/XÃ</label><select
														class="select-box select-box--primary-style"
														id="shipping-state">
														<option selected value="">Chọn Tỉnh/Thành Phố</option>
														<option value="ct">Cần Thơ</option>
														<option value="dt">Đồng Tháp</option>
														<option value="hcm">TP Hồ Chí Minh</option>
													</select>
													<!--====== End - Select Box ======-->
												</div>



												<div class="u-s-m-b-30">

													<label class="gl-label" for="shipping-zip">ZIP/POSTAL
														CODE *</label> <input class="input-text input-text--primary-style"
														type="text" id="shipping-zip"
														placeholder="Zip/Postal Code">
												</div>
												<div class="u-s-m-b-30">

													<a class="f-cart__ship-link btn--e-transparent-brand-b-2"
														href="cart">TÍNH TOÁN PHÍ VẬN CHUYỂN</a>
												</div>

												<span class="gl-text">Lưu ý: Có một số Tỉnh, Thành
													miễn phí vận chuyển, nếu không, phí cố định hoặc phí giao
													hàng Tỉnh, Thành Phố của chúng tôi sẽ được áp dụng.</span>
											</div>
										</div>
										<div class="col-lg-4 col-md-6 u-s-m-b-30">
											<div class="f-cart__pad-box">
												<h1 class="gl-h1">GHI CHÚ</h1>

												<span class="gl-text u-s-m-b-30">Thêm ghi chú đặc
													biệt về sản phẩm của bạn</span>
												<div>

													<label for="f-cart-note"></label>
													<textarea class="text-area text-area--primary-style"
														id="f-cart-note"></textarea>
												</div>
											</div>
										</div>
										<div class="col-lg-4 col-md-6 u-s-m-b-30">
											<div class="f-cart__pad-box">
												<div class="u-s-m-b-30">
													<table class="f-cart__table">
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
												<div>

													<button class="btn btn--e-brand-b-2" formaction="checkout">THANH
														TOÁN NGAY</button>
												</div>
											</div>
										</div>
									</div>
								</form>
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