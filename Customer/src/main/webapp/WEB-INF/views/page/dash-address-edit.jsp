<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="images/favicon.png" rel="shortcut icon">
    <title>Ludus - Chỉnh Sủa Địa Chỉ</title>

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

                                        <a href="/">Trang chủ</a></li>
                                    <li class="is-marked">

                                        <a href="dash-address-edit">Tài khoản của tôi</a></li>
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

                                            <span class="dash__text u-s-m-b-16">Xin chào, Hòa Võ</span>
                                           <ul class="dash__f-list">
												<li><a href="dashboard">Quản lý
														tài khoản của tôi</a></li>
												<li><a href="dash-my-profile">Thông tin của tôi</a></li>
												<li><a class="dash-active" href="dash-address-book">Địa chỉ</a></li>
												<li><a href="dash-track-order">Theo dõi đơn hàng</a></li>
												<li><a href="dash-my-order">Đơn hàng của tôi</a></li>
												<li><a href="dash-payment-option">Tùy chọn thanh
														toán của tôi</a></li>
												<li><a href="dash-cancellation">Trả lại & hủy
														bỏ đơn hàng</a></li>
											</ul>
                                        </div>
                                    </div>
                                    <div class="dash__box dash__box--bg-white dash__box--shadow dash__box--w">
                                        <div class="dash__pad-1">
                                            <ul class="dash__w-list">
                                                <li>
                                                    <div class="dash__w-wrap">

                                                        <span class="dash__w-icon dash__w-icon-style-1"><i class="fas fa-cart-arrow-down"></i></span>

                                                        <span class="dash__w-text">4</span>

                                                        <span class="dash__w-name">Đặt Hàng</span></div>
                                                </li>
                                                <li>
                                                    <div class="dash__w-wrap">

                                                        <span class="dash__w-icon dash__w-icon-style-2"><i class="fas fa-times"></i></span>

                                                        <span class="dash__w-text">0</span>

                                                        <span class="dash__w-name">Hủy đơn hàng</span></div>
                                                </li>
                                                <li>
                                                    <div class="dash__w-wrap">

                                                        <span class="dash__w-icon dash__w-icon-style-3"><i class="far fa-heart"></i></span>

                                                        <span class="dash__w-text">0</span>

                                                        <span class="dash__w-name">Danh sách yêu thích</span></div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!--====== End - Dashboard Features ======-->
                                </div>
                                <div class="col-lg-9 col-md-12">
                                    <div class="dash__box dash__box--shadow dash__box--radius dash__box--bg-white">
                                        <div class="dash__pad-2">
                                            <h1 class="dash__h1 u-s-m-b-14">Cập nhật địa chỉ</h1>

                                            <span class="dash__text u-s-m-b-30">Chúng tôi cần một địa chỉ nơi chúng tôi có thể cung cấp sản phẩm.</span>
                                            <form class="dash-address-manipulation">
                                                <div class="gl-inline">
                                                    <div class="u-s-m-b-30">

                                                        <label class="gl-label" for="address-fname">TÊN *</label>

                                                        <input class="input-text input-text--primary-style" type="text" id="address-fname" placeholder="Hòa"></div>
                                                    <div class="u-s-m-b-30">

                                                        <label class="gl-label" for="address-lname">HỌ *</label>

                                                        <input class="input-text input-text--primary-style" type="text" id="address-lname" placeholder="Võ"></div>
                                                </div>
                                                <div class="gl-inline">
                                                    <div class="u-s-m-b-30">

                                                        <label class="gl-label" for="address-phone">SỐ ĐIỆN THOẠI *</label>

                                                        <input class="input-text input-text--primary-style" type="text" id="address-phone" placeholder="(+84) 0392677003"></div>
                                                    <div class="u-s-m-b-30">

                                                        <label class="gl-label" for="address-street">ĐỊA CHỈ *</label>

                                                        <input class="input-text input-text--primary-style" type="text" id="address-street" placeholder="Địa chỉ chi tiết"></div>
                                                </div>
                                                <div class="gl-inline">
                                                    <div class="u-s-m-b-30">

                                                        <!--====== Select Box ======-->

                                                        <label class="gl-label" for="address-state">TỈNH *</label><select class="select-box select-box--primary-style" id="address-state">
                                                            <option selected value="">Chọn TỈNH</option>
                                                            <option value="al">Cần Thơ</option>
                                                            <option value="al">Đồng Tháp</option>
                                                            <option value="ny">Sóc Trăng</option>
                                                        </select>
                                                        <!--====== End - Select Box ======-->
                                                    </div>
                                                    <div class="u-s-m-b-30">

                                                        <label class="gl-label" for="address-city">THỊ TRẤN/THÀNH PHỐ *</label>

                                                        <input class="input-text input-text--primary-style" type="text" id="address-city"></div>
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