<?php

include 'lib/session.php';
Session::init();
?>
<?php

include 'lib/database.php';
include 'helpers/format.php';
include 'classes/new.php';
spl_autoload_register(function ($class) {
	include_once "classes/" . $class . ".php";
});
$db = new Database();
$fm = new Format();
$ct = new cart();
$us = new user();
$cat = new category();
$cs = new customer();
$product = new product();
$new = new news();

?>
<?php
header("Cache-Control: no-cache, must-revalidate");
header("Pragma: no-cache");
header("Expires: Sat, 26 Jul 1997 05:00:00 GMT");
header("Cache-Control: max-age=2592000");
?>
<!DOCTYPE HTML>

<head>
	<title>Store Website</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
	<link rel="stylesheet" type="text/css" href="assets/fonts/flaticon/flaticon.css">
	<link rel="stylesheet" type="text/css" href="assets/css/animate.css">
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="assets/css/pe-icon-7-stroke.css">
	<link rel="stylesheet" type="text/css" href="assets/css/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="assets/css/chosen.css">
	<link rel="stylesheet" type="text/css" href="assets/css/jquery.bxslider.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;display=swap" rel="stylesheet">
	<!-- jQuery -->
	<script defer type="text/javascript" src="assets/js/jquery-2.1.4.min.js"></script>
	<script defer type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script defer type="text/javascript" src="assets/js/jquery-ui.min.js"></script>
	<script defer type="text/javascript" src="assets/js/owl.carousel.min.js"></script>
	<script defer type="text/javascript" src="assets/js/wow.min.js"></script>
	<script defer type="text/javascript" src="assets/js/jquery.actual.min.js"></script>
	<script defer type="text/javascript" src="assets/js/chosen.jquery.min.js"></script>
	<script defer type="text/javascript" src="assets/js/jquery.bxslider.min.js"></script>
	<script defer type="text/javascript" src="assets/js/jquery.sticky.js"></script>
	<script defer type="text/javascript" src="assets/js/jquery.elevateZoom.min.js"></script>
	<script defer src="assets/js/fancybox/source/jquery.fancybox.pack.js"></script>
	<script defer src="assets/js/fancybox/source/helpers/jquery.fancybox-media.js"></script>
	<script defer src="assets/js/fancybox/source/helpers/jquery.fancybox-thumbs.js"></script>
	<script defer src='https://maps.googleapis.com/maps/api/js?key=AIzaSyC3nDHy1dARR-Pa_2jjPCjvsOR4bcILYsM'></script>
	<script defer type="text/javascript" src="assets/js/function.js"></script>
	<script defer type="text/javascript" src="assets/js/Modernizr.js"></script>
	<script defer type="text/javascript" src="assets/js/jquery.plugin.js"></script>
	<script defer type="text/javascript" src="assets/js/jquery.countdown.js"></script>
</head>

<body class="index-opt-1">
	<div class="wrapper">
		<form id="block-search-mobile" method="get" class="block-search-mobile">
			<div class="form-content">
				<div class="control">
					<a href="#" class="close-block-serach"><span class="icon flaticon-close"></span></a>
					<input type="text" name="search" placeholder="Search" class="input-subscribe">
					<button type="submit" class="btn search">
						<span><i class="flaticon-magnifying-glass" aria-hidden="true"></i></span>
					</button>
				</div>
			</div>
		</form>
		<div id="block-quick-view-popup" class="block-quick-view-popup">
			<div class="quick-view-content">
				<a href="#" class="popup-btn-close"><span class="flaticon-close"></span></a>
				<div class="product-items">
					<div class="product-image">
						<a href="#"><img src="assets/images/popup-pro.jpg" alt="p1"></a>
					</div>
					<div class="product-info">
						<div class="product-name"><a href="#">Photo Camera</a></div>
						<span class="star-rating">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<span class="review">5 Review(s)</span>
						</span>
						<a href="wishlist.html" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i>Add to
							Wishlist</a>
						<div class="product-infomation">
							Description Our new HPB12 / A12 battery is rated at 2000mAh and designed to power up Black and
							Decker FireStorm line of 12V tools allowing...
						</div>
					</div>
					<div class="product-info-price">
						<span class="price">
							<ins>$229.00</ins>
							<del>$259.00</del>
						</span>
						<div class="quantity">
							<h6 class="quantity-title">Quantity:</h6>
							<div class="buttons-added">
								<input type="text" value="1" title="Qty" class="input-text qty text" size="1">
								<a href="#" class="sign plus"><i class="fa fa-plus"></i></a>
								<a href="#" class="sign minus"><i class="fa fa-minus"></i></a>
							</div>
						</div>
						<a href="#" class="btn-add-to-cart">Add to cart</a>
					</div>
				</div>
			</div>
		</div>
		<!-- HEADER -->
		<header class="site-header header-opt-1">
			<!-- header-top -->
			<div class="header-top">
				<div class="container">
					<!-- hotline -->
					<ul class="nav-top-left">
						<li><a href="#">Welcome to Dagon Shop</a></li>
					</ul><!-- hotline -->
					<!-- heder links -->
					<ul class="nav-top-right dagon-nav">
						<li class="menu-item-has-children">
							<?php 
								$login_check = Session::get('customer_login');
								if ($login_check) {
									echo '
									<a href="#"><i class="flaticon-profile" aria-hidden="true"></i> 
										Tài khoản
									</a>
									';
								}else{
									echo '
									<a href="login.php"><i class="flaticon-profile" aria-hidden="true"></i> 
										Đăng kí / Đăng nhập
									</a>
									';
								}
							?>
							
							<ul class="submenu parent-megamenu">
								<?php
									$customer_id = Session::get('customer_id');
									$check_order = $ct->check_order($customer_id);
									if ($check_order == true) {
										echo '
											<li class="switcher-option">
												<a href="orderdetails.php" class="switcher-flag icon">Ordered</a>
											</li>
										';
									}
								?>
								<?php
									$login_check = Session::get('customer_login');
									if ($login_check) {
										echo '
											<li class="switcher-option">
												<a href="profile.php" class="switcher-flag icon">Profile</a>
											</li>
											<li class="switcher-option">
												<a href="compare.php" class="switcher-flag icon">Compare</a>
											</li>
											<li class="switcher-option">
												<a href="wishlist.php" class="switcher-flag icon">Wishlist</a>
											</li>
											<li class="switcher-option">
												<a href="?customer_id=' . Session::get('customer_id') . '" class="switcher-flag icon">Đăng xuất</a>
											</li>
										';
									}
									else{
										echo'<li class="switcher-option "><p>Bạn chưa đăng nhập !</p></li>';
									}
								?>
							</ul>
						</li>
					</ul><!-- heder links -->
				</div>
			</div> <!-- header-top -->
			<!-- header-content -->
			<div class="header-content">
				<div class="container">
					<div class="row">
						<div class="col-md-2 nav-left">
							<!-- logo -->
							<strong class="logo">
								<a href="index.html"><img src="assets/images/logo.png" alt="logo"></a>
							</strong>
							<!-- logo -->
						</div>
						<div class="col-md-8 nav-mind">
							<!-- block search -->
							<div class="block-search">
								<div class="block-content">
									<div class="categori-search ">
										<select title="categories" data-placeholder="All Categories" class="chosen-select categori-search-option">
											<option value="">All Categories</option>
											<optgroup label="LifeStyle">
												<option>Cell Phones</option>
												<option>Game & Consoles</option>
												<option>Smart Watchs</option>
											</optgroup>
											<optgroup label="Smartphone">
												<option>Cell Phones</option>
												<option>Game & Consoles</option>
												<option>Smart Watchs</option>
											</optgroup>
											<optgroup label="LifeStyle">
												<option>Cell Phones</option>
												<option>Game & Consoles</option>
												<option>Smart Watchs</option>
											</optgroup>
											<optgroup label="Smartphone">
												<option>Cell Phones</option>
												<option>Game & Consoles</option>
												<option>Smart Watchs</option>
											</optgroup>
										</select>
									</div>
									<div class="form-search">
										<form action="search.php" method="post">
											<div class="box-group">
												<input type="text" name="tukhoa" class="form-control" placeholder="Search keyword here...">
												<button name="search_product" class="btn btn-search" type="button"><span class="flaticon-magnifying-glass"></span></button>
											</div>
										</form>
									</div>
								</div>
							</div><!-- block search -->
						</div>
						<div class="col-md-2 nav-right">
							<!-- block mini cart -->
							<span data-action="toggle-nav" class="menu-on-mobile hidden-md style2">
								<span class="btn-open-mobile home-page">
									<span></span>
									<span></span>
									<span></span>
								</span>
								<span class="title-menu-mobile">Main menu</span>
							</span>
							<div class="block-minicart dropdown style2">
								<a class="minicart" href="cart.php">
									<span class="counter qty">
										<span class="cart-icon"><i class="flaticon-shopping-cart" aria-hidden="true"></i></span>
										<?php
											$check_cart = $ct->check_cart();
											if ($check_cart) {
												$qty = Session::get("qty");
												echo'<span class="counter-number">'.$qty.'</span>';
											}
											else { ?> 
												<span class="counter-number">0</span>
											<?php }
										?>
										
									</span>
									<span class="counter-your-cart">
										<span class="counter-label">Giỏ hàng:</span>
										<?php
											$check_cart = $ct->check_cart();
											if ($check_cart) {
												$sum = Session::get("sum");
												echo'
												<span class="counter-price">'.number_format($sum).'đ</span>
												';
											}
											else { ?> 
												<span class="counter-price">0</span>
											<?php }
										?>			
									</span>
								</a>
								
							</div><!-- block mini cart -->
							<a href="#" class="hidden-md search-hidden"><span class="flaticon-magnifying-glass"></span></a>
							<a class="wishlist-minicart" href="wishlist.php"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
						</div>
					</div>
				</div>
			</div><!-- header-content -->
			<!-- header-menu-bar -->
			<div class="header-menu-bar header-sticky">
				<div class="header-menu-nav menu-style-1">
					<div class="container">
						<div class="header-menu-nav-inner ">
							<div class="header-menu header-menu-resize">
								<ul class="header-nav dagon-nav">
									<li class="btn-close hidden-md"><i class="flaticon-close" aria-hidden="true"></i></li>
									<li class="menu-item-has-children arrow">
										<a href="index.php">Trang chủ</a>
									</li>
									<li class="menu-item-has-children arrow item-megamenu">
										<a href="#">Giới thiệu</a>
									</li>
									<li class="menu-item-has-children arrow">
										<a href="products.php">Sản phẩm</a>
									</li>
									<li class="menu-item-has-children arrow item-megamenu">
										<a href="#">Camera</a>
										<span class="toggle-submenu hidden-md"></span>
									</li>
									<li class="menu-item-has-children arrow">
										<a href="#">Bài viết</a>
									</li>
									<li class="menu-item-has-children arrow">
										<a href="contact.php">Liên hệ</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end header-menu-bar -->
		</header>
		<!-- END HEADER -->
		<!-- MAIN -->
		<main class="site-main">
