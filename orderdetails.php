<?php 
	include 'includes/header.php';
	// include 'inc/slider.php';
?>


 <?php
 	$login_check = Session::get('customer_login'); 
	if($login_check==false){
		// header('Location:login.php');
		echo "<script>window.location ='login.php'</script>";
	}
	
	
?> 
<?php
	if(isset($_GET['confirmid'])){
     	$id = $_GET['confirmid'];
     	$time = $_GET['time'];
     	$price = $_GET['price'];
     	$shifted_confirm = $ct->shifted_confirm($id,$time,$price);
    }
?>
 <div class="site-main product-list product-grid product-grid-right">
    <div class="container">
    	<div class="cartoption">		
			<div class="cartpage">
			    	<h2 class="mb-8">Thông tin chi tiết của bạn đã được đặt hàng</h2>			    	
			    	
						<table class="tblone">
							<tr>
								<th width="10%">ID</th>
								<th width="20%">Tên sản phẩm</th>
								<th width="10%">Hình ảnh</th>
								<th width="15%">Giá </th>
								<th width="15%">Số Lượng</th>
								<th width="15%">Ngày đặt</th>
								<th width="10%">Trang thái</th>
								<th width="10%">Hành động</th>
							</tr>
							<?php
							$customer_id = Session::get('customer_id');
							$get_cart_ordered = $ct->get_cart_ordered($customer_id);
							if($get_cart_ordered){
								$i = 0;
								$qty = 0;
								$total = 0;
								while($result = $get_cart_ordered->fetch_assoc()){
									$i++;
									$total = $result['price']*$result['quantity'];
							?>
							<tr>
								<td><?php echo $i; ?></td>
								<td><?php echo $result['productName'] ?></td>
								<td><img src="admin/uploads/<?php echo $result['image'] ?>" alt=""/></td>
								<td><?php echo $fm->format_currency($result['price'])." "."VNĐ" ?></td>
								<td>
									
										
										<?php echo $result['quantity'] ?>
									
									
								</td>
								<td><?php echo $fm->formatDate($result['date_order']) ?></td>
								<td>
									<?php
									if($result['status']=='0'){
										echo 'Chờ duyệt';
									}elseif($result['status']==1){ 
									?>
									<span>Đang giao hàng</span>
									
									<?php
									}elseif($result['status']==2){
										echo 'Đã nhận hàng';
									}

									 ?>


								</td>
								<?php
								if($result['status']=='0'){
								?>
								<td><?php echo 'N/A';?></td>
								<?php
								
								}elseif($result['status']=='1'){
								
								?>
								<td><a href="?confirmid=<?php echo $customer_id ?>&price=<?php echo $result['price'] ?>&time=<?php echo $result['date_order'] ?>">Xác nhận lấy hàng</a></td>
								<?php
							}else{
								?>
								<td><?php echo 'Đã Nhận'; ?></td>
								<?php
								}	
								?>
							</tr>
						<?php
							
							}
						}
						?>
							
						</table>
						
						
					 
					
					
					</div>
					<div class="shopping">
						<div class="shopleft">
							<a href="index.php"> <img src="images/shop.png" alt="" /></a>
						</div>
						
					</div>
    	</div>  	
       <div class="clear"></div>
    </div>
 </div>
<?php 
	include 'includes/footer.php';
	
 ?>