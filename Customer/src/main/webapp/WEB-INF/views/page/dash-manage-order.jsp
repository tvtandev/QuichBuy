<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="images/favicon.png" rel="shortcut icon">
    <title>Ludus - Quản Lý Đơn Hàng</title>

    <!--====== Google Font ======-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">

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

            <img class="preloader__img" src="images/preloader.png" alt=""></div>
    </div>

    <!--====== Main App ======-->
    <div id="app">

        <!--====== Main Header ======-->
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
                                    <li class="has-separator">

                                        <a href="/">Trang Chủ</a></li>
                                    <li class="is-marked">

                                        <a href="dash-manage-order">Tài Khoản Của Tôi</a></li>
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
                                    <div class="dash__box dash__box--bg-white dash__box--shadow u-s-m-b-30">
                                        <div class="dash__pad-1">
                                            <span class="dash__text u-s-m-b-16">Xin chào, Hòa
												Võ</span>
											<ul class="dash__f-list">
												<li><a class="dash-active" href="dashboard">Quản lý tài khoản của tôi</a></li>
												<li><a href="dash-my-profile">Thông
														tin của tôi</a></li>
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
                                    
                                </div>
                                <div class="col-lg-9 col-md-12">
                                    <h1 class="dash__h1 u-s-m-b-30">Chi tiết đặt hàng</h1>
                                    <div class="dash__box dash__box--shadow dash__box--radius dash__box--bg-white u-s-m-b-30">
                                        <div class="dash__pad-2">
                                            <div class="dash-l-r">
                                                <div>
                                                    <div class="manage-o__text-2 u-c-secondary">Đơn Hàng #305423126</div>
                                                    <div class="manage-o__text u-c-silver">Đặt vào ngày 6 tháng 6 năm 2023 09:08:37</div>
                                                </div>
                                                <div>
                                                    <div class="manage-o__text-2 u-c-silver">Tổng Cộng:

                                                        <span class="manage-o__text-2 u-c-secondary">$16.00</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dash__box dash__box--shadow dash__box--radius dash__box--bg-white u-s-m-b-30">
                                        <div class="dash__pad-2">
                                            <div class="manage-o">
                                                <div class="manage-o__header u-s-m-b-30">
                                                    <div class="manage-o__icon"><i class="fas fa-box u-s-m-r-5"></i>

                                                        <span class="manage-o__text">Gói 1</span></div>
                                                </div>
                                                <div class="dash-l-r">
                                                    <div class="manage-o__text u-c-secondary">Đã giao ngày 6 tháng 6 năm 2023</div>
                                                    <div class="manage-o__icon"><i class="fas fa-truck u-s-m-r-5"></i>

                                                        <span class="manage-o__text">Tiêu chuẩn</span></div>
                                                </div>
                                                <div class="manage-o__timeline">
                                                    <div class="timeline-row">
                                                        <div class="col-lg-4 u-s-m-b-30">
                                                            <div class="timeline-step">
                                                                <div class="timeline-l-i timeline-l-i--finish">

                                                                    <span class="timeline-circle"></span></div>

                                                                <span class="timeline-text">Xử lý</span>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 u-s-m-b-30">
                                                            <div class="timeline-step">
                                                                <div class="timeline-l-i timeline-l-i--finish">

                                                                    <span class="timeline-circle"></span></div>

                                                                <span class="timeline-text">Vận chuyển</span>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 u-s-m-b-30">
                                                            <div class="timeline-step">
                                                                <div class="timeline-l-i">

                                                                    <span class="timeline-circle"></span></div>

                                                                <span class="timeline-text">Đã giao hàng</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="manage-o__description">
                                                    <div class="description__container">
                                                        <div class="description__img-wrap">

                                                            <img class="u-img-fluid" src="images/product/electronic/product3.jpg" alt=""></div>
                                                        <div class="description-title">Áo thun Nam, Nữ</div>
                                                    </div>
                                                    <div class="description__info-wrap">
                                                        <div>

                                                            <span class="manage-o__text-2 u-c-silver">Số lượng:

                                                                <span class="manage-o__text-2 u-c-secondary">1</span></span></div>
                                                        <div>

                                                            <span class="manage-o__text-2 u-c-silver">Tổng:

                                                                <span class="manage-o__text-2 u-c-secondary">231.000 VNĐ</span></span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="dash__box dash__box--bg-white dash__box--shadow u-s-m-b-30">
                                                <div class="dash__pad-3">
                                                    <h2 class="dash__h2 u-s-m-b-8">Địa Chỉ Giao Hàng</h2>
                                                    <h2 class="dash__h2 u-s-m-b-8">Hòa Võ</h2>

                                                    <span class="dash__text-2">893 tổ 5, ấp Hòa Long, TP.Cao Lãnh</span>

                                                    <span class="dash__text-2">(+84) 0392677003</span>
                                                </div>
                                            </div>
                                            <div class="dash__box dash__box--bg-white dash__box--shadow dash__box--w">
                                                <div class="dash__pad-3">
                                                    <h2 class="dash__h2 u-s-m-b-8">Địa Chỉ Thanh Toán</h2>
                                                    <h2 class="dash__h2 u-s-m-b-8">Hòa Võ</h2>

                                                    <span class="dash__text-2">893 tổ 5, ấp Hòa Long, TP.Cao Lãnh</span>

                                                    <span class="dash__text-2">(+84) 0392677003</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="dash__box dash__box--bg-white dash__box--shadow u-h-100">
                                                <div class="dash__pad-3">
                                                    <h2 class="dash__h2 u-s-m-b-8">Tổng Tóm Tắt</h2>
                                                    <div class="dash-l-r u-s-m-b-8">
                                                        <div class="manage-o__text-2 u-c-secondary">Tổng Phụ</div>
                                                        <div class="manage-o__text-2 u-c-secondary">320.000 VNĐ</div>
                                                    </div>
                                                    <div class="dash-l-r u-s-m-b-8">
                                                        <div class="manage-o__text-2 u-c-secondary">Phí Vận Chuyển</div>
                                                        <div class="manage-o__text-2 u-c-secondary">16.000 VNĐ</div>
                                                    </div>
                                                    <div class="dash-l-r u-s-m-b-8">
                                                        <div class="manage-o__text-2 u-c-secondary">Tổng Cộng</div>
                                                        <div class="manage-o__text-2 u-c-secondary">336.000 VNĐ</div>
                                                    </div>

                                                    <span class="dash__text-2">Thanh toán bằng tiền mặt khi nhận hàng</span>
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
                            <h1 class="app-setting__h1">JavaScript is disabled in your browser.</h1>

                            <span class="app-setting__text">Please enable JavaScript in your browser or upgrade to a JavaScript-capable browser.</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </noscript>
</body>
</html>