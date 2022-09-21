<?php
include 'includes/header.php';
include 'includes/slider.php';

?>

<div class="block-section-99">
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="dagon-iconbox style-02">
					<div class="iconbox-inner">
						<div class="icon"><span class="flaticon-delivery-truck"></span></div>
						<div class="content">
							<h4 class="title">FAST SHIPPING</h4>
							<p class="text">Dispatch on most items</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="dagon-iconbox style-02">
					<div class="iconbox-inner">
						<div class="icon"><span class="flaticon-refresh"></span></div>
						<div class="content">
							<h4 class="title">30 DAY RETURns</h4>
							<p class="text">For peace of mind</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="dagon-iconbox style-02">
					<div class="iconbox-inner">
						<div class="icon"><span class="flaticon-quality-badge"></span></div>
						<div class="content">
							<h4 class="title">BEST FURNITURE</h4>
							<p class="text">Online retailer for home</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="block-top-categori">
	<div class="container">
		<div class="title-of-section main-title"><span>Top Categories</span></div>
		<div class="owl-carousel nav-style2" data-nav="true" data-autoplay="false" data-dots="false" data-loop="true" data-margin="30" data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4}}'>
			<div class="block-top-categori-item">
				<a href="#"><img src="assets/images/home1/c1.jpg" alt="c1"></a>
				<div class="block-top-categori-title">Speakers</div>
			</div>
			<div class="block-top-categori-item">
				<a href="#"><img src="assets/images/home1/c2.jpg" alt="c2"></a>
				<div class="block-top-categori-title">Game & Consoles</div>
			</div>
			<div class="block-top-categori-item">
				<a href="#"><img src="assets/images/home1/c3.jpg" alt="c3"></a>
				<div class="block-top-categori-title">Game Mouse</div>
			</div>
			<div class="block-top-categori-item">
				<a href="#"><img src="assets/images/home1/c4.jpg" alt="c4"></a>
				<div class="block-top-categori-title">Cell Phones</div>
			</div>
			<div class="block-top-categori-item">
				<a href="#"><img src="assets/images/home1/c5.jpg" alt="c5"></a>
				<div class="block-top-categori-title">Monitor</div>
			</div>
		</div>
	</div>
</div>
<div class="block-section-3">
	<div class="container">
		<div class="row">
			<div class="col-md-5 col-sm-5">
				<div class="promotion-banner style-1">
					<a href="#" class="banner-img">
						<img src="assets/images/home2/banner-1.jpg" alt="banner-1">
					</a>
					<div class="promotion-banner-inner">
						<h4>Headphone</h4>
						<h3>Sale <strong>40%</strong> Off</h3>
						<a class="banner-link" href="grid-product.html">Shop now</a>
					</div>
				</div>
			</div>
			<div class="col-md-7 col-sm-7">
				<div class="promotion-banner style-1">
					<a href="#" class="banner-img"><img src="assets/images/home2/banner-2.jpg" alt="banner-2"></a>
					<div class="promotion-banner-inner">
						<h4>New Arrivals</h4>
						<h3>Get <strong>25%</strong> Flat Off</h3>
						<a class="banner-link" href="grid-product.html">Shop now</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="block-section-4">
	<div class="container">
		<div class="title-of-section main-title">Featured Products</div>
		<div class="tab-product tab-product-fade-effect">
			<ul class="box-tabs nav-tab">
				<li class="active"><a data-animated="" data-toggle="tab" href="#tab-1">Tất cả sản phẩm</a></li>
				<li><a data-animated="" data-toggle="tab" href="#tab-2">PC-Gamming</a></li>
				<li><a data-animated="" data-toggle="tab" href="#tab-3">Laptop</a></li>
				<li><a data-animated="" data-toggle="tab" href="#tab-4">Phụ kiện</a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-container">
					<div id="tab-1" class="tab-panel active">
						<div class="owl-carousel nav-style2 border-background equal-container" data-nav="false" data-autoplay="false" data-dots="false" data-loop="true" data-margin="30" data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":4}}'>
						<?php
							$product_feathered = $product->getproduct_feathered();
							foreach($product_feathered as $result){
							?>
								<div class="product-item style1">
									<div class="product-inner equal-elem">
										<div class="product-thumb">
											<div class="thumb-inner">
												<a href="details.php?proid=<?php echo $result['productId'] ?>">
												<img src="admin/uploads/<?php echo $result['image'] ?>" alt="r1"></a>
											</div>
										</div>
										<div class="product-innfo">

											<div class="product-name">
												<a href="details.php?proid=<?php echo $result['productId'] ?>"><?php echo $result['productName'] ?></a>
												<p><?php echo $fm->textShorten($result['product_desc'], 50) ?></p>
											</div>
											<span class="price">
												<ins><?php echo $fm->format_currency($result['price']) . " " . "VNĐ" ?></ins>
											</span>
											
										</div>
									</div>
								</div>
									
							<?php
								}
							?>
							
							

						</div>
					</div>
					<div id="tab-2" class="tab-panel">
						<div class="owl-carousel nav-style2 border-background equal-container" data-nav="false" data-autoplay="false" data-dots="false" data-loop="true" data-margin="30" data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":4}}'>
						<?php
							$product_feathered = $product->getproduct_feathered();
							foreach($product_feathered as $result){
							?>
								<div class="product-item style1">
									<div class="product-inner equal-elem">
										<div class="product-thumb">
											<div class="thumb-inner">
												<a href="details.php?proid=<?php echo $result['productId'] ?>">
												<img src="admin/uploads/<?php echo $result['image'] ?>" alt="r1"></a>
											</div>
										</div>
										<div class="product-innfo">

											<div class="product-name">
												<a href="details.php?proid=<?php echo $result['productId'] ?>"><?php echo $result['productName'] ?></a>
												<p><?php echo $fm->textShorten($result['product_desc'], 50) ?></p>
											</div>
											<span class="price">
												<ins><?php echo $fm->format_currency($result['price']) . " " . "VNĐ" ?></ins>
											</span>
											
										</div>
									</div>
								</div>
									
							<?php
								}
							?>
						</div>
					</div>
					<div id="tab-3" class="tab-panel">
						<div class="owl-carousel nav-style2 border-background equal-container" data-nav="false" data-autoplay="false" data-dots="false" data-loop="true" data-margin="30" data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":4}}'>
						<?php
							$product_feathered = $product->getproduct_feathered();
							foreach($product_feathered as $result){
							?>
								<div class="product-item style1">
									<div class="product-inner equal-elem">
										<div class="product-thumb">
											<div class="thumb-inner">
												<a href="details.php?proid=<?php echo $result['productId'] ?>">
												<img src="admin/uploads/<?php echo $result['image'] ?>" alt="r1"></a>
											</div>
										</div>
										<div class="product-innfo">

											<div class="product-name">
												<a href="details.php?proid=<?php echo $result['productId'] ?>"><?php echo $result['productName'] ?></a>
												<p><?php echo $fm->textShorten($result['product_desc'], 50) ?></p>
											</div>
											<span class="price">
												<ins><?php echo $fm->format_currency($result['price']) . " " . "VNĐ" ?></ins>
											</span>
											
										</div>
									</div>
								</div>
									
							<?php
								}
							?>
						</div>
					</div>
					<div id="tab-4" class="tab-panel">
						<div class="owl-carousel nav-style2 border-background equal-container" data-nav="false" data-autoplay="false" data-dots="false" data-loop="true" data-margin="30" data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":4}}'>
						<?php
							$product_feathered = $product->getproduct_feathered();
							foreach($product_feathered as $result){
							?>
								<div class="product-item style1">
									<div class="product-inner equal-elem">
										<div class="product-thumb">
											<div class="thumb-inner">
												<a href="details.php?proid=<?php echo $result['productId'] ?>">
												<img src="admin/uploads/<?php echo $result['image'] ?>" alt="r1"></a>
											</div>
										</div>
										<div class="product-innfo">

											<div class="product-name">
												<a href="details.php?proid=<?php echo $result['productId'] ?>"><?php echo $result['productName'] ?></a>
												<p><?php echo $fm->textShorten($result['product_desc'], 50) ?></p>
											</div>
											<span class="price">
												<ins><?php echo $fm->format_currency($result['price']) . " " . "VNĐ" ?></ins>
											</span>
											
										</div>
									</div>
								</div>
									
							<?php
								}
							?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="block-section-6 page-product">
	<div class="container">
		<div class="promotion-banner style-3">
			<a href="#" class="banner-img"><img src="assets/images/home2/banner-3.jpg" alt="banner-3"></a>
			<div class="promotion-banner-inner">
				<h4>Top Collection</h4>
				<h3>All New Smart Watches</h3>
				<a class="banner-link" href="grid-product.html">Shop now</a>
			</div>
		</div>
	</div>
</div>
<div class="block-the-blog">
	<div class="container">
		<div class="title-of-section"><span>Bài viết mới nhất</span></div>
		<div class="owl-carousel nav-style2" data-nav="true" data-autoplay="false" data-dots="true" data-loop="true" data-margin="30" data-responsive='{"0":{"items":1},"480":{"items":2},"600":{"items":2},"992":{"items":3}}'>
			
			<?php
				$news_list = $new->show_new();
				foreach($news_list as $val){
			?>
			<div class="blog-item">
				<div class="post-thumb">
					<a href="detailsNew.php?newid=<?php echo $val['newId'] ?>">
						<img src="admin/uploads/<?php echo $val['image'] ?>" alt="blog1"></a>
				</div>
				<div class="post-item-info">
					<h3 class="post-name"><a href="#"><?php echo $val['title'] ?></a></h3>
					<div class="post-metas">
						<span class="author">Người đăng: <span>Admin</span></span>
						<!-- <span class="comment"><i class="fa fa-comment" aria-hidden="true"></i>36 Comments</span> -->
					</div>
					<div><?php echo $fm->textShorten($val['description'], 50) ?>
					</div>
				</div>
			</div>
				<?php 
				}
			?>
		</div>
	</div>
</div>



<?php
include 'includes/footer.php';
?>