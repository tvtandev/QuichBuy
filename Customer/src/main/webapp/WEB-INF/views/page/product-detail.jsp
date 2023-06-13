<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="images/favicon.png" rel="shortcut icon">
<title>QuickBuy - ${product.productName}</title>

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

		<!--====== Main Header ======-->
		<jsp:include page="../share_page/header.jsp"></jsp:include>


		<!--====== App Content ======-->
		<div class="app-content">

			<!--====== Section 1 ======-->
			<div class="u-s-p-t-90">
				<div class="container">
					<div class="row">
						<div class="col-lg-5">

							<!--====== Product Breadcrumb ======-->
							<div class="pd-breadcrumb u-s-m-b-30">
								<ul class="pd-breadcrumb__list">
									<li class="has-separator"><a href="/">Trang chủ</a></li>
									<li class="is-marked"><a href="shop-side-version-2">${product.productName}</a></li>
								</ul>
							</div>
							<!--====== End - Product Breadcrumb ======-->


							<!--====== Product Detail Zoom ======-->

							<div class="pd u-s-m-b-30">
								<div class="slider-fouc pd-wrap">


									<div id="pd-o-initiate">
										<c:forEach items="${images}" var="i">
											<div class="pd-o-img-wrap" data-src="${i.path}">
												<img class="u-img-fluid" src="${i.path}"
													data-zoom-image="${i.path}" alt="">
											</div>
										</c:forEach>

									</div>



									<span class="pd-text">Nhấn vào để xem ảnh</span>
								</div>
								<div class="u-s-m-t-15">
									<div class="slider-fouc">
										<div id="pd-o-thumbnail">

											<c:forEach items="${images}" var="image">
												<div>

													<img class="u-img-fluid" src="${image.path}" alt="">
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
							<!--====== End - Product Detail Zoom ======-->
						</div>
						<div class="col-lg-7">


							<!--====== Product Right Side Details ======-->
							<div class="pd-detail">
								<div>

									<span class="pd-detail__name">${product.productName}</span>
								</div>
								<div>
									<div class="pd-detail__inline">

										<span class="pd-detail__price">${product.price} VNĐ</span> <span
											class="pd-detail__discount">(12% GIẢM)</span>
										<del class="pd-detail__del">322.000 VNĐ</del>
									</div>
								</div>
								<div class="u-s-m-b-15">
									<div class="pd-detail__rating gl-rating-style">
										<i class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star-half-alt"></i> <span
											class="pd-detail__review u-s-m-l-4"> <a
											data-click-scroll="#view-review">23 Đánh giá</a></span>
									</div>
								</div>
								<div class="u-s-m-b-15">
									<div class="pd-detail__inline">

										<span class="pd-detail__stock">${product.inStock} trong
											kho</span> <span class="pd-detail__left">Chỉ còn
											${product.remaining}</span>
									</div>
								</div>
								<div class="u-s-m-b-15">

									<span class="pd-detail__preview-desc">Áo thun unisex nam
										nữ form rộng tay lỡ phông teen cổ tròn oversize cotton giá rẻ
										basic đen trắng tee pull STANFORD là một chiếc áo thun có
										thiết kế dễ mặc, phù hợp với cả nam và nữ. Áo có form rộng tay
										lỡ phông phù hợp với thời trang teen, cổ tròn và oversize cho
										vẻ ngoài thật thoải mái và đáng yêu. Chất liệu cotton thoáng
										mát, mềm mại, dễ chịu khi mặc. Sản phẩm có giá cả hợp lý và
										phù hợp với các dịp thường ngày.</span>
								</div>
								<div class="u-s-m-b-15">
									<div class="pd-detail__inline">

										<span class="pd-detail__click-wrap"><i
											class="far fa-heart u-s-m-r-6"></i> <a href="signin">Thêm
												vào danh sách yêu thích </a> <span
											class="pd-detail__click-count">(222)</span></span>
									</div>
								</div>
								<div class="u-s-m-b-15">
									<div class="pd-detail__inline">

										<span class="pd-detail__click-wrap"><i
											class="far fa-envelope u-s-m-r-6"></i> <a href="signin">Gửi
												email cho tôi khi giá giảm</a> <span
											class="pd-detail__click-count">(20)</span></span>
									</div>
								</div>
								<div class="u-s-m-b-15">
									<ul class="pd-social-list">
										<li><a class="s-fb--color-hover" href="#"><i
												class="fab fa-facebook-f"></i></a></li>
										<li><a class="s-tw--color-hover" href="#"><i
												class="fab fa-twitter"></i></a></li>
										<li><a class="s-insta--color-hover" href="#"><i
												class="fab fa-instagram"></i></a></li>
										<li><a class="s-wa--color-hover" href="#"><i
												class="fab fa-whatsapp"></i></a></li>
										<li><a class="s-gplus--color-hover" href="#"><i
												class="fab fa-google-plus-g"></i></a></li>
									</ul>
								</div>
								<div class="u-s-m-b-15">
									<form action="add-to-cart?product-id=${product.productID}" method="post"
										class="pd-detail__form">

										<div class="u-s-m-b-15">

											<span class="pd-detail__label u-s-m-b-8">Mã sản
												phẩm:</span>
											<div class="pd-detail__color">



											</div>
										</div>

										<div class="u-s-m-b-15">

											<span class="pd-detail__label u-s-m-b-8">Màu sắc:</span>
											<div class="pd-detail__color">

												<c:forEach items="${productColors}" var="productColor">
													<div class="color__radio">
														<input type="radio" id="jet"
															value="${productColor.color.colorName}" name="color"
															checked> <label class="color__radio-label"
															for="jet"
															style="background-color: ${productColor.color.colorCode}"></label>
													</div>
												</c:forEach>


											</div>
										</div>
										<div class="u-s-m-b-15">

											<span class="pd-detail__label u-s-m-b-8">Kích thước:</span>
											<div class="pd-detail__size">

												<c:forEach items="${productSizes}" var="productSize">
													<div class="size__radio">
														<input type="radio" id="xs"
															value="${productSize.size.sizeName}" name="size" checked>
														<label class="size__radio-label" for="xs">${productSize.size.sizeName}</label>
													</div>
												</c:forEach>
											</div>
										</div>
										<div class="pd-detail-inline-2">
											<div class="u-s-m-b-15">

												<!--====== Input Counter ======-->
												<div class="input-counter">

													<span
														style="width: 35px; border-right: 1px solid rgba(0, 0, 0, .09);"
														class="input-counter__minus fas fa-minus"></span> <input
														style="background: none; border-radius: 0; border: 1px solid rgba(0, 0, 0, .09);"
														class="input-counter__text input-counter--text-primary-style"
														type="text" name="quantity" value="1" data-min="1"
														data-max="${product.remaining}"> <span
														style="width: 35px; border-left: 1px solid rgba(0, 0, 0, .09)"
														class="input-counter__plus fas fa-plus"></span>
												</div>
												<!--====== End - Input Counter ======-->
											</div>
											<div class="u-s-m-b-15">
												<span style="font-size: 13px">${product.remaining}
													sản phảm có sẵn</span>
											</div>
										</div>
										<div class="u-s-m-b-15">

											<c:if test="${sessionScope.acc == null}">
												<button formmethod="get" formaction="signin"
													class="btn btn--e-brand-b-2">Thêm vào giỏ hàng</button>
											</c:if>

											<c:if test="${sessionScope.acc != null}">
												<button class="btn btn--e-brand-b-2" type="submit">Thêm
													vào giỏ hàng</button>
											</c:if>
										</div>
									</form>
								</div>
								<div class="u-s-m-b-15">

									<span class="pd-detail__label u-s-m-b-8">Chính sách sản
										phẩm:</span>
									<ul class="pd-detail__policy-list">
										<li><i class="fas fa-check-circle u-s-m-r-8"></i> <span>Bảo
												vệ người mua.</span></li>
										<li><i class="fas fa-check-circle u-s-m-r-8"></i> <span>Hoàn
												trả đầy đủ nếu bạn không nhận được đơn đặt hàng của bạn.</span></li>
										<li><i class="fas fa-check-circle u-s-m-r-8"></i> <span>Chấp
												nhận đổi trả nếu sản phẩm không như mô tả.</span></li>
									</ul>
								</div>
							</div>
							<!--====== End - Product Right Side Details ======-->


						</div>
					</div>
				</div>
			</div>

			<!--====== Product Detail Tab ======-->
			<div class="u-s-p-y-90">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="pd-tab">
								<div class="u-s-m-b-30">
									<ul class="nav pd-tab__list">
										<li class="nav-item"><a class="nav-link"
											data-toggle="tab" href="#pd-desc">MÔ TẢ</a></li>
										<li class="nav-item"><a class="nav-link active"
											id="view-review" data-toggle="tab" href="#pd-rev">ĐÁNH
												GIÁ <span>(23)</span>
										</a></li>
									</ul>
								</div>
								<div class="tab-content">

									<!--====== Tab 1 ======-->
									<div class="tab-pane" id="pd-desc">
										<div class="pd-tab__desc">
											<div class="u-s-m-b-15">
												<p>${product.description}</p>
											</div>
											<div class="u-s-m-b-30">
												<iframe src="https://www.youtube.com/embed/qKqSBm07KZk"
													allowfullscreen></iframe>
											</div>
											<div class="u-s-m-b-30">
												<ul>
													<li><i class="fas fa-check u-s-m-r-8"></i> <span>Bảo
															vệ người mua.</span></li>
													<li><i class="fas fa-check u-s-m-r-8"></i> <span>Hoàn
															trả đầy đủ nếu bạn không nhận được đơn đặt hàng của bạn.</span></li>
													<li><i class="fas fa-check u-s-m-r-8"></i> <span>Chấp
															nhận đổi trả nếu sản phẩm không như mô tả.</span></li>
												</ul>
											</div>
											<div class="u-s-m-b-15">
												<h4>THÔNG TIN SẢN PHẨM</h4>
											</div>
											<div class="u-s-m-b-15">
												<div class="pd-table gl-scroll">
													<table>
														<tbody>
															<tr>
																<td>Thương hiệu</td>
																<td>${product.brand.brandName}</td>
															</tr>
															<tr>
																<td>Màu sắc</td>

																<td><c:forEach items="${productColors}" var="color">
																	${color.color.colorName},
																	</c:forEach></td>

															</tr>
															<tr>
																<td>Xuất xứ</td>
																<td>${product.origin}</td>
															</tr>
															<tr>
																<td>Số sản phẩm còn lại</td>
																<td>${product.remaining}</td>
															</tr>
															<tr>
																<td>Gửi từ</td>
																<td>${product.sentFrom}</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
									<!--====== End - Tab 1 ======-->

									<!--====== Tab 3 ======-->
									<div class="tab-pane fade show active" id="pd-rev">
										<div class="pd-tab__rev">
											<div class="u-s-m-b-30">
												<div class="pd-tab__rev-score">
													<div class="u-s-m-b-8">
														<h2>23 Đánh giá - 4.6 (Tổng thể)</h2>
													</div>
													<div class="gl-rating-style-2 u-s-m-b-8">
														<i class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star-half-alt"></i>
													</div>
													<div class="u-s-m-b-8">
														<h4>Chúng tôi muốn nghe từ bạn!</h4>
													</div>

													<span class="gl-text">Hãy cho chúng tôi những gì bạn
														nghĩ về sản phẩm này </span>
												</div>
											</div>
											<div class="u-s-m-b-30">
												<form class="pd-tab__rev-f1">
													<div class="rev-f1__group">
														<div class="u-s-m-b-15">
															<h2>23 Đánh giá cho áo thun</h2>
														</div>
														<div class="u-s-m-b-15">

															<label for="sort-review"></label><select
																class="select-box select-box--primary-style"
																id="sort-review">
																<option selected>Sắp xếp theo: Đánh giá tốt
																	nhất</option>
																<option>Sắp xếp theo: Xếp hạng tệ nhất</option>
															</select>
														</div>
													</div>
													<div class="rev-f1__review">
														<div class="review-o u-s-m-b-15">
															<div class="review-o__info u-s-m-b-8">

																<span class="review-o__name">Hòa Võ</span> <span
																	class="review-o__date">6 Feb 2023 10:57:43</span>
															</div>
															<div class="review-o__rating gl-rating-style u-s-m-b-8">
																<i class="fas fa-star"></i><i class="fas fa-star"></i><i
																	class="fas fa-star"></i><i class="fas fa-star"></i><i
																	class="far fa-star"></i> <span>(4)</span>
															</div>
															<p class="review-o__text">Sản phẩm chất lượng
																đúng với mô tả</p>
														</div>
														<div class="review-o u-s-m-b-15">
															<div class="review-o__info u-s-m-b-8">

																<span class="review-o__name">Văn Tấn</span> <span
																	class="review-o__date">6 Feb 2023 10:57:43</span>
															</div>
															<div class="review-o__rating gl-rating-style u-s-m-b-8">
																<i class="fas fa-star"></i><i class="fas fa-star"></i><i
																	class="fas fa-star"></i><i class="fas fa-star"></i><i
																	class="far fa-star"></i> <span>(4)</span>
															</div>
															<p class="review-o__text">Sản phẩm chất lượng
																nhưng hàng giao hơi lâu</p>
														</div>
														<div class="review-o u-s-m-b-15">
															<div class="review-o__info u-s-m-b-8">

																<span class="review-o__name">Tấn Phúc</span> <span
																	class="review-o__date">6 Feb 2023 10:57:43</span>
															</div>
															<div class="review-o__rating gl-rating-style u-s-m-b-8">
																<i class="fas fa-star"></i><i class="fas fa-star"></i><i
																	class="fas fa-star"></i><i class="far fa-star"></i><i
																	class="far fa-star"></i> <span>(3)</span>
															</div>
															<p class="review-o__text">Shop phản hồi chậm</p>
														</div>
													</div>
												</form>
											</div>
											<div class="u-s-m-b-30">
												<form class="pd-tab__rev-f2">
													<h2 class="u-s-m-b-15">Thêm một bài đánh giá</h2>

													<span class="gl-text u-s-m-b-15">Địa chỉ email của
														bạn sẽ không được công bố. Các trường bắt buộc được đánh
														dấu *</span>
													<div class="u-s-m-b-30">
														<div class="rev-f2__table-wrap gl-scroll">
															<table class="rev-f2__table">
																<thead>
																	<tr>
																		<th>
																			<div class="gl-rating-style-2">
																				<i class="fas fa-star"></i> <span>(1)</span>
																			</div>
																		</th>
																		<th>
																			<div class="gl-rating-style-2">
																				<i class="fas fa-star"></i><i
																					class="fas fa-star-half-alt"></i> <span>(1.5)</span>
																			</div>
																		</th>
																		<th>
																			<div class="gl-rating-style-2">
																				<i class="fas fa-star"></i><i class="fas fa-star"></i>

																				<span>(2)</span>
																			</div>
																		</th>
																		<th>
																			<div class="gl-rating-style-2">
																				<i class="fas fa-star"></i><i class="fas fa-star"></i><i
																					class="fas fa-star-half-alt"></i> <span>(2.5)</span>
																			</div>
																		</th>
																		<th>
																			<div class="gl-rating-style-2">
																				<i class="fas fa-star"></i><i class="fas fa-star"></i><i
																					class="fas fa-star"></i> <span>(3)</span>
																			</div>
																		</th>
																		<th>
																			<div class="gl-rating-style-2">
																				<i class="fas fa-star"></i><i class="fas fa-star"></i><i
																					class="fas fa-star"></i><i
																					class="fas fa-star-half-alt"></i> <span>(3.5)</span>
																			</div>
																		</th>
																		<th>
																			<div class="gl-rating-style-2">
																				<i class="fas fa-star"></i><i class="fas fa-star"></i><i
																					class="fas fa-star"></i><i class="fas fa-star"></i>

																				<span>(4)</span>
																			</div>
																		</th>
																		<th>
																			<div class="gl-rating-style-2">
																				<i class="fas fa-star"></i><i class="fas fa-star"></i><i
																					class="fas fa-star"></i><i class="fas fa-star"></i><i
																					class="fas fa-star-half-alt"></i> <span>(4.5)</span>
																			</div>
																		</th>
																		<th>
																			<div class="gl-rating-style-2">
																				<i class="fas fa-star"></i><i class="fas fa-star"></i><i
																					class="fas fa-star"></i><i class="fas fa-star"></i><i
																					class="fas fa-star"></i> <span>(5)</span>
																			</div>
																		</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>
																			<!--====== Radio Box ======-->
																			<div class="radio-box">

																				<input type="radio" id="star-1" name="rating">
																				<div
																					class="radio-box__state radio-box__state--primary">

																					<label class="radio-box__label" for="star-1"></label>
																				</div>
																			</div> <!--====== End - Radio Box ======-->
																		</td>
																		<td>
																			<!--====== Radio Box ======-->
																			<div class="radio-box">

																				<input type="radio" id="star-1.5" name="rating">
																				<div
																					class="radio-box__state radio-box__state--primary">

																					<label class="radio-box__label" for="star-1.5"></label>
																				</div>
																			</div> <!--====== End - Radio Box ======-->
																		</td>
																		<td>
																			<!--====== Radio Box ======-->
																			<div class="radio-box">

																				<input type="radio" id="star-2" name="rating">
																				<div
																					class="radio-box__state radio-box__state--primary">

																					<label class="radio-box__label" for="star-2"></label>
																				</div>
																			</div> <!--====== End - Radio Box ======-->
																		</td>
																		<td>
																			<!--====== Radio Box ======-->
																			<div class="radio-box">

																				<input type="radio" id="star-2.5" name="rating">
																				<div
																					class="radio-box__state radio-box__state--primary">

																					<label class="radio-box__label" for="star-2.5"></label>
																				</div>
																			</div> <!--====== End - Radio Box ======-->
																		</td>
																		<td>
																			<!--====== Radio Box ======-->
																			<div class="radio-box">

																				<input type="radio" id="star-3" name="rating">
																				<div
																					class="radio-box__state radio-box__state--primary">

																					<label class="radio-box__label" for="star-3"></label>
																				</div>
																			</div> <!--====== End - Radio Box ======-->
																		</td>
																		<td>
																			<!--====== Radio Box ======-->
																			<div class="radio-box">

																				<input type="radio" id="star-3.5" name="rating">
																				<div
																					class="radio-box__state radio-box__state--primary">

																					<label class="radio-box__label" for="star-3.5"></label>
																				</div>
																			</div> <!--====== End - Radio Box ======-->
																		</td>
																		<td>
																			<!--====== Radio Box ======-->
																			<div class="radio-box">

																				<input type="radio" id="star-4" name="rating">
																				<div
																					class="radio-box__state radio-box__state--primary">

																					<label class="radio-box__label" for="star-4"></label>
																				</div>
																			</div> <!--====== End - Radio Box ======-->
																		</td>
																		<td>
																			<!--====== Radio Box ======-->
																			<div class="radio-box">

																				<input type="radio" id="star-4.5" name="rating">
																				<div
																					class="radio-box__state radio-box__state--primary">

																					<label class="radio-box__label" for="star-4.5"></label>
																				</div>
																			</div> <!--====== End - Radio Box ======-->
																		</td>
																		<td>
																			<!--====== Radio Box ======-->
																			<div class="radio-box">

																				<input type="radio" id="star-5" name="rating">
																				<div
																					class="radio-box__state radio-box__state--primary">

																					<label class="radio-box__label" for="star-5"></label>
																				</div>
																			</div> <!--====== End - Radio Box ======-->
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
													<div class="rev-f2__group">
														<div class="u-s-m-b-15">

															<label class="gl-label" for="reviewer-text">ĐÁNH
																GIÁ CỦA BẠN *</label>
															<textarea class="text-area text-area--primary-style"
																id="reviewer-text"></textarea>
														</div>
														<div>
															<p class="u-s-m-b-30">

																<label class="gl-label" for="reviewer-name">HỌ
																	VÀ TÊN *</label> <input
																	class="input-text input-text--primary-style"
																	type="text" id="reviewer-name">
															</p>
															<p class="u-s-m-b-30">

																<label class="gl-label" for="reviewer-email">EMAIL
																	*</label> <input class="input-text input-text--primary-style"
																	type="text" id="reviewer-email">
															</p>
														</div>
													</div>
													<div>
														<button class="btn btn--e-brand-shadow" type="submit">GỬI</button>
													</div>
												</form>
											</div>
										</div>
									</div>
									<!--====== End - Tab 3 ======-->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--====== End - Product Detail Tab ======-->
			<div class="u-s-p-b-90">

				<!--====== Section Intro ======-->
				<div class="section__intro u-s-m-b-46">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="section__text-wrap">
									<h1 class="section__heading u-c-secondary u-s-m-b-12">SẢN
										PHẨM TƯƠNG TỰ</h1>

									<span class="section__span u-c-grey">CÁC SẢN PHẨM CÓ
										THỂ BẠN SẼ QUAN TÂM</span>
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
												src="images/product/electronic/product1.jpg" alt=""></a>
											<div class="product-o__action-wrap">
												<ul class="product-o__action-list">
													<li><a data-modal="modal" data-modal-id="#quick-look"
														data-tooltip="tooltip" data-placement="top"
														title="Quick View"><i class="fas fa-search-plus"></i></a></li>
													<li><a data-modal="modal" data-modal-id="#add-to-cart"
														data-tooltip="tooltip" data-placement="top"
														title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
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
											class="product-o__name"> <a href="product-detail">Beats
												Bomb Wireless Headphone</a></span>
										<div class="product-o__rating gl-rating-style">
											<i class="fas fa-star"></i><i class="fas fa-star"></i><i
												class="fas fa-star"></i><i class="fas fa-star"></i><i
												class="fas fa-star"></i> <span class="product-o__review">(20)</span>
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
												src="images/product/electronic/product2.jpg" alt=""></a>
											<div class="product-o__action-wrap">
												<ul class="product-o__action-list">
													<li><a data-modal="modal" data-modal-id="#quick-look"
														data-tooltip="tooltip" data-placement="top"
														title="Quick View"><i class="fas fa-search-plus"></i></a></li>
													<li><a data-modal="modal" data-modal-id="#add-to-cart"
														data-tooltip="tooltip" data-placement="top"
														title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
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
											class="product-o__name"> <a href="product-detail">Red
												Wireless Headphone</a></span>
										<div class="product-o__rating gl-rating-style">
											<i class="fas fa-star"></i><i class="fas fa-star"></i><i
												class="fas fa-star"></i><i class="fas fa-star"></i><i
												class="fas fa-star"></i> <span class="product-o__review">(20)</span>
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
												src="images/product/electronic/product3.jpg" alt=""></a>
											<div class="product-o__action-wrap">
												<ul class="product-o__action-list">
													<li><a data-modal="modal" data-modal-id="#quick-look"
														data-tooltip="tooltip" data-placement="top"
														title="Quick View"><i class="fas fa-search-plus"></i></a></li>
													<li><a data-modal="modal" data-modal-id="#add-to-cart"
														data-tooltip="tooltip" data-placement="top"
														title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
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
											class="product-o__name"> <a href="product-detail">Yellow
												Wireless Headphone</a></span>
										<div class="product-o__rating gl-rating-style">
											<i class="fas fa-star"></i><i class="fas fa-star"></i><i
												class="fas fa-star"></i><i class="fas fa-star"></i><i
												class="fas fa-star"></i> <span class="product-o__review">(20)</span>
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
												src="images/product/electronic/product23.jpg" alt=""></a>
											<div class="product-o__action-wrap">
												<ul class="product-o__action-list">
													<li><a data-modal="modal" data-modal-id="#quick-look"
														data-tooltip="tooltip" data-placement="top"
														title="Quick View"><i class="fas fa-search-plus"></i></a></li>
													<li><a data-modal="modal" data-modal-id="#add-to-cart"
														data-tooltip="tooltip" data-placement="top"
														title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
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
											class="product-o__name"> <a href="product-detail">Razor
												Gear Ultra Slim 8GB Ram</a></span>
										<div class="product-o__rating gl-rating-style">
											<i class="fas fa-star"></i><i class="fas fa-star"></i><i
												class="fas fa-star"></i><i class="fas fa-star"></i><i
												class="fas fa-star"></i> <span class="product-o__review">(20)</span>
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
												src="images/product/electronic/product26.jpg" alt=""></a>
											<div class="product-o__action-wrap">
												<ul class="product-o__action-list">
													<li><a data-modal="modal" data-modal-id="#quick-look"
														data-tooltip="tooltip" data-placement="top"
														title="Quick View"><i class="fas fa-search-plus"></i></a></li>
													<li><a data-modal="modal" data-modal-id="#add-to-cart"
														data-tooltip="tooltip" data-placement="top"
														title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
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
											class="product-o__name"> <a href="product-detail">Razor
												Gear Ultra Slim 12GB Ram</a></span>
										<div class="product-o__rating gl-rating-style">
											<i class="fas fa-star"></i><i class="fas fa-star"></i><i
												class="fas fa-star"></i><i class="fas fa-star"></i><i
												class="fas fa-star"></i> <span class="product-o__review">(20)</span>
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
												src="images/product/electronic/product30.jpg" alt=""></a>
											<div class="product-o__action-wrap">
												<ul class="product-o__action-list">
													<li><a data-modal="modal" data-modal-id="#quick-look"
														data-tooltip="tooltip" data-placement="top"
														title="Quick View"><i class="fas fa-search-plus"></i></a></li>
													<li><a data-modal="modal" data-modal-id="#add-to-cart"
														data-tooltip="tooltip" data-placement="top"
														title="Add to Cart"><i class="fas fa-plus-circle"></i></a></li>
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
											class="product-o__name"> <a href="product-detail">Razor
												Gear Ultra Slim 16GB Ram</a></span>
										<div class="product-o__rating gl-rating-style">
											<i class="fas fa-star"></i><i class="fas fa-star"></i><i
												class="fas fa-star"></i><i class="fas fa-star"></i><i
												class="fas fa-star"></i> <span class="product-o__review">(20)</span>
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
			<!--====== End - Section 1 ======-->
		</div>
		<!--====== End - App Content ======-->


		<!--====== Footer ======-->
		<jsp:include page="../share_page/footer.jsp"></jsp:include>


		<!--====== Modal Section ======-->


		<!--====== Quick Look Modal ======-->
		<div class="modal fade" id="quick-look">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content modal--shadow">

					<button class="btn dismiss-button fas fa-times" type="button"
						data-dismiss="modal"></button>
					<div class="modal-body">
						<div class="row">
							<div class="col-lg-5">

								<!--====== Product Breadcrumb ======-->
								<div class="pd-breadcrumb u-s-m-b-30">
									<ul class="pd-breadcrumb__list">
										<li class="has-separator"><a href="/">Home</a></li>
										<li class="has-separator"><a href="shop-side-version-2">Electronics</a></li>
										<li class="has-separator"><a href="shop-side-version-2">DSLR
												Cameras</a></li>
										<li class="is-marked"><a href="shop-side-version-2">Nikon
												Cameras</a></li>
									</ul>
								</div>
								<!--====== End - Product Breadcrumb ======-->


								<!--====== Product Detail ======-->
								<div class="pd u-s-m-b-30">
									<div class="pd-wrap">
										<div id="js-product-detail-modal">
											<div>

												<img class="u-img-fluid"
													src="images/product/product-d-1.jpg" alt="">
											</div>
											<div>

												<img class="u-img-fluid"
													src="images/product/product-d-2.jpg" alt="">
											</div>
											<div>

												<img class="u-img-fluid"
													src="images/product/product-d-3.jpg" alt="">
											</div>
											<div>

												<img class="u-img-fluid"
													src="images/product/product-d-4.jpg" alt="">
											</div>
											<div>

												<img class="u-img-fluid"
													src="images/product/product-d-5.jpg" alt="">
											</div>
										</div>
									</div>
									<div class="u-s-m-t-15">
										<div id="js-product-detail-modal-thumbnail">
											<div>

												<img class="u-img-fluid"
													src="images/product/product-d-1.jpg" alt="">
											</div>
											<div>

												<img class="u-img-fluid"
													src="images/product/product-d-2.jpg" alt="">
											</div>
											<div>

												<img class="u-img-fluid"
													src="images/product/product-d-3.jpg" alt="">
											</div>
											<div>

												<img class="u-img-fluid"
													src="images/product/product-d-4.jpg" alt="">
											</div>
											<div>

												<img class="u-img-fluid"
													src="images/product/product-d-5.jpg" alt="">
											</div>
										</div>
									</div>
								</div>
								<!--====== End - Product Detail ======-->
							</div>
							<div class="col-lg-7">

								<!--====== Product Right Side Details ======-->
								<div class="pd-detail">
									<div>

										<span class="pd-detail__name">Nikon Camera 4k Lens Zoom
											Pro</span>
									</div>
									<div>
										<div class="pd-detail__inline">

											<span class="pd-detail__price">$6.99</span> <span
												class="pd-detail__discount">(76% OFF)</span>
											<del class="pd-detail__del">$28.97</del>
										</div>
									</div>
									<div class="u-s-m-b-15">
										<div class="pd-detail__rating gl-rating-style">
											<i class="fas fa-star"></i><i class="fas fa-star"></i><i
												class="fas fa-star"></i><i class="fas fa-star"></i><i
												class="fas fa-star-half-alt"></i> <span
												class="pd-detail__review u-s-m-l-4"> <a
												href="product-detail">23 Reviews</a></span>
										</div>
									</div>
									<div class="u-s-m-b-15">
										<div class="pd-detail__inline">

											<span class="pd-detail__stock">200 in stock</span> <span
												class="pd-detail__left">Only 2 left</span>
										</div>
									</div>
									<div class="u-s-m-b-15">

										<span class="pd-detail__preview-desc">Lorem Ipsum is
											simply dummy text of the printing and typesetting industry.
											Lorem Ipsum has been the industry's standard dummy text ever
											since the 1500s, when an unknown printer took a galley of
											type and scrambled it to make a type specimen book.</span>
									</div>
									<div class="u-s-m-b-15">
										<div class="pd-detail__inline">

											<span class="pd-detail__click-wrap"><i
												class="far fa-heart u-s-m-r-6"></i> <a href="signin">Add
													to Wishlist</a> <span class="pd-detail__click-count">(222)</span></span>
										</div>
									</div>
									<div class="u-s-m-b-15">
										<div class="pd-detail__inline">

											<span class="pd-detail__click-wrap"><i
												class="far fa-envelope u-s-m-r-6"></i> <a href="signin">Email
													me When the price drops</a> <span
												class="pd-detail__click-count">(20)</span></span>
										</div>
									</div>
									<div class="u-s-m-b-15">
										<ul class="pd-social-list">
											<li><a class="s-fb--color-hover" href="#"><i
													class="fab fa-facebook-f"></i></a></li>
											<li><a class="s-tw--color-hover" href="#"><i
													class="fab fa-twitter"></i></a></li>
											<li><a class="s-insta--color-hover" href="#"><i
													class="fab fa-instagram"></i></a></li>
											<li><a class="s-wa--color-hover" href="#"><i
													class="fab fa-whatsapp"></i></a></li>
											<li><a class="s-gplus--color-hover" href="#"><i
													class="fab fa-google-plus-g"></i></a></li>
										</ul>
									</div>
									<div class="u-s-m-b-15">
										<form class="pd-detail__form">
											<div class="pd-detail-inline-2">
												<div class="u-s-m-b-15">

													<!--====== Input Counter ======-->
													<div class="input-counter">

														<span class="input-counter__minus fas fa-minus"></span> <input
															class="input-counter__text input-counter--text-primary-style"
															type="text" value="1" data-min="1" data-max="1000">

														<span class="input-counter__plus fas fa-plus"></span>
													</div>
													<!--====== End - Input Counter ======-->
												</div>
												<div class="u-s-m-b-15">

													<button class="btn btn--e-brand-b-2" type="submit">Add
														to Cart</button>
												</div>
											</div>
										</form>
									</div>
									<div class="u-s-m-b-15">

										<span class="pd-detail__label u-s-m-b-8">Product
											Policy:</span>
										<ul class="pd-detail__policy-list">
											<li><i class="fas fa-check-circle u-s-m-r-8"></i> <span>Buyer
													Protection.</span></li>
											<li><i class="fas fa-check-circle u-s-m-r-8"></i> <span>Full
													Refund if you don't receive your order.</span></li>
											<li><i class="fas fa-check-circle u-s-m-r-8"></i> <span>Returns
													accepted if product not as described.</span></li>
										</ul>
									</div>
								</div>
								<!--====== End - Product Right Side Details ======-->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--====== End - Quick Look Modal ======-->


		<!--====== Add to Cart Modal ======-->
		<div class="modal fade" id="add-to-cart">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content modal-radius modal-shadow">

					<button class="btn dismiss-button fas fa-times" type="button"
						data-dismiss="modal"></button>
					<div class="modal-body">
						<div class="row">
							<div class="col-lg-6 col-md-12">
								<div class="success u-s-m-b-30">
									<div class="success__text-wrap">
										<i class="fas fa-check"></i> <span>Item is added
											successfully!</span>
									</div>
									<div class="success__img-wrap">

										<img class="u-img-fluid"
											src="images/product/electronic/product1.jpg" alt="">
									</div>
									<div class="success__info-wrap">

										<span class="success__name">Beats Bomb Wireless
											Headphone</span> <span class="success__quantity">Quantity: 1</span>

										<span class="success__price">$170.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-12">
								<div class="s-option">

									<span class="s-option__text">1 item (s) in your cart</span>
									<div class="s-option__link-box">

										<a class="s-option__link btn--e-white-brand-shadow"
											data-dismiss="modal">CONTINUE SHOPPING</a> <a
											class="s-option__link btn--e-white-brand-shadow" href="cart">VIEW
											CART</a> <a class="s-option__link btn--e-brand-shadow"
											href="checkout">PROCEED TO CHECKOUT</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--====== End - Add to Cart Modal ======-->
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