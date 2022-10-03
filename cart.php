<?php 
	include 'includes/header.php';
	// include 'inc/slider.php';
?>
<?php
	if(isset($_GET['cartid'])){
        $cartid = $_GET['cartid']; 
        $delcart = $ct->del_product_cart($cartid);
    }
 	if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
 		$cartId = $_POST['cartId'];
        $quantity = $_POST['quantity'];
        $update_quantity_cart = $ct->update_quantity_cart($quantity, $cartId);
        if($quantity<=0){
        	$delcart = $ct->del_product_cart($cartId);
        }
    }
   
?>
<?php
	if(!isset($_GET['id'])){
		echo "<meta http-equiv='refresh' content='0;URL=?id=live'>";
	}
?>
 <!-- MAIN -->
 <main class="site-main shopping-cart">
        <div class="container">
            <ol class="breadcrumb-page">
                <li><a href="index-2.html">Trang chủ </a></li>
                <li class="active"><a href="#">Giỏ hàng</a></li>
            </ol>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <form class="form-cart" method="post">
                        <div class="table-cart">
						<?php
							if(isset($update_quantity_cart)){
								echo $update_quantity_cart;
							}
						?>
						<?php
							if(isset($delcart)){
								echo $delcart;
							}
						?>
                            <table class="table">
                                <thead>
									<tr>
										<th class="tb-image"></th>
										<th class="tb-product">Tên sản phẩm</th>
										<th class="tb-price">Unit Price</th>
										<th class="tb-qty">Số lượng</th>
										<th class="tb-total">Thành tiền</th>
										<th class="tb-remove"></th>
									</tr>
                                </thead>
                                <tbody>
								<?php
									$get_product_cart = $ct->get_product_cart();
									if($get_product_cart){
										$subtotal = 0;
										$qty = 0;
										while($result = $get_product_cart->fetch_assoc()){
								?>
									<tr>
										<td class="tb-image"><a href="#" class="item-photo">
										<img src="admin/uploads/<?php echo $result['image'] ?>" alt=""/></a></td>
										<td class="tb-product">
											<div class="product-name"><a href="#"><?php echo $result['productName'] ?></a></div>
										</td>
										<td class="tb-price">
											<span class="price">
                                                <?php 
                                                    echo $fm->format_currency($result['price'])." "."VNĐ";
                                                ?>
                                            </span>
										</td>
										<td class="h-full my-auto flex-row space-x-4 !w-auto !border-t-0 items-center">
											
											
												<input type="hidden" name="cartId"  value="<?php echo $result['cartId'] ?>"/>
												<input type="number" name="quantity" min="0" class="!w-16 p-2 border border-b-gray-700"  
                                                value="<?php echo $result['quantity'] ?>"/>
												<input type="submit" name="submit" class="w-40" value="Update"/>
											
												
										</td>
										<td class="tb-total">
											<?php
												$total = $result['price'] * $result['quantity'];
											?>
											<span class="price"><?php echo $fm->format_currency($total)." "."VNĐ"; ?></span>
										</td>
										<td class="tb-remove">
											<a 	
												onclick="return confirm('Are you want to delete?');" 
												href="?cartid=<?php echo $result['cartId'] ?>" class="action-remove">
												<span>
													<i class="flaticon-close" aria-hidden="true"></i>
												</span>
											</a>
										</td>

									</tr>
									<?php
										$subtotal += $total;
										$qty = $qty + $result['quantity'];
										}
									}
									?>
                                </tbody>
                            </table>
							
                        </div>
                        <!-- <div class="cart-actions">
                            <button type="submit" class="btn-continue">
                                <span>Continue Shopping</span>
                            </button>
                            <button type="submit" class="btn-clean">
                                <span>Update Shopping Cart</span>
                            </button>
                            <button type="submit" class="btn-update">
                                <span>Clear Shopping Cart</span>
                            </button>
                        </div> -->
                    </form>
                </div>
                <div class="col-md-3">
                    <div class="order-summary">
                        <h4 class="title-shopping-cart">Tiền tạm tính</h4>
                        <div class="checkout-element-content">
							<?php
								$check_cart = $ct->check_cart();
								if($check_cart){
							?>
                            <span class="order-left">Tổng hoá đơn:
								<span>
									<?php 
									echo $fm->format_currency($subtotal)." "."VNĐ";
									Session::set('sum',$subtotal);
									Session::set('qty',$qty);
									?>
								</span>
							</span>
                            <span class="order-left">Thuế VAT:<span> 10%</span></span>
                            <span class="order-left">Thành tiền:
								<span>
									<?php 
										$vat = $subtotal * 0.1;
										$gtotal = $subtotal + $vat;
										echo $fm->format_currency($gtotal)." "."VNĐ";
									?>
								</span>
							</span>
                            
                            <a href="payment.php"  class="btn-checkout">
                                <span>Thanh toán</span>
                            </a>
							
							<?php
							}else{
								echo 'Giỏ hàng của bạn đang trống rỗng! Vui lòng mua sắm ngay bây giờ';
							}
							?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- <div class="block-recent-view single">
            <div class="container">
                <div class="title-of-section">You may be also interested</div>
                <div class="owl-carousel nav-style2 border-background equal-container" data-nav="true"
                     data-autoplay="false" data-dots="false" data-loop="true" data-margin="30"
                     data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":4}}'>
                    <div class="product-item style1">
                        <div class="product-inner equal-elem">
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#"><img src="assets/images/home1/r1.jpg" alt="r1"></a>
                                </div>
                                <span class="onsale">-50%</span>
                                <a href="#" class="quick-view">Quick View</a>
                            </div>
                            <div class="product-innfo">
                                <div class="product-name"><a href="#">Modern Watches</a></div>
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
                                <div class="group-btn-hover style2">
                                    <a href="#" class="add-to-cart"><i class="flaticon-shopping-cart"
                                                                       aria-hidden="true"></i></a>
                                    <a href="compare.html" class="compare"><i class="fa fa-exchange"></i></a>
                                    <a href="wishlist.html" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style1">
                        <div class="product-inner equal-elem">
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#"><img src="assets/images/home1/r2.jpg" alt="r2"></a>
                                </div>
                                <span class="onnew">new</span>
                                <a href="#" class="quick-view">Quick View</a>
                            </div>
                            <div class="product-innfo">
                                <div class="product-name"><a href="#">Cellphone Factory</a></div>
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
                                <div class="group-btn-hover style2">
                                    <a href="#" class="add-to-cart"><i class="flaticon-shopping-cart"
                                                                       aria-hidden="true"></i></a>
                                    <a href="compare.html" class="compare"><i class="fa fa-exchange"></i></a>
                                    <a href="wishlist.html" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style1">
                        <div class="product-inner equal-elem">
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#"><img src="assets/images/home1/r3.jpg" alt="r3"></a>
                                </div>
                                <a href="#" class="quick-view">Quick View</a>
                            </div>
                            <div class="product-innfo">
                                <div class="product-name"><a href="#">Smartphone 4 GB</a></div>
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
                                <div class="group-btn-hover style2">
                                    <a href="#" class="add-to-cart"><i class="flaticon-shopping-cart"
                                                                       aria-hidden="true"></i></a>
                                    <a href="compare.html" class="compare"><i class="fa fa-exchange"></i></a>
                                    <a href="wishlist.html" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style1">
                        <div class="product-inner equal-elem">
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#"><img src="assets/images/home1/r4.jpg" alt="r4"></a>
                                </div>
                                <a href="#" class="quick-view">Quick View</a>
                            </div>
                            <div class="product-innfo">
                                <div class="product-name"><a href="#">Extra Bass On</a></div>
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
                                <div class="group-btn-hover style2">
                                    <a href="#" class="add-to-cart"><i class="flaticon-shopping-cart"
                                                                       aria-hidden="true"></i></a>
                                    <a href="compare.html" class="compare"><i class="fa fa-exchange"></i></a>
                                    <a href="wishlist.html" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style1">
                        <div class="product-inner equal-elem">
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#"><img src="assets/images/home1/r5.jpg" alt="r5"></a>
                                </div>
                                <span class="onsale">-50%</span>
                                <a href="#" class="quick-view">Quick View</a>
                            </div>
                            <div class="product-innfo">
                                <div class="product-name"><a href="#">Smartwatch</a></div>
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
                                <div class="group-btn-hover style2">
                                    <a href="#" class="add-to-cart"><i class="flaticon-shopping-cart"
                                                                       aria-hidden="true"></i></a>
                                    <a href="compare.html" class="compare"><i class="fa fa-exchange"></i></a>
                                    <a href="wishlist.html" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style1">
                        <div class="product-inner equal-elem">
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#"><img src="assets/images/home1/r6.jpg" alt="r6"></a>
                                </div>
                                <a href="#" class="quick-view">Quick View</a>
                            </div>
                            <div class="product-innfo">
                                <div class="product-name"><a href="#">Modern Watches</a></div>
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
                                <div class="group-btn-hover style2">
                                    <a href="#" class="add-to-cart"><i class="flaticon-shopping-cart"
                                                                       aria-hidden="true"></i></a>
                                    <a href="compare.html" class="compare"><i class="fa fa-exchange"></i></a>
                                    <a href="wishlist.html" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
    </main><!-- end MAIN -->
<?php 
	include 'includes/footer.php';
	
 ?>