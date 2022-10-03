<?php
include 'includes/header.php';
// include 'inc/slider.php';
?>
<?php

if (!isset($_GET['proid']) || $_GET['proid'] == NULL) {
	echo "<script>window.location ='404.php'</script>";
} else {
	$id = $_GET['proid'];
}
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
	$insertCart = $ct->add_to_cart($quantity, $id);
}
?>

<!-- MAIN -->
<main class="site-main mt-8">
	<div class="container">
		<ol class="breadcrumb-page">
			<li><a href="index.html">Trang chủ </a></li>
			<li class="active"><a href="#">Chi tiết</a></li>
		</ol>
	</div>
	<?php

	$get_product_details = $product->get_details($id);
	if ($get_product_details) {
		while ($result_details = $get_product_details->fetch_assoc()) {


	?>
			<div class="container">
				<div class="product-content-single">
					<div class="row">
						<div class="col-md-6 col-sm-12 padding-right">
							<div class="product-media">
								<div class="image-preview-container image-thick-box image_preview_container">
									<img class="w-full max-h-[500px] object-cover" id="img_zoom" src="admin/uploads/<?php echo $result_details['image'] ?>" alt=""> 
									<a href="#" class="btn-zoom open_qv"><i class="flaticon-magnifying-glass" aria-hidden="true"></i></a>
								</div>

							</div>
						</div>
						<div class="col-md-6 col-sm-12">
							<div class="product-info-main">
								<div class="product-name"><a href="#"><?php echo $result_details['productName'] ?> </a></div>
								<span class="star-rating">

									<i class="fa fa-star" aria-hidden="true"></i>

									<i class="fa fa-star" aria-hidden="true"></i>

									<i class="fa fa-star" aria-hidden="true"></i>

									<i class="fa fa-star" aria-hidden="true"></i>

									<i class="fa fa-star" aria-hidden="true"></i>

									<span class="review">5 Review(s)</span>

								</span>
								<div class="product-info-stock-sku">
									<div class="stock available">
										<p>Danh mục: <span class="text-black"><?php echo $result_details['catName'] ?></span></p>
										<p>Thương hiệu:<span class="text-black"><?php echo $result_details['brandName'] ?></span></p>
									</div>
								</div>
								<div class="product-infomation">
									<p><?php echo $result_details['product_desc']?></p>
								</div>
								<div class="product-info-price">
									<span class="price text-4xl">

										Giá: <?php if (!empty($result_details['sale_price'])) { ?>
											<span>
													<ins class="!contents"><?php echo $fm->format_currency($result_details['sale_price']) . " " . "VNĐ" ?></ins>

													<del><?php echo $fm->format_currency($result_details['price']) . " " . "VNĐ" ?></del>
												<?php } else { ?>
													<ins><?php echo $fm->format_currency($result_details['price']) . " " . "VNĐ" ?></ins>
												<?php } ?>
											</span>		
									</span>

									<div class="quantity ">
										<form action="" method="post">
											<input type="number" class="border p-4 text-center ml-2" name="quantity" value="1" min="1" />
											<input type="submit" class="buysubmit !p-5" name="submit" value="Buy Now" />
										</form>
										<?php
										if (isset($insertCart)) {
											echo $insertCart;
										}
										?>
									</div>


								</div>
								<div class="add-cart">
									<div class="button_details">
										<form action="" method="POST">

											<input type="hidden" name="productid" value="<?php echo $result_details['productId'] ?>" />


											<?php

											$login_check = Session::get('customer_login');
											if ($login_check) {
												echo '<input type="submit" class="buysubmit" name="compare" value="Compare Product"/>' . '  ';
											} else {
												echo '';
											}

											?>


										</form>


										<form action="" method="POST">

											<input type="hidden" name="productid" value="<?php echo $result_details['productId'] ?>" />


											<?php

											$login_check = Session::get('customer_login');
											if ($login_check) {

												echo '<input type="submit" class="buysubmit" name="wishlist" value="Save to Wishlist">';
											} else {
												echo '';
											}

											?>



										</form>

									</div>
									<div class="clear"></div>
									<p>
										<?php
										if (isset($insertCompare)) {
											echo $insertCompare;
										}
										?>
										<?php
										if (isset($insertWishlist)) {
											echo $insertWishlist;
										}
										?>


									</p>

								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="tab-details-product ">
					<ul class="box-tab nav-tab">
						<li class="active"><a data-toggle="tab" href="#tab-1">Mô tả sản phẩm</a></li>

					</ul>
					<div class="tab-container" x-data="{ open: false }" >
						<div id="tab-1" class="tab-panel active ">
							<div class="box-content h-96 overflow-hidden " :class="open && '!h-auto'" >
								<p><?php echo $result_details['product_body'] ?></p>
							</div>
							<a @click.prevent="open = ! open" class="mt-8 block text-red-500  text-3xl" href="#" x-text="open ? 'Thu gọn...' : 'Xem thêm...'">Xem thêm</a>
						</div>

					</div>
				</div>
			</div>
	<?php
		}
	}
	?>
	<div class="block-recent-view single">
		<div class="container">
			<div class="title-of-section">Sản phẩm liên quan</div>
			<div class="owl-carousel nav-style2 border-background equal-container" data-nav="true" data-autoplay="false" data-dots="false" data-loop="true" data-margin="30" data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":4}}'>
				<?php 
					$product_rela = $product->getproduct_new();
					foreach ($product_rela as $key => $result) {
				?>
				<div class="product-item style1">
					<div class="product-inner equal-elem">
						<div class="product-thumb">
							<div class="thumb-inner">
								<a href="details.php?proid=<?php echo $result['productId'] ?>"><img src="admin/uploads/<?php echo $result['image'] ?>" alt="r1"></a>
							</div>
							
						</div>
						<div class="product-innfo">
							<div class="product-name"><a href="#"><?php echo $result['productName'] ?></a></div>
							<span class="price">

							<ins><?php echo $fm->format_currency($result['price']) . " " . "VNĐ" ?></ins>
							</span>
							<span class="star-rating">

								<i class="fa fa-star" aria-hidden="true"></i>

								<i class="fa fa-star" aria-hidden="true"></i>

								<i class="fa fa-star" aria-hidden="true"></i>

								<i class="fa fa-star" aria-hidden="true"></i>

								<i class="fa fa-star" aria-hidden="true"></i>

								<span class="review">5 Review(s)</span>

							</span>
							<div class="group-btn-hover style2">
									<a href="details.php?proid=<?php echo $result['productId'] ?>" class="add-to-cart">Xem chi tiết</a>

									<form action="" method="POST">

										<input type="hidden" name="productid" value="<?php echo $result['productId'] ?>" />


										<?php

										$login_check = Session::get('customer_login');
										if ($login_check) {
											echo '<input type="submit" class="compare" name="compare" value="Compare Product"/>' . '  ';
										} else {
											echo '';
										}

										?>


									</form>
									<form action="" method="POST">

										<input type="hidden" name="productid" value="<?php echo $result['productId'] ?>" />


										<?php

										$login_check = Session::get('customer_login');
										if ($login_check) {

											echo '<input type="submit" class="buysubmit" name="wishlist" value="Save to Wishlist">';
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
		</div>
	</div>
</main><!-- end MAIN -->

<?php
include 'includes/footer.php';

?>