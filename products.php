<?php
include 'includes/header.php';
// if (!isset($_GET['proid']) || $_GET['proid'] == NULL) {
// 	echo "<script>window.location ='404.php'</script>";
// } else {
// 	$id = $_GET['proid'];
// }
$customer_id = Session::get('customer_id');
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['compare'])) {

	$productid = $_POST['productid'];
	$insertCompare = $product->insertCompare($productid, $customer_id);
}
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['wishlist'])) {

	$productid = $_POST['productid'];
	$insertWishlist = $product->insertWishlist($productid, $customer_id);
}
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {

	$quantity = $_POST['quantity'];
	$id = $_POST['product_id'];
	$insertCart = $ct->add_to_cart($quantity, $id);
}




?>


<!-- MAIN -->
<main class="site-main product-list product-grid product-grid-right">
	<div class="container">
		<ol class="breadcrumb-page">
			<li><a href="index.html">Trang chủ </a></li>
			<li class="active"><a href="#">Tất cả sản phẩm</a></li>
		</ol>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-sm-8 padding-right-5">
				<div class="main-content">

					<div class="toolbar-products">
						<h4 class="title-product text-center">Tất cả sản phẩm</h4>
					</div>
					<div class="products products-list products-grid">
						<?php 
						$limit  = 9;

						$product_list = $product->getproduct_list();

						$number_of_results = mysqli_num_rows($product_list);
						

						$number_f_pages = ceil($number_of_results/$limit);
						
						if(!isset($_GET['page'])){
							$page = 1;
						}
						else{
							$page= $_GET['page'];
						}
						$this_page_first_result = ($page-1)*$limit;

						$product_pagination = $product->getproduct_pagination($limit,$this_page_first_result);
						
						// var_dump($product_pagination);

						foreach ($product_pagination as $key => $value) {
						?>

							<div class="product-item style1 width-33 col-md-4 col-sm-6 col-xs-6">
								<div class="product-inner">
									<div class="product-thumb">
										<div class="thumb-inner">
											<a href="details.php?proid=<?php echo $value['productId'] ?>"><img src="admin/uploads/<?php echo $value['image'] ?>" alt="p8"></a>
										</div>
										<!-- <span class="onsale">-50%</span> -->
										<!-- <a href="#" class="quick-view">Quick View</a> -->
									</div>
									<div class="product-innfo">
										<div class="product-name"><a href="details.php?proid=<?php echo $value['productId'] ?>"><?php echo $value['productName'] ?>
											</a></div>
										<span class="price">
											<?php if (!empty($value['sale_price'])) { ?>
												<ins><?php echo $fm->format_currency($value['sale_price']) . " " . "VNĐ" ?></ins>

												<del><?php echo $fm->format_currency($value['price']) . " " . "VNĐ" ?></del>
											<?php } else { ?>
												<ins><?php echo $fm->format_currency($value['price']) . " " . "VNĐ" ?></ins>
											<?php } ?>

										</span>
										<span class="star-rating">

											<i class="fa fa-star" aria-hidden="true"></i>

											<i class="fa fa-star" aria-hidden="true"></i>

											<i class="fa fa-star" aria-hidden="true"></i>

											<i class="fa fa-star" aria-hidden="true"></i>

											<i class="fa fa-star" aria-hidden="true"></i>

											<span class="review">5 Review(s)</span>

										</span>
										<div class="info-product">
											<p>Weigh: 8.25 kg</p>
											<p>Size: One Size Fits All </p>
											<p>Guarantee: 2 Year</p>
										</div>
										<div class="single-add-to-cart flex space-x-4 w-full items-center justify-between">
											<form action="" method="post">
												<input type="hidden" class="border p-4 text-center ml-2" name="quantity" value="1" min="1" />
												<input type="hidden" name="product_id" value="<?php echo $value['productId'] ?>">
												<input type="submit" class="btn-add-to-cart !mb-0 !p-5" name="submit" value="Thêm vào giỏ hàng" />
											</form>
											<!-- <a href="#" class="btn-add-to-cart">Add to cart</a> -->
											<form action="" method="POST">

												<input type="hidden" name="productid" value="<?php echo $value['productId'] ?>" />


												<?php

												$login_check = Session::get('customer_login');
												if ($login_check) {

													echo '<button type="submit" name="wishlist"><i class="fa fa-heart-o text-4xl text-red-500 bg-white" aria-hidden="true"></i></button>';
												} else {
													echo '';
												}

												?>


											
											</form>
										</div>
									</div>
								</div>
							</div>
						<?php
						}
						?>
					</div>
					<div class="pagination">
						<ul class="nav-links">
							<?php 
								for($page = 1;$page <= $number_f_pages; $page++){
									?>
										<li class="<?php if($page == 1){echo 'active';}else{if(isset($_GET['page']) && $_GET['page'] == $page){echo 'active';} }   ?>"><a href="products.php?page=<?php echo $page ?>"><?php echo $page ?></a></li>
									<?php
								}
							?>
							
							<!-- <li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li class="back-next"><a href="#">Next</a></li> -->
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-4">
				<div class="col-sidebar">
					<div class="filter-options">
						<div class="block-content">
							<div class="filter-options-item filter-categori">
								<div class="filter-options-title">Danh mục sản phẩm</div>
								<div class="filter-options-content">
									<ul>
										<?php 
											$category = $cat->show_category_fontend();
											foreach ($category as $key => $value) {
												?>
												<li class="mb-2">
													<a href="productbycat.php?catid=<?php echo $value['catId'] ?>"><?php echo $value['catName'] ?></a>
												</li>
											<?php
												}
											?>
										
									</ul>
								</div>
							</div>
							<div class="filter-options-item filter-brand">
								<div class="filter-options-title">Thương hiệu sản phẩm</div>
								<div class="filter-options-content">
									<ul>
									<?php 
											$brands = $brand->show_brand();
											foreach ($brands as $key => $value) {
												?>
												<li class="mb-2">
													<a href="productbybrand.php?brandid=<?php echo $value['brandId'] ?>"><?php echo $value['brandName'] ?></a>
												</li>
											<?php
												}
											?>
										
									</ul>
								</div>
							</div>
							<!-- <div class="filter-options-item filter-price">
								<div class="filter-options-title">Price</div>
								<div class="filter-options-content">
									<div class="price_slider_wrapper">
										<div data-label-reasult="Price:" data-min="0" data-max="3000" data-unit="$" class="slider-range-price " data-value-min="85" data-value-max="2000">
											<span class="text-right">Filter</span>
										</div>
										<div class="price_slider_amount">
											<div class="price_label">
												Price: <span class="from">$85</span>-<span class="to">$2000</span>
											</div>
										</div>
									</div>
								</div>
							</div> -->
							<!-- <div class="filter-options-item filter-size">
								<div class="filter-options-title">Size</div>
								<div class="filter-options-content">
									<ul>
										<li><label class="inline"><input type="checkbox"><span class="input">S</span></label></li>
										<li><label class="inline"><input type="checkbox"><span class="input">M</span></label></li>
										<li><label class="inline"><input type="checkbox"><span class="input">L</span></label></li>
										<li><label class="inline"><input type="checkbox"><span class="input">XL</span></label></li>
									</ul>
								</div>
							</div> -->
							<!-- <div class="filter-options-item filter-color">
								<div class="filter-options-title">Color</div>
								<div class="filter-options-content">
									<ul>
										<li><label class="inline"><input type="checkbox"><span class="input"></span>Red<span class="value">(217)</span></label></li>
										<li><label class="inline"><input type="checkbox"><span class="input"></span>Black<span class="value">(79)</span></label></li>
										<li><label class="inline"><input type="checkbox"><span class="input"></span>Grey<span class="value">(116)</span></label></li>
										<li><label class="inline"><input type="checkbox"><span class="input"></span>While<span class="value">(38)</span></label></li>
									</ul>
									<ul>
										<li><label class="inline"><input type="checkbox"><span class="input"></span>Yellow<span class="value">(179)</span></label></li>
										<li><label class="inline"><input type="checkbox"><span class="input"></span>Blue<span class="value">(283)</span></label></li>
										<li><label class="inline"><input type="checkbox"><span class="input"></span>Pink<span class="value">(29)</span></label></li>
										<li><label class="inline"><input type="checkbox"><span class="input"></span>Green<span class="value">(205)</span></label></li>
									</ul>
								</div>
							</div> -->
						</div>
					</div>
					<!-- <div class="block-banner-sidebar">
						<a href="#"><img src="assets/images/product/banner-sidebar.jpg" alt="banner-sidebar"></a>
						<div class="promotion-banner-inner">
							<h4>Fly Drone</h4>
							<h3>Tincidunt interdum senectus fames sociis sem platea </h3>
							<a class="banner-link" href="grid-product.html">Shop now</a>
						</div>
					</div> -->
					<div class="block-latest-roducts">
						<div class="block-title">Sản phẩm mới nhất</div>
						<div class="block-latest-roducts-content">
							<div class="owl-carousel nav-style2" data-nav="false" data-autoplay="false" data-dots="false" data-loop="true" data-margin="0" data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":1},"992":{"items":1},"1200":{"items":1}}'>
								<div class="owl-ones-row">
									<div class="product-item style1">
										<div class="product-inner">
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"><img src="assets/images/blog/p1.jpg" alt="p1"></a>
												</div>
											</div>
											<div class="product-innfo">
												<div class="product-name"><a href="#">Homasy Portable</a>
												</div>
												<span class="price">

													<ins>$229.00</ins>

													<del>$259.00</del>

												</span>
												<span class="star-rating">

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<span class="review">5 Review(s)</span>

												</span>
											</div>
										</div>
									</div>
									<div class="product-item style1">
										<div class="product-inner">
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"><img src="assets/images/blog/p2.jpg" alt="p2"></a>
												</div>
											</div>
											<div class="product-innfo">
												<div class="product-name"><a href="#">Lexani Forged</a>
												</div>
												<span class="price">

													<ins>$229.00</ins>

													<del>$259.00</del>

												</span>
												<span class="star-rating">

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<span class="review">5 Review(s)</span>

												</span>
											</div>
										</div>
									</div>
									<div class="product-item style1">
										<div class="product-inner">
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"><img src="assets/images/blog/p3.jpg" alt="p3"></a>
												</div>
											</div>
											<div class="product-innfo">
												<div class="product-name"><a href="#">Custom Laptop
													</a></div>
												<span class="price price-dark">

													<ins>$229.00</ins>

												</span>
												<span class="star-rating">

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<span class="review">5 Review(s)</span>

												</span>
											</div>
										</div>
									</div>
									<div class="product-item style1">
										<div class="product-inner">
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"><img src="assets/images/blog/p4.jpg" alt="p4"></a>
												</div>
											</div>
											<div class="product-innfo">
												<div class="product-name"><a href="#">Pocket RC Drone </a>
												</div>
												<span class="price">

													<ins>$229.00</ins>

													<del>$259.00</del>

												</span>
												<span class="star-rating">

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<span class="review">5 Review(s)</span>

												</span>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-ones-row">
									<div class="product-item style1">
										<div class="product-inner">
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"><img src="assets/images/blog/p1.jpg" alt="p1"></a>
												</div>
											</div>
											<div class="product-innfo">
												<div class="product-name"><a href="#">Homasy Portable</a>
												</div>
												<span class="price">

													<ins>$229.00</ins>

													<del>$259.00</del>

												</span>
												<span class="star-rating">

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<span class="review">5 Review(s)</span>

												</span>
											</div>
										</div>
									</div>
									<div class="product-item style1">
										<div class="product-inner">
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"><img src="assets/images/blog/p2.jpg" alt="p2"></a>
												</div>
											</div>
											<div class="product-innfo">
												<div class="product-name"><a href="#">Lexani Forged</a>
												</div>
												<span class="price">

													<ins>$229.00</ins>

													<del>$259.00</del>

												</span>
												<span class="star-rating">

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<span class="review">5 Review(s)</span>

												</span>
											</div>
										</div>
									</div>
									<div class="product-item style1">
										<div class="product-inner">
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"><img src="assets/images/blog/p3.jpg" alt="p3"></a>
												</div>
											</div>
											<div class="product-innfo">
												<div class="product-name"><a href="#">Custom Laptop
													</a></div>
												<span class="price price-dark">

													<ins>$229.00</ins>

												</span>
												<span class="star-rating">

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<span class="review">5 Review(s)</span>

												</span>
											</div>
										</div>
									</div>
									<div class="product-item style1">
										<div class="product-inner">
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="#"><img src="assets/images/blog/p4.jpg" alt="p4"></a>
												</div>
											</div>
											<div class="product-innfo">
												<div class="product-name"><a href="#">Pocket RC Drone </a>
												</div>
												<span class="price">

													<ins>$229.00</ins>

													<del>$259.00</del>

												</span>
												<span class="star-rating">

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<i class="fa fa-star" aria-hidden="true"></i>

													<span class="review">5 Review(s)</span>

												</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</main><!-- end MAIN -->

<?php 


include 'includes/footer.php';

?>

