<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="images/favicon.png" rel="shortcut icon">
<title>QuickBuy</title>

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
<body>
	<!-- <div class="preloader is-active">
        <div class="preloader__wrap">

            <img class="preloader__img" src="images/preloader.png" alt="">
        </div>
    </div> -->

	<!--====== Main App ======-->
	<div id="app">

		<!--====== Header ======-->
		<jsp:include page="share_page/header.jsp"></jsp:include>

		<!--====== App Content ======-->
		<div class="app-content">



			<!--====== Section 2 ======-->
			<div class="u-s-p-b-60" style="margin-top: 20px">

				<!--====== Section Intro ======-->
				<div class="section__intro u-s-m-b-16">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="section__text-wrap">
									<h1 class="section__heading u-c-secondary u-s-m-b-12">Sản
										phẩm thịnh hành</h1>

									<span class="section__span u-c-silver">Chọn danh mục</span>
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
							<div class="col-lg-12">

								<div class="filter-category-container">
									<c:forEach items="${categorys}" var="c">
										<div class="filter__category-wrapper">
											<button class="btn filter__btn filter__btn--style-1"
												type="button" data-filter=".${c.categoryName}">${c.categoryName}</button>
										</div>
									</c:forEach>
								</div>
								<div class="filter__grid-wrapper u-s-m-t-30">
									<div class="row">
										<c:forEach var="item" items="${products}">
											<div
												class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30 filter__item ${item.category.categoryName}">
												<div class="product-o product-hover"
													style="box-shadow: 0 0 21px 0 rgba(0, 0, 0, 0.1);">
													<div class="product-o__wrap">

														<a class="aspect aspect--bg-grey aspect--square u-d-block"
															href="product-detail"> <img class="aspect__img"
															src="${item.image}" alt=""></a>
														<div class="product-o__action-wrap">
															<ul class="product-o__action-list">
																<li><a data-modal="modal"
																	data-modal-id="#quick-look" data-tooltip="tooltip"
																	data-placement="top" title="Xem lướt qua"><i
																		class="fas fa-search-plus"></i></a></li>

																<c:if test="${sessionScope.acc == null}">
																	<li><a href="signin" data-tooltip="tooltip" data-placement="top"
																		title="Thêm vào giỏ hàng"><i
																			class="fas fa-plus-circle"></i></a></li>
																</c:if>

																<c:if test="${sessionScope.acc != null}">
																	<li><a data-tooltip="tooltip" href="product-detail?product-id=${item.productID}"
																		data-placement="top" title="Thêm vào giỏ hàng"><i
																			class="fas fa-plus-circle"></i></a></li>
																</c:if>


																
																<li><a href="signin" data-tooltip="tooltip"
																	data-placement="top"
																	title="Email me When the price drops"><i
																		class="fas fa-envelope"></i></a></li>
															</ul>
														</div>
													</div>

													<span class="product-o__category"> <a
														href="product-detail?ct=${item.category.categoryID}">${item.category.categoryName}</a></span>
													<span class="product-o__name"> <a
														href="product-detail?product-id=${item.productID}">${item.productName}</a></span>
													<div class="product-o__rating gl-rating-style">
														<i class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star-half-alt"></i> <span
															class="product-o__review">(23)</span>
													</div>

													<span class="product-o__price">${item.price} VNĐ<!-- <span
														class="product-o__discount">320.00 VNĐ</span> -->
													</span>
												</div>
											</div>
										</c:forEach>
										<c:forEach var="item" items="${products}">
											<div
												class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30 filter__item ${item.category.categoryName}">
												<div class="product-o product-hover"
													style="box-shadow: 0 0 21px 0 rgba(0, 0, 0, 0.1);">
													<div class="product-o__wrap">

														<a class="aspect aspect--bg-grey aspect--square u-d-block"
															href="product-detail"> <img class="aspect__img"
															src="${item.image}" alt=""></a>
														<div class="product-o__action-wrap">
															<ul class="product-o__action-list">
																<li><a data-modal="modal"
																	data-modal-id="#quick-look" data-tooltip="tooltip"
																	data-placement="top" title="Quick View"><i
																		class="fas fa-search-plus"></i></a></li>
																<li><a data-modal="modal"
																	data-modal-id="#add-to-cart" data-tooltip="tooltip"
																	data-placement="top" title="Add to Cart"><i
																		class="fas fa-plus-circle"></i></a></li>
																<li><a href="signin" data-tooltip="tooltip"
																	data-placement="top" title="Add to Wishlist"><i
																		class="fas fa-heart"></i></a></li>
																<li><a href="signin" data-tooltip="tooltip"
																	data-placement="top"
																	title="Email me When the price drops"><i
																		class="fas fa-envelope"></i></a></li>
															</ul>
														</div>
													</div>

													<span class="product-o__category"> <a
														href="product-detail?ct=${item.category.categoryID}">${item.category.categoryName}</a></span>
													<span class="product-o__name"> <a
														href="product-detail?product-id=${item.productID}">${item.productName}</a></span>
													<div class="product-o__rating gl-rating-style">
														<i class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star-half-alt"></i> <span
															class="product-o__review">(23)</span>
													</div>

													<span class="product-o__price">${item.price} VNĐ<!-- <span
														class="product-o__discount">320.00 VNĐ</span> -->
													</span>
												</div>
											</div>
										</c:forEach>
										<c:forEach var="item" items="${products}">
											<div
												class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30 filter__item ${item.category.categoryName}">
												<div class="product-o product-hover"
													style="box-shadow: 0 0 21px 0 rgba(0, 0, 0, 0.1);">
													<div class="product-o__wrap">

														<a class="aspect aspect--bg-grey aspect--square u-d-block"
															href="product-detail"> <img class="aspect__img"
															src="${item.image}" alt=""></a>
														<div class="product-o__action-wrap">
															<ul class="product-o__action-list">
																<li><a data-modal="modal"
																	data-modal-id="#quick-look" data-tooltip="tooltip"
																	data-placement="top" title="Quick View"><i
																		class="fas fa-search-plus"></i></a></li>
																<li><a data-modal="modal"
																	data-modal-id="#add-to-cart" data-tooltip="tooltip"
																	data-placement="top" title="Add to Cart"><i
																		class="fas fa-plus-circle"></i></a></li>
																<li><a href="signin" data-tooltip="tooltip"
																	data-placement="top" title="Add to Wishlist"><i
																		class="fas fa-heart"></i></a></li>
																<li><a href="signin" data-tooltip="tooltip"
																	data-placement="top"
																	title="Email me When the price drops"><i
																		class="fas fa-envelope"></i></a></li>
															</ul>
														</div>
													</div>

													<span class="product-o__category"> <a
														href="product-detail?ct=${item.category.categoryID}">${item.category.categoryName}</a></span>
													<span class="product-o__name"> <a
														href="product-detail?product-id=${item.productID}">${item.productName}</a></span>
													<div class="product-o__rating gl-rating-style">
														<i class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star-half-alt"></i> <span
															class="product-o__review">(23)</span>
													</div>

													<span class="product-o__price">${item.price} VNĐ<!-- <span
														class="product-o__discount">320.00 VNĐ</span> -->
													</span>
												</div>
											</div>
										</c:forEach>
										<c:forEach var="item" items="${products}">
											<div
												class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30 filter__item ${item.category.categoryName}">
												<div class="product-o product-hover"
													style="box-shadow: 0 0 21px 0 rgba(0, 0, 0, 0.1);">
													<div class="product-o__wrap">

														<a class="aspect aspect--bg-grey aspect--square u-d-block"
															href="product-detail"> <img class="aspect__img"
															src="${item.image}" alt=""></a>
														<div class="product-o__action-wrap">
															<ul class="product-o__action-list">
																<li><a data-modal="modal"
																	data-modal-id="#quick-look" data-tooltip="tooltip"
																	data-placement="top" title="Quick View"><i
																		class="fas fa-search-plus"></i></a></li>
																<li><a data-modal="modal"
																	data-modal-id="#add-to-cart" data-tooltip="tooltip"
																	data-placement="top" title="Add to Cart"><i
																		class="fas fa-plus-circle"></i></a></li>
																<li><a href="signin" data-tooltip="tooltip"
																	data-placement="top" title="Add to Wishlist"><i
																		class="fas fa-heart"></i></a></li>
																<li><a href="signin" data-tooltip="tooltip"
																	data-placement="top"
																	title="Email me When the price drops"><i
																		class="fas fa-envelope"></i></a></li>
															</ul>
														</div>
													</div>

													<span class="product-o__category"> <a
														href="product-detail?ct=${item.category.categoryID}">${item.category.categoryName}</a></span>
													<span class="product-o__name"> <a
														href="product-detail?product-id=${item.productID}">${item.productName}</a></span>
													<div class="product-o__rating gl-rating-style">
														<i class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star-half-alt"></i> <span
															class="product-o__review">(23)</span>
													</div>

													<span class="product-o__price">${item.price} VNĐ<!-- <span
														class="product-o__discount">320.00 VNĐ</span> -->
													</span>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="load-more">
									<button class="btn btn--e-brand" type="button">Xem
										Thêm</button>
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

				<!--====== Section Intro ======-->
				<div class="section__intro u-s-m-b-46">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="section__text-wrap">
									<h1 class="section__heading u-c-secondary u-s-m-b-12">ƯU
										ĐÃI TRONG NGÀY</h1>

									<span class="section__span u-c-silver">MUA DEAL TRONG
										NGÀY, HÃY NHANH TAY NÀO! NHỮNG SẢN PHẨM MỚI NÀY SẼ HẾT HẠN
										SẮP.</span> <span class="section__span u-c-silver">THÊM NHỮNG
										ĐIỀU NÀY VÀO GIỎ HÀNG CỦA BẠN.</span>
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
							<div class="col-lg-6 col-md-6 u-s-m-b-30">
								<div
									class="product-o product-o--radius product-o--hover-off u-h-100">
									<div class="product-o__wrap">

										<a class="aspect aspect--bg-grey aspect--square u-d-block"
											href="product-detail"> <img class="aspect__img"
											src="images/product/women/Ao_So_Mi/Ao_So_Mi_01.png" alt=""></a>
										<div class="product-o__special-count-wrap">
											<div class="countdown countdown--style-special"
												data-countdown="2020/05/01"></div>
										</div>
										<div class="product-o__action-wrap">
											<ul class="product-o__action-list">
												<li><a data-modal="modal" data-modal-id="#quick-look"
													data-tooltip="tooltip" data-placement="top"
													title="Quick View"><i class="fas fa-search-plus"></i></a></li>
												<li><a data-modal="modal" data-modal-id="#add-to-cart"
													data-tooltip="tooltip" data-placement="top"
													title="Add to Cart"><i class="fas fa-plus-circle"></i></a>
												</li>
												<li><a href="signin" data-tooltip="tooltip"
													data-placement="top" title="Add to Wishlist"><i
														class="fas fa-heart"></i></a></li>
												<li><a href="signin" data-tooltip="tooltip"
													data-placement="top" title="Email me When the price drops"><i
														class="fas fa-envelope"></i></a></li>
											</ul>
										</div>
									</div>

									<span class="product-o__category"> <a
										href="shop-side-version-2">Áo Sơ Mi</a></span> <span
										class="product-o__name"> <a href="product-detail">Đồng
											Phục Công Sở Áo Sơ Mi Nữ</a></span>
									<div class="product-o__rating gl-rating-style">
										<i class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i> <span class="product-o__review">(2)</span>
									</div>

									<span class="product-o__price">230.000 VNĐ <span
										class="product-o__discount">340.000 VNĐ</span></span>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 u-s-m-b-30">
								<div
									class="product-o product-o--radius product-o--hover-off u-h-100">
									<div class="product-o__wrap">

										<a class="aspect aspect--bg-grey aspect--square u-d-block"
											href="product-detail"> <img class="aspect__img"
											src="images/product/women/Quan_Tay/Quan_Tay_01.jpg" alt=""></a>
										<div class="product-o__special-count-wrap">
											<div class="countdown countdown--style-special"
												data-countdown="2020/05/01"></div>
										</div>
										<div class="product-o__action-wrap">
											<ul class="product-o__action-list">
												<li><a data-modal="modal" data-modal-id="#quick-look"
													data-tooltip="tooltip" data-placement="top"
													title="Quick View"><i class="fas fa-search-plus"></i></a></li>
												<li><a data-modal="modal" data-modal-id="#add-to-cart"
													data-tooltip="tooltip" data-placement="top"
													title="Add to Cart"><i class="fas fa-plus-circle"></i></a>
												</li>
												<li><a href="signin" data-tooltip="tooltip"
													data-placement="top" title="Add to Wishlist"><i
														class="fas fa-heart"></i></a></li>
												<li><a href="signin" data-tooltip="tooltip"
													data-placement="top" title="Email me When the price drops"><i
														class="fas fa-envelope"></i></a></li>
											</ul>
										</div>
									</div>

									<span class="product-o__category"> <a
										href="shop-side-version-2">Quần Tây</a></span> <span
										class="product-o__name"> <a href="product-detail">Quần
											Tây Nữ Công Sở</a></span>
									<div class="product-o__rating gl-rating-style">
										<i class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i> <span class="product-o__review">(2)</span>
									</div>

									<span class="product-o__price">312.000 VNĐ <span
										class="product-o__discount">400.000 VNĐ</span></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--====== End - Section Content ======-->
			</div>
			<!--====== End - Section 3 ======-->


			<!--====== Section 4 ======-->
			<div class="u-s-p-b-60">

				<!--====== Section Intro ======-->
				<div class="section__intro u-s-m-b-46">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="section__text-wrap">
									<h1 class="section__heading u-c-secondary u-s-m-b-12">SẢN
										PHẨM MỚI</h1>

									<span class="section__span u-c-silver">NHỮNG SẢN PHẨM
										MỚI NHẤT</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--====== End - Section Intro ======-->


				<!--====== Section Content ======-->
				<div class="section__content">
					<div class="container">
						<div class="slider-fouc">
							<div class="owl-carousel product-slider" data-item="4">
								<div class="u-s-m-b-30">
									<div class="product-o product-o--hover-on">
										<div class="product-o__wrap">

											<a class="aspect aspect--bg-grey aspect--square u-d-block"
												href="product-detail"> <img class="aspect__img"
												src="images/product/men/Quan/Quan_Tay/Quan_Tay01.png" alt=""></a>
											<div class="product-o__action-wrap">
												<ul class="product-o__action-list">
													<li><a data-modal="modal" data-modal-id="#quick-look"
														data-tooltip="tooltip" data-placement="top"
														title="Quick View"><i class="fas fa-search-plus"></i></a>
													</li>
													<li><a data-modal="modal" data-modal-id="#add-to-cart"
														data-tooltip="tooltip" data-placement="top"
														title="Add to Cart"><i class="fas fa-plus-circle"></i></a>
													</li>
													<li><a href="signin" data-tooltip="tooltip"
														data-placement="top" title="Add to Wishlist"><i
															class="fas fa-heart"></i></a></li>
													<li><a href="signin" data-tooltip="tooltip"
														data-placement="top" title="Email me When the price drops"><i
															class="fas fa-envelope"></i></a></li>
												</ul>
											</div>
										</div>

										<span class="product-o__category"> <a
											href="shop-side-version-2">Quần Tây</a></span> <span
											class="product-o__name"> <a href="product-detail">Quần
												Tây Nam Công Sở</a></span>
										<div class="product-o__rating gl-rating-style">
											<i class="far fa-star"></i><i class="far fa-star"></i><i
												class="far fa-star"></i><i class="far fa-star"></i><i
												class="far fa-star"></i> <span class="product-o__review">(0)</span>
										</div>

										<span class="product-o__price">225.000 VNĐ<span
											class="product-o__discount">250.000 VNĐ</span></span>
									</div>
								</div>
								<div class="u-s-m-b-30">
									<div class="product-o product-o--hover-on">
										<div class="product-o__wrap">

											<a class="aspect aspect--bg-grey aspect--square u-d-block"
												href="product-detail"> <img class="aspect__img"
												src="images/product/men/Quan/Quan_Tay/Quan_Tay01.png" alt=""></a>
											<div class="product-o__action-wrap">
												<ul class="product-o__action-list">
													<li><a data-modal="modal" data-modal-id="#quick-look"
														data-tooltip="tooltip" data-placement="top"
														title="Quick View"><i class="fas fa-search-plus"></i></a>
													</li>
													<li><a data-modal="modal" data-modal-id="#add-to-cart"
														data-tooltip="tooltip" data-placement="top"
														title="Add to Cart"><i class="fas fa-plus-circle"></i></a>
													</li>
													<li><a href="signin" data-tooltip="tooltip"
														data-placement="top" title="Add to Wishlist"><i
															class="fas fa-heart"></i></a></li>
													<li><a href="signin" data-tooltip="tooltip"
														data-placement="top" title="Email me When the price drops"><i
															class="fas fa-envelope"></i></a></li>
												</ul>
											</div>
										</div>

										<span class="product-o__category"> <a
											href="shop-side-version-2">Quần Tây</a></span> <span
											class="product-o__name"> <a href="product-detail">Quần
												Tây</a></span>
										<div class="product-o__rating gl-rating-style">
											<i class="far fa-star"></i><i class="far fa-star"></i><i
												class="far fa-star"></i><i class="far fa-star"></i><i
												class="far fa-star"></i> <span class="product-o__review">(0)</span>
										</div>

										<span class="product-o__price">$125.00 <span
											class="product-o__discount">$160.00</span></span>
									</div>
								</div>
								<div class="u-s-m-b-30">
									<div class="product-o product-o--hover-on">
										<div class="product-o__wrap">

											<a class="aspect aspect--bg-grey aspect--square u-d-block"
												href="product-detail"> <img class="aspect__img"
												src="images/product/men/Quan/Quan_Tay/Quan_Tay01.png" alt=""></a>
											<div class="product-o__action-wrap">
												<ul class="product-o__action-list">
													<li><a data-modal="modal" data-modal-id="#quick-look"
														data-tooltip="tooltip" data-placement="top"
														title="Quick View"><i class="fas fa-search-plus"></i></a>
													</li>
													<li><a data-modal="modal" data-modal-id="#add-to-cart"
														data-tooltip="tooltip" data-placement="top"
														title="Add to Cart"><i class="fas fa-plus-circle"></i></a>
													</li>
													<li><a href="signin" data-tooltip="tooltip"
														data-placement="top" title="Add to Wishlist"><i
															class="fas fa-heart"></i></a></li>
													<li><a href="signin" data-tooltip="tooltip"
														data-placement="top" title="Email me When the price drops"><i
															class="fas fa-envelope"></i></a></li>
												</ul>
											</div>
										</div>

										<span class="product-o__category"> <a
											href="shop-side-version-2">Electronics</a></span> <span
											class="product-o__name"> <a href="product-detail">Sony
												DSLR 4K Camera</a></span>
										<div class="product-o__rating gl-rating-style">
											<i class="far fa-star"></i><i class="far fa-star"></i><i
												class="far fa-star"></i><i class="far fa-star"></i><i
												class="far fa-star"></i> <span class="product-o__review">(0)</span>
										</div>

										<span class="product-o__price">$125.00 <span
											class="product-o__discount">$160.00</span></span>
									</div>
								</div>
								<div class="u-s-m-b-30">
									<div class="product-o product-o--hover-on">
										<div class="product-o__wrap">

											<a class="aspect aspect--bg-grey aspect--square u-d-block"
												href="product-detail"> <img class="aspect__img"
												src="images/product/men/Quan/Quan_Tay/Quan_Tay01.png" alt=""></a>
											<div class="product-o__action-wrap">
												<ul class="product-o__action-list">
													<li><a data-modal="modal" data-modal-id="#quick-look"
														data-tooltip="tooltip" data-placement="top"
														title="Quick View"><i class="fas fa-search-plus"></i></a>
													</li>
													<li><a data-modal="modal" data-modal-id="#add-to-cart"
														data-tooltip="tooltip" data-placement="top"
														title="Add to Cart"><i class="fas fa-plus-circle"></i></a>
													</li>
													<li><a href="signin" data-tooltip="tooltip"
														data-placement="top" title="Add to Wishlist"><i
															class="fas fa-heart"></i></a></li>
													<li><a href="signin" data-tooltip="tooltip"
														data-placement="top" title="Email me When the price drops"><i
															class="fas fa-envelope"></i></a></li>
												</ul>
											</div>
										</div>

										<span class="product-o__category"> <a
											href="shop-side-version-2">Electronics</a></span> <span
											class="product-o__name"> <a href="product-detail">Sony
												DSLR 2K Camera</a></span>
										<div class="product-o__rating gl-rating-style">
											<i class="far fa-star"></i><i class="far fa-star"></i><i
												class="far fa-star"></i><i class="far fa-star"></i><i
												class="far fa-star"></i> <span class="product-o__review">(0)</span>
										</div>

										<span class="product-o__price">$125.00 <span
											class="product-o__discount">$160.00</span></span>
									</div>
								</div>
								<div class="u-s-m-b-30">
									<div class="product-o product-o--hover-on">
										<div class="product-o__wrap">

											<a class="aspect aspect--bg-grey aspect--square u-d-block"
												href="product-detail"> <img class="aspect__img"
												src="images/product/electronic/product17.jpg" alt=""></a>
											<div class="product-o__action-wrap">
												<ul class="product-o__action-list">
													<li><a data-modal="modal" data-modal-id="#quick-look"
														data-tooltip="tooltip" data-placement="top"
														title="Quick View"><i class="fas fa-search-plus"></i></a>
													</li>
													<li><a data-modal="modal" data-modal-id="#add-to-cart"
														data-tooltip="tooltip" data-placement="top"
														title="Add to Cart"><i class="fas fa-plus-circle"></i></a>
													</li>
													<li><a href="signin" data-tooltip="tooltip"
														data-placement="top" title="Add to Wishlist"><i
															class="fas fa-heart"></i></a></li>
													<li><a href="signin" data-tooltip="tooltip"
														data-placement="top" title="Email me When the price drops"><i
															class="fas fa-envelope"></i></a></li>
												</ul>
											</div>
										</div>

										<span class="product-o__category"> <a
											href="shop-side-version-2">Electronics</a></span> <span
											class="product-o__name"> <a href="product-detail">Canon
												DSLR 4K Camera</a></span>
										<div class="product-o__rating gl-rating-style">
											<i class="far fa-star"></i><i class="far fa-star"></i><i
												class="far fa-star"></i><i class="far fa-star"></i><i
												class="far fa-star"></i> <span class="product-o__review">(0)</span>
										</div>

										<span class="product-o__price">$125.00 <span
											class="product-o__discount">$160.00</span></span>
									</div>
								</div>
								<div class="u-s-m-b-30">
									<div class="product-o product-o--hover-on">
										<div class="product-o__wrap">

											<a class="aspect aspect--bg-grey aspect--square u-d-block"
												href="product-detail"> <img class="aspect__img"
												src="images/product/electronic/product18.jpg" alt=""></a>
											<div class="product-o__action-wrap">
												<ul class="product-o__action-list">
													<li><a data-modal="modal" data-modal-id="#quick-look"
														data-tooltip="tooltip" data-placement="top"
														title="Quick View"><i class="fas fa-search-plus"></i></a>
													</li>
													<li><a data-modal="modal" data-modal-id="#add-to-cart"
														data-tooltip="tooltip" data-placement="top"
														title="Add to Cart"><i class="fas fa-plus-circle"></i></a>
													</li>
													<li><a href="signin" data-tooltip="tooltip"
														data-placement="top" title="Add to Wishlist"><i
															class="fas fa-heart"></i></a></li>
													<li><a href="signin" data-tooltip="tooltip"
														data-placement="top" title="Email me When the price drops"><i
															class="fas fa-envelope"></i></a></li>
												</ul>
											</div>
										</div>

										<span class="product-o__category"> <a
											href="shop-side-version-2">Electronics</a></span> <span
											class="product-o__name"> <a href="product-detail">Canon
												DSLR 2K Camera</a></span>
										<div class="product-o__rating gl-rating-style">
											<i class="far fa-star"></i><i class="far fa-star"></i><i
												class="far fa-star"></i><i class="far fa-star"></i><i
												class="far fa-star"></i> <span class="product-o__review">(0)</span>
										</div>

										<span class="product-o__price">$125.00 <span
											class="product-o__discount">$160.00</span></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--====== End - Section Content ======-->
			</div>
			<!--====== End - Section 4 ======-->


			<!--====== Section 5 ======-->
			<div class="banner-bg">

				<!--====== Section Content ======-->
				<div class="section__content">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="banner-bg__countdown">
									<div class="countdown countdown--style-banner"
										data-countdown="2020/05/01"></div>
								</div>
								<div class="banner-bg__wrap">
									<div class="banner-bg__text-1">

										<span class="u-c-white">Ưu Đãi</span> <span
											class="u-c-secondary">Toàn Quốc</span>
									</div>
									<div class="banner-bg__text-2">

										<span class="u-c-secondary">Ra Mắt Chính Thức</span> <span
											class="u-c-white">Đừng Bỏ Lỡ</span>
									</div>

									<span
										class="banner-bg__text-block banner-bg__text-3 u-c-secondary">Enjoy
										Free Shipping when you buy 2 items and above!</span> <a
										class="banner-bg__shop-now btn--e-secondary"
										href="shop-side-version-2">Shop Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--====== End - Section Content ======-->
			</div>
			<!--====== End - Section 5 ======-->


			<!--====== Section 6 ======-->
			<div class="u-s-p-y-60">

				<!--====== Section Intro ======-->
				<div class="section__intro u-s-m-b-46">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="section__text-wrap">
									<h1 class="section__heading u-c-secondary u-s-m-b-12">SẢN
										PHẨM NỔI BẶC</h1>

									<span class="section__span u-c-silver">TÌM SẢN PHẨM NỔI
										BẬC</span>
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
							<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30">
								<div class="product-o product-o--hover-on u-h-100">
									<div class="product-o__wrap">

										<a class="aspect aspect--bg-grey aspect--square u-d-block"
											href="product-detail"> <img class="aspect__img"
											src="images/product/men/Ao/AoThun/AoThun_01.jpg" alt=""></a>
										<div class="product-o__action-wrap">
											<ul class="product-o__action-list">
												<li><a data-modal="modal" data-modal-id="#quick-look"
													data-tooltip="tooltip" data-placement="top"
													title="Quick View"><i class="fas fa-search-plus"></i></a></li>
												<li><a data-modal="modal" data-modal-id="#add-to-cart"
													data-tooltip="tooltip" data-placement="top"
													title="Add to Cart"><i class="fas fa-plus-circle"></i></a>
												</li>
												<li><a href="signin" data-tooltip="tooltip"
													data-placement="top" title="Add to Wishlist"><i
														class="fas fa-heart"></i></a></li>
												<li><a href="signin" data-tooltip="tooltip"
													data-placement="top" title="Email me When the price drops"><i
														class="fas fa-envelope"></i></a></li>
											</ul>
										</div>
									</div>

									<span class="product-o__category"> <a
										href="shop-side-version-2">Áo</a></span> <span
										class="product-o__name"> <a href="product-detail">Áo
											Thun Nam</a></span>
									<div class="product-o__rating gl-rating-style">
										<i class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star-half-alt"></i> <span
											class="product-o__review">(23)</span>
									</div>

									<span class="product-o__price">$125.00 <span
										class="product-o__discount">$160.00</span></span>
								</div>
							</div>
							<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30">
								<div class="product-o product-o--hover-on u-h-100">
									<div class="product-o__wrap">

										<a class="aspect aspect--bg-grey aspect--square u-d-block"
											href="product-detail"> <img class="aspect__img"
											src="images/product/electronic/product20.jpg" alt=""></a>
										<div class="product-o__action-wrap">
											<ul class="product-o__action-list">
												<li><a data-modal="modal" data-modal-id="#quick-look"
													data-tooltip="tooltip" data-placement="top"
													title="Quick View"><i class="fas fa-search-plus"></i></a></li>
												<li><a data-modal="modal" data-modal-id="#add-to-cart"
													data-tooltip="tooltip" data-placement="top"
													title="Add to Cart"><i class="fas fa-plus-circle"></i></a>
												</li>
												<li><a href="signin" data-tooltip="tooltip"
													data-placement="top" title="Add to Wishlist"><i
														class="fas fa-heart"></i></a></li>
												<li><a href="signin" data-tooltip="tooltip"
													data-placement="top" title="Email me When the price drops"><i
														class="fas fa-envelope"></i></a></li>
											</ul>
										</div>
									</div>

									<span class="product-o__category"> <a
										href="shop-side-version-2">Electronics</a></span> <span
										class="product-o__name"> <a href="product-detail">Tablet
											18inch Screen</a></span>
									<div class="product-o__rating gl-rating-style">
										<i class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star-half-alt"></i> <span
											class="product-o__review">(23)</span>
									</div>

									<span class="product-o__price">$125.00 <span
										class="product-o__discount">$160.00</span></span>
								</div>
							</div>
							<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30">
								<div class="product-o product-o--hover-on u-h-100">
									<div class="product-o__wrap">

										<a class="aspect aspect--bg-grey aspect--square u-d-block"
											href="product-detail"> <img class="aspect__img"
											src="images/product/electronic/product21.jpg" alt=""></a>
										<div class="product-o__action-wrap">
											<ul class="product-o__action-list">
												<li><a data-modal="modal" data-modal-id="#quick-look"
													data-tooltip="tooltip" data-placement="top"
													title="Quick View"><i class="fas fa-search-plus"></i></a></li>
												<li><a data-modal="modal" data-modal-id="#add-to-cart"
													data-tooltip="tooltip" data-placement="top"
													title="Add to Cart"><i class="fas fa-plus-circle"></i></a>
												</li>
												<li><a href="signin" data-tooltip="tooltip"
													data-placement="top" title="Add to Wishlist"><i
														class="fas fa-heart"></i></a></li>
												<li><a href="signin" data-tooltip="tooltip"
													data-placement="top" title="Email me When the price drops"><i
														class="fas fa-envelope"></i></a></li>
											</ul>
										</div>
									</div>

									<span class="product-o__category"> <a
										href="shop-side-version-2">Electronics</a></span> <span
										class="product-o__name"> <a href="product-detail">Tablet
											13inch Screen Ram 16GB</a></span>
									<div class="product-o__rating gl-rating-style">
										<i class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star-half-alt"></i> <span
											class="product-o__review">(23)</span>
									</div>

									<span class="product-o__price">$125.00 <span
										class="product-o__discount">$160.00</span></span>
								</div>
							</div>
							<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 u-s-m-b-30">
								<div class="product-o product-o--hover-on u-h-100">
									<div class="product-o__wrap">

										<a class="aspect aspect--bg-grey aspect--square u-d-block"
											href="product-detail"> <img class="aspect__img"
											src="images/product/electronic/product22.jpg" alt=""></a>
										<div class="product-o__action-wrap">
											<ul class="product-o__action-list">
												<li><a data-modal="modal" data-modal-id="#quick-look"
													data-tooltip="tooltip" data-placement="top"
													title="Quick View"><i class="fas fa-search-plus"></i></a></li>
												<li><a data-modal="modal" data-modal-id="#add-to-cart"
													data-tooltip="tooltip" data-placement="top"
													title="Add to Cart"><i class="fas fa-plus-circle"></i></a>
												</li>
												<li><a href="signin" data-tooltip="tooltip"
													data-placement="top" title="Add to Wishlist"><i
														class="fas fa-heart"></i></a></li>
												<li><a href="signin" data-tooltip="tooltip"
													data-placement="top" title="Email me When the price drops"><i
														class="fas fa-envelope"></i></a></li>
											</ul>
										</div>
									</div>

									<span class="product-o__category"> <a
										href="shop-side-version-2">Electronics</a></span> <span
										class="product-o__name"> <a href="product-detail">Tablet
											12inch Screen Ram 16GB</a></span>
									<div class="product-o__rating gl-rating-style">
										<i class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star-half-alt"></i> <span
											class="product-o__review">(23)</span>
									</div>

									<span class="product-o__price">$125.00 <span
										class="product-o__discount">$160.00</span></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--====== End - Section Content ======-->
			</div>
			<!--====== End - Section 6 ======-->


			<!--====== Section 7 ======-->
			<div class="u-s-p-b-60">

				<!--====== Section Content ======-->
				<div class="section__content">
					<div class="container">
						<div class="row">
							<div class="col-lg-4 col-md-4 col-sm-6 u-s-m-b-30">

								<a class="promotion" href="shop-side-version-2">
									<div class="aspect aspect--bg-grey aspect--square">

										<img class="aspect__img promotion__img"
											src="images/promo/promo-img-1.jpg" alt="">
									</div>
									<div class="promotion__content">
										<div class="promotion__text-wrap">
											<div class="promotion__text-1">

												<span class="u-c-secondary">ACCESSORIES FOR YOUR
													EVERYDAY</span>
											</div>
											<div class="promotion__text-2">

												<span class="u-c-secondary">GET IN</span> <span
													class="u-c-brand">TOUCH</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-6 u-s-m-b-30">

								<a class="promotion" href="shop-side-version-2">
									<div class="aspect aspect--bg-grey aspect--square">

										<img class="aspect__img promotion__img"
											src="images/promo/promo-img-2.jpg" alt="">
									</div>
									<div class="promotion__content">
										<div class="promotion__text-wrap">
											<div class="promotion__text-1">

												<span class="u-c-secondary">SMARTPHONE</span> <span
													class="u-c-brand">2019</span>
											</div>
											<div class="promotion__text-2">

												<span class="u-c-secondary">NEW ARRIVALS</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-6 u-s-m-b-30">

								<a class="promotion" href="shop-side-version-2">
									<div class="aspect aspect--bg-grey aspect--square">

										<img class="aspect__img promotion__img"
											src="images/promo/promo-img-3.jpg" alt="">
									</div>
									<div class="promotion__content">
										<div class="promotion__text-wrap">
											<div class="promotion__text-1">

												<span class="u-c-secondary">DSLR FOR NEW GENERATION</span>
											</div>
											<div class="promotion__text-2">

												<span class="u-c-brand">GET UP TO 10% OFF</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
				<!--====== End - Section Content ======-->
			</div>
			<!--====== End - Section 7 ======-->


			<!--====== Section 8 ======-->
			<div class="u-s-p-b-60">

				<!--====== Section Content ======-->
				<div class="section__content">
					<div class="container">
						<div class="row">
							<div class="col-lg-4 col-md-6 col-sm-6 u-s-m-b-30">
								<div class="column-product">

									<span class="column-product__title u-c-secondary u-s-m-b-25">SPECIAL
										PRODUCTS</span>
									<ul class="column-product__list">
										<li class="column-product__item">
											<div class="product-l">
												<div class="product-l__img-wrap">

													<a
														class="aspect aspect--bg-grey aspect--square u-d-block product-l__link"
														href="product-detail"> <img class="aspect__img"
														src="images/product/electronic/product23.jpg" alt=""></a>
												</div>
												<div class="product-l__info-wrap">

													<span class="product-l__category"> <a
														href="shop-side-version-2">Electronics</a></span> <span
														class="product-l__name"> <a href="product-detail">Razor
															Gear 15 Ram 16GB</a></span> <span class="product-l__price">$125.00</span>
												</div>
											</div>
										</li>
										<li class="column-product__item">
											<div class="product-l">
												<div class="product-l__img-wrap">

													<a
														class="aspect aspect--bg-grey aspect--square u-d-block product-l__link"
														href="product-detail"> <img class="aspect__img"
														src="images/product/electronic/product24.jpg" alt=""></a>
												</div>
												<div class="product-l__info-wrap">

													<span class="product-l__category"> <a
														href="shop-side-version-2">Electronics</a></span> <span
														class="product-l__name"> <a href="product-detail">Razor
															Gear 13 Ram 16GB</a></span> <span class="product-l__price">$125.00</span>
												</div>
											</div>
										</li>
										<li class="column-product__item">
											<div class="product-l">
												<div class="product-l__img-wrap">

													<a
														class="aspect aspect--bg-grey aspect--square u-d-block product-l__link"
														href="product-detail"> <img class="aspect__img"
														src="images/product/electronic/product25.jpg" alt=""></a>
												</div>
												<div class="product-l__info-wrap">

													<span class="product-l__category"> <a
														href="shop-side-version-2">Electronics</a></span> <span
														class="product-l__name"> <a href="product-detail">Razor
															Gear 15 Ram 8GB</a></span> <span class="product-l__price">$125.00</span>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6 u-s-m-b-30">
								<div class="column-product">

									<span class="column-product__title u-c-secondary u-s-m-b-25">WEEKLY
										PRODUCTS</span>
									<ul class="column-product__list">
										<li class="column-product__item">
											<div class="product-l">
												<div class="product-l__img-wrap">

													<a
														class="aspect aspect--bg-grey aspect--square u-d-block product-l__link"
														href="product-detail"> <img class="aspect__img"
														src="images/product/electronic/product26.jpg" alt=""></a>
												</div>
												<div class="product-l__info-wrap">

													<span class="product-l__category"> <a
														href="shop-side-version-2">Electronics</a></span> <span
														class="product-l__name"> <a href="product-detail">Razor
															Gear 10 Ram 16GB</a></span> <span class="product-l__price">$125.00

														<span class="product-l__discount">$160</span>
													</span>
												</div>
											</div>
										</li>
										<li class="column-product__item">
											<div class="product-l">
												<div class="product-l__img-wrap">

													<a
														class="aspect aspect--bg-grey aspect--square u-d-block product-l__link"
														href="product-detail"> <img class="aspect__img"
														src="images/product/electronic/product27.jpg" alt=""></a>
												</div>
												<div class="product-l__info-wrap">

													<span class="product-l__category"> <a
														href="shop-side-version-2">Electronics</a></span> <span
														class="product-l__name"> <a href="product-detail">Razor
															Gear 15 Ram 8GB</a></span> <span class="product-l__price">$125.00

														<span class="product-l__discount">$160</span>
													</span>
												</div>
											</div>
										</li>
										<li class="column-product__item">
											<div class="product-l">
												<div class="product-l__img-wrap">

													<a
														class="aspect aspect--bg-grey aspect--square u-d-block product-l__link"
														href="product-detail"> <img class="aspect__img"
														src="images/product/electronic/product28.jpg" alt=""></a>
												</div>
												<div class="product-l__info-wrap">

													<span class="product-l__category"> <a
														href="shop-side-version-2">Electronics</a></span> <span
														class="product-l__name"> <a href="product-detail">Razor
															Gear 15 Ultra Ram 16GB</a></span> <span class="product-l__price">$125.00

														<span class="product-l__discount">$160</span>
													</span>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-sm-6 u-s-m-b-30">
								<div class="column-product">

									<span class="column-product__title u-c-secondary u-s-m-b-25">FLASH
										PRODUCTS</span>
									<ul class="column-product__list">
										<li class="column-product__item">
											<div class="product-l">
												<div class="product-l__img-wrap">

													<a
														class="aspect aspect--bg-grey aspect--square u-d-block product-l__link"
														href="product-detail"> <img class="aspect__img"
														src="images/product/electronic/product29.jpg" alt=""></a>
												</div>
												<div class="product-l__info-wrap">
													<div class="product-l__rating gl-rating-style">
														<i class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i><i class="far fa-star"></i><i
															class="far fa-star"></i>
													</div>

													<span class="product-l__category"> <a
														href="shop-side-version-2">Electronics</a></span> <span
														class="product-l__name"> <a href="product-detail">Razor
															Gear 20 Ultra Ram 16GB</a></span> <span class="product-l__price">$125.00</span>
												</div>
											</div>
										</li>
										<li class="column-product__item">
											<div class="product-l">
												<div class="product-l__img-wrap">

													<a
														class="aspect aspect--bg-grey aspect--square u-d-block product-l__link"
														href="product-detail"> <img class="aspect__img"
														src="images/product/electronic/product30.jpg" alt=""></a>
												</div>
												<div class="product-l__info-wrap">
													<div class="product-l__rating gl-rating-style">
														<i class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i><i class="far fa-star"></i><i
															class="far fa-star"></i>
													</div>

													<span class="product-l__category"> <a
														href="shop-side-version-2">Electronics</a></span> <span
														class="product-l__name"> <a href="product-detail">Razor
															Gear 11 Ultra Ram 16GB</a></span> <span class="product-l__price">$125.00</span>
												</div>
											</div>
										</li>
										<li class="column-product__item">
											<div class="product-l">
												<div class="product-l__img-wrap">

													<a
														class="aspect aspect--bg-grey aspect--square u-d-block product-l__link"
														href="product-detail"> <img class="aspect__img"
														src="images/product/electronic/product31.jpg" alt=""></a>
												</div>
												<div class="product-l__info-wrap">
													<div class="product-l__rating gl-rating-style">
														<i class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i><i class="far fa-star"></i><i
															class="far fa-star"></i>
													</div>

													<span class="product-l__category"> <a
														href="shop-side-version-2">Electronics</a></span> <span
														class="product-l__name"> <a href="product-detail">Razor
															Gear 10 Ultra Ram 16GB</a></span> <span class="product-l__price">$125.00</span>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--====== End - Section Content ======-->
			</div>
			<!--====== End - Section 8 ======-->


			<!--====== Section 9 ======-->
			<div class="u-s-p-b-60">

				<!--====== Section Content ======-->
				<div class="section__content">
					<div class="container">
						<div class="row">
							<div class="col-lg-4 col-md-6 u-s-m-b-30">
								<div class="service u-h-100">
									<div class="service__icon">
										<i class="fas fa-truck"></i>
									</div>
									<div class="service__info-wrap">

										<span class="service__info-text-1">Giao hàng miễn
											phí</span> <span class="service__info-text-2">Giao hàng
											miễn phí cho tất cả các đơn hàng</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 u-s-m-b-30">
								<div class="service u-h-100">
									<div class="service__icon">
										<i class="fas fa-redo"></i>
									</div>
									<div class="service__info-wrap">

										<span class="service__info-text-1">Tự tin mua sắm</span> <span
											class="service__info-text-2">Các chính sách bảo
											vệ khách hàng.</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 u-s-m-b-30">
								<div class="service u-h-100">
									<div class="service__icon">
										<i class="fas fa-headphones-alt"></i>
									</div>
									<div class="service__info-wrap">

										<span class="service__info-text-1">Trung tâm trợ giúp
											24/7</span> <span class="service__info-text-2">Hỗ trợ 24/24
											để có trải nghiệm mua sắm suôn sẻ</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--====== End - Section Content ======-->
			</div>
			<!--====== End - Section 9 ======-->


			<!--====== Section 10 ======-->
			<div class="u-s-p-b-60">

				<!--====== Section Intro ======-->
				<div class="section__intro u-s-m-b-46">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="section__text-wrap">
									<h1 class="section__heading u-c-secondary u-s-m-b-12">MỚI
										NHẤT TỪ BLOG</h1>

									<span class="section__span u-c-silver">BẮT ĐẦU NGÀY
										MỚI VỚI TIN TỨC MỚI NHẤT</span>
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
							<div class="col-lg-4 col-md-6 u-s-m-b-30">
								<div class="bp-mini bp-mini--img u-h-100">
									<div class="bp-mini__thumbnail">

										<!--====== Image Code ======-->

										<a class="aspect aspect--bg-grey aspect--1366-768 u-d-block"
											href="blog-detail"> <img class="aspect__img"
											src="images/blog/post-2.jpg" alt=""></a>
										<!--====== End - Image Code ======-->
									</div>
									<div class="bp-mini__content">
										<div class="bp-mini__stat">

											<span class="bp-mini__stat-wrap"> <span
												class="bp-mini__publish-date"> <a> <span>25
															February 2018</span></a></span></span> <span class="bp-mini__stat-wrap"> <span
												class="bp-mini__preposition">By</span> <span
												class="bp-mini__author"> <a href="#">Dayle</a></span></span> <span
												class="bp-mini__stat"> <span class="bp-mini__comment">

													<a href="blog-detail"><i
														class="far fa-comments u-s-m-r-4"></i> <span>8</span></a>
											</span></span>
										</div>
										<div class="bp-mini__category">

											<a>Learning</a> <a>News</a> <a>Health</a>
										</div>

										<span class="bp-mini__h1"> <a href="blog-detail">Cuộc
												sống là một cuộc phiêu lưu phi thường</a></span>
										<p class="bp-mini__p">Lorem Ipsum is simply dummy text of
											the printing and typesetting industry.</p>
										<div class="blog-t-w">

											<a class="gl-tag btn--e-transparent-hover-brand-b-2">Travel</a>

											<a class="gl-tag btn--e-transparent-hover-brand-b-2">Culture</a>

											<a class="gl-tag btn--e-transparent-hover-brand-b-2">Place</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 u-s-m-b-30">
								<div class="bp-mini bp-mini--img u-h-100">
									<div class="bp-mini__thumbnail">

										<!--====== Image Code ======-->

										<a class="aspect aspect--bg-grey aspect--1366-768 u-d-block"
											href="blog-detail"> <img class="aspect__img"
											src="images/blog/post-12.jpg" alt=""></a>
										<!--====== End - Image Code ======-->
									</div>
									<div class="bp-mini__content">
										<div class="bp-mini__stat">

											<span class="bp-mini__stat-wrap"> <span
												class="bp-mini__publish-date"> <a> <span>25
															February 2018</span></a></span></span> <span class="bp-mini__stat-wrap"> <span
												class="bp-mini__preposition">By</span> <span
												class="bp-mini__author"> <a href="#">Dayle</a></span></span> <span
												class="bp-mini__stat"> <span class="bp-mini__comment">

													<a href="blog-detail"><i
														class="far fa-comments u-s-m-r-4"></i> <span>8</span></a>
											</span></span>
										</div>
										<div class="bp-mini__category">

											<a>Learning</a> <a>News</a> <a>Health</a>
										</div>

										<span class="bp-mini__h1"> <a href="blog-detail">Chờ
												cho đến khi nó mở</a></span>
										<p class="bp-mini__p">Lorem Ipsum is simply dummy text of
											the printing and typesetting industry.</p>
										<div class="blog-t-w">

											<a class="gl-tag btn--e-transparent-hover-brand-b-2">Travel</a>

											<a class="gl-tag btn--e-transparent-hover-brand-b-2">Culture</a>

											<a class="gl-tag btn--e-transparent-hover-brand-b-2">Place</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 u-s-m-b-30">
								<div class="bp-mini bp-mini--img u-h-100">
									<div class="bp-mini__thumbnail">

										<!--====== Image Code ======-->

										<a class="aspect aspect--bg-grey aspect--1366-768 u-d-block"
											href="blog-detail"> <img class="aspect__img"
											src="images/blog/post-5.jpg" alt=""></a>
										<!--====== End - Image Code ======-->
									</div>
									<div class="bp-mini__content">
										<div class="bp-mini__stat">

											<span class="bp-mini__stat-wrap"> <span
												class="bp-mini__publish-date"> <a> <span>25
															February 2018</span></a></span></span> <span class="bp-mini__stat-wrap"> <span
												class="bp-mini__preposition">By</span> <span
												class="bp-mini__author"> <a href="#">Dayle</a></span></span> <span
												class="bp-mini__stat"> <span class="bp-mini__comment">

													<a href="blog-detail"><i
														class="far fa-comments u-s-m-r-4"></i> <span>8</span></a>
											</span></span>
										</div>
										<div class="bp-mini__category">

											<a>Learning</a> <a>News</a> <a>Health</a>
										</div>

										<span class="bp-mini__h1"> <a href="blog-detail">Tell
												me difference between smoke and vape</a></span>
										<p class="bp-mini__p">Lorem Ipsum is simply dummy text of
											the printing and typesetting industry.</p>
										<div class="blog-t-w">

											<a class="gl-tag btn--e-transparent-hover-brand-b-2">Travel</a>

											<a class="gl-tag btn--e-transparent-hover-brand-b-2">Culture</a>

											<a class="gl-tag btn--e-transparent-hover-brand-b-2">Place</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--====== End - Section Content ======-->
			</div>
			<!--====== End - Section 10 ======-->


			<!--====== Section 11 ======-->
			<div class="u-s-p-b-90 u-s-m-b-30">

				<!--====== Section Intro ======-->
				<div class="section__intro u-s-m-b-46">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="section__text-wrap">
									<h1 class="section__heading u-c-secondary u-s-m-b-12">PHẢN
										HỒI CỦA KHÁCH HÀNG</h1>

									<span class="section__span u-c-silver">KHÁCH HÀNG CỦA
										CHÚNG TÔI NÓI GÌ</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--====== End - Section Intro ======-->


				<!--====== Section Content ======-->
				<div class="section__content">
					<div class="container">

						<!--====== Testimonial Slider ======-->
						<div class="slider-fouc">
							<div class="owl-carousel" id="testimonial-slider">
								<div class="testimonial">
									<div class="testimonial__img-wrap">

										<img class="testimonial__img" src="images/about/test-1.jpg"
											alt="">
									</div>
									<div class="testimonial__content-wrap">

										<span class="testimonial__double-quote"><i
											class="fas fa-quote-right"></i></span>
										<blockquote class="testimonial__block-quote">
											<p>"Far far away, behind the word mountains, far from the
												countries Vokalia and Consonantia, there live the blind
												texts. Separated they live in Bookmarksgrove right at the
												coast of the Semantics, a large language ocean."</p>
										</blockquote>

										<span class="testimonial__author">John D. / DVNTR Inc.</span>
									</div>
								</div>
								<div class="testimonial">
									<div class="testimonial__img-wrap">

										<img class="testimonial__img" src="images/about/test-2.jpg"
											alt="">
									</div>
									<div class="testimonial__content-wrap">

										<span class="testimonial__double-quote"><i
											class="fas fa-quote-right"></i></span>
										<blockquote class="testimonial__block-quote">
											<p>"Far far away, behind the word mountains, far from the
												countries Vokalia and Consonantia, there live the blind
												texts. Separated they live in Bookmarksgrove right at the
												coast of the Semantics, a large language ocean."</p>
										</blockquote>

										<span class="testimonial__author">John D. / DVNTR Inc.</span>
									</div>
								</div>
								<div class="testimonial">
									<div class="testimonial__img-wrap">

										<img class="testimonial__img" src="images/about/test-3.jpg"
											alt="">
									</div>
									<div class="testimonial__content-wrap">

										<span class="testimonial__double-quote"><i
											class="fas fa-quote-right"></i></span>
										<blockquote class="testimonial__block-quote">
											<p>"Far far away, behind the word mountains, far from the
												countries Vokalia and Consonantia, there live the blind
												texts. Separated they live in Bookmarksgrove right at the
												coast of the Semantics, a large language ocean."</p>
										</blockquote>

										<span class="testimonial__author">John D. / DVNTR Inc.</span>
									</div>
								</div>
								<div class="testimonial">
									<div class="testimonial__img-wrap">

										<img class="testimonial__img" src="images/about/test-4.jpg"
											alt="">
									</div>
									<div class="testimonial__content-wrap">

										<span class="testimonial__double-quote"><i
											class="fas fa-quote-right"></i></span>
										<blockquote class="testimonial__block-quote">
											<p>"Far far away, behind the word mountains, far from the
												countries Vokalia and Consonantia, there live the blind
												texts. Separated they live in Bookmarksgrove right at the
												coast of the Semantics, a large language ocean."</p>
										</blockquote>

										<span class="testimonial__author">John D. / DVNTR Inc.</span>
									</div>
								</div>
							</div>
						</div>
						<!--====== End - Testimonial Slider ======-->
					</div>
				</div>
				<!--====== End - Section Content ======-->
			</div>
			<!--====== End - Section 11 ======-->


			<!--====== Section 12 ======-->
			<div class="u-s-p-b-60">

				<!--====== Section Content ======-->
				<div class="section__content">
					<div class="container">

						<!--====== Brand Slider ======-->
						<div class="slider-fouc">
							<div class="owl-carousel" id="brand-slider" data-item="5">
								<div class="brand-slide">

									<a href="shop-side-version-2"> <img
										src="images/brand/b1.png" alt=""></a>
								</div>
								<div class="brand-slide">

									<a href="shop-side-version-2"> <img
										src="images/brand/b2.png" alt=""></a>
								</div>
								<div class="brand-slide">

									<a href="shop-side-version-2"> <img
										src="images/brand/b3.png" alt=""></a>
								</div>
								<div class="brand-slide">

									<a href="shop-side-version-2"> <img
										src="images/brand/b4.png" alt=""></a>
								</div>
								<div class="brand-slide">

									<a href="shop-side-version-2"> <img
										src="images/brand/b5.png" alt=""></a>
								</div>
								<div class="brand-slide">

									<a href="shop-side-version-2"> <img
										src="images/brand/b6.png" alt=""></a>
								</div>
							</div>
						</div>
						<!--====== End - Brand Slider ======-->
					</div>
				</div>
				<!--====== End - Section Content ======-->
			</div>
			<!--====== End - Section 12 ======-->
		</div>
		<!--====== End - App Content ======-->


		<!--====== Footer ======-->
		<jsp:include page="share_page/footer.jsp"></jsp:include>

		<!--====== Modal Section ======-->


		<!--====== End - Modal Section ======-->
	</div>
	<!--====== End - Main App ======-->


	<!--====== Google Analytics: change UA-XXXXX-Y to be your site's ID ======-->
	<!-- <script>
        window.ga = function () {
            ga.q.push(arguments)
        };
        ga.q = [];
        ga.l = +new Date;
        ga('create', 'UA-XXXXX-Y', 'auto');
        ga('send', 'pageview')
    </script>> -->
	<script src="https://www.google-analytics.com/analytics.js" async defer></script>

	<script src="js/vendor.js"></script>

	<script src="js/jquery.shopnav.js"></script>


	<script src="js/app.js"></script>


</body>
</html>