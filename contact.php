<?php 
	include 'includes/header.php';

?>

<!-- MAIN -->
<main class="site-main contact-us">
	<div class="container">
		<ol class="breadcrumb-page">
			<li><a href="index-2.html">Trang chủ </a></li>
			<li class="active"><a href="#">Liên hệ</a></li>
		</ol>
	</div>
	<div class="container">
		<div class="row">
			<div class="contact-map full-width">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7420.106376946135!2d105.81089443487247!3d21.583846836065383!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31352738b1bf08a3%3A0x515f4860ede9e108!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiAmIFRydXnhu4FuIHRow7RuZyBUaMOhaSBOZ3V5w6pu!5e0!3m2!1svi!2s!4v1663944098995!5m2!1svi!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>
			<form class="form-contact" action="#" method="post">
				<div class="col-md-5">
					<div class="contact-info">
						<h5 class="title-contact">Gửi lời nhắn cho chúng tôi</h5>
						<p class="form-row form-row-wide">
							<label>Tên của bạn<span class="required">*</span></label>
							<input type="text" value="" name="text" placeholder="Họ và tên" class="input-text">
						</p>
						<p class="form-row form-row-wide">
							<label>Địa chỉ Email<span class="required">*</span></label>
							<input type="email" value="" name="text" placeholder="Email" class="input-text">
						</p>
						<p class="form-row form-row-wide">
							<label>Số điện thoai<span class="required"></span></label>
							<input type="text" value="" name="text" placeholder="Số điện thoai" class="input-text">
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<p class="form-row form-row-wide form-text">
						<label>Lời nhắn<span class="required"></span></label>
						<textarea title="message" aria-invalid="false" class="textarea-control" rows="5" cols="40"
									name="message"></textarea>
					</p>
					<p class="form-row">
						<input type="submit" value="Gửi" name="Submit" class="button-submit">
					</p>
				</div>
			</form>
			<div class="col-md-3 contact-detail">
				<h5 class="title-contact">Thông tin liên hệ của chúng tôi</h5>
				<div class="contacts-info ">
					<div class="contact-icon"><i class="flaticon-email" aria-hidden="true"></i></div>
					<h4 class="title-info">Email</h4>
					<div class="info-detail"> abc123@gmail.com</div>
				</div>
				<div class="contacts-info ">
					<div class="contact-icon"><i class="flaticon-telephone" aria-hidden="true"></i></div>
					<h4 class="title-info">Số điện thoại</h4>
					<div class="info-detail">0123-465-789</div>
				</div>
				<div class="contacts-info ">
					<div class="contact-icon"><i class="flaticon-placeholder" aria-hidden="true"></i></div>
					<h4 class="title-info">Địa chỉ</h4>
					<div class="info-detail">1 Hùng Vương, Quán Thánh, Ba Đình, Hà Nội </div>
				</div>
			</div>
		</div>
	</div>
</main><!-- end MAIN -->
<?php 
	include 'includes/footer.php';
	
 ?>
