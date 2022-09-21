<?php
	$filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/database.php');
	include_once ($filepath.'/../helpers/format.php');
?>

<?php
	/**
	 * 
	 */
	class news
	{
		private $db;
		private $fm;
		
		public function __construct()
		{
			$this->db = new Database();
			$this->fm = new Format();
		}

		public function insert_new($data,$files){

			$title = mysqli_real_escape_string($this->db->link, $data['title']);
			$description = mysqli_real_escape_string($this->db->link, $data['description']);
			$body = mysqli_real_escape_string($this->db->link, $data['body']);
			$type = mysqli_real_escape_string($this->db->link, $data['type']);
			//Kiem tra hình ảnh và lấy hình ảnh cho vào folder upload
			$permited  = array('jpg', 'jpeg', 'png', 'gif');
			$file_name = $_FILES['image']['name'];
			$file_size = $_FILES['image']['size'];
			$file_temp = $_FILES['image']['tmp_name'];

			$div = explode('.', $file_name);
			$file_ext = strtolower(end($div));
			$unique_image = substr(md5(time()), 0, 10).'.'.$file_ext;
			$uploaded_image = "uploads/".$unique_image;
			
			if($title=="" || $description=="" || $body=="" || $type=="" || $file_name ==""){
				$alert = "<span class='error'>Fields must be not empty</span>";
				return $alert;
			}else{
				move_uploaded_file($file_temp,$uploaded_image);
				$query = "INSERT INTO tbl_news(title,description,body,type,image) 
                VALUES('$title','$description','$body','$type','$unique_image')";
				$result = $this->db->insert($query);
				if($result){
					$alert = "<span class='success'>Thêm bài viết thành công</span>";
					return $alert;
				}else{
					$alert = "<span class='error'>Thêm bài viết không thành công</span>";
					return $alert;
				}
			}
		}
		public function update_new($data,$file,$id){
		
			$title = mysqli_real_escape_string($this->db->link, $data['title']);
			$description = mysqli_real_escape_string($this->db->link, $data['description']);
			$body = mysqli_real_escape_string($this->db->link, $data['body']);
			$type = mysqli_real_escape_string($this->db->link, $data['type']);
			//Kiem tra hình ảnh và lấy hình ảnh cho vào folder upload
			$permited  = array('jpg', 'jpeg', 'png', 'gif');

			$file_name = $_FILES['image']['name'];
			$file_size = $_FILES['image']['size'];
			$file_temp = $_FILES['image']['tmp_name'];

			$div = explode('.', $file_name);
			$file_ext = strtolower(end($div));
			// $file_current = strtolower(current($div));
			$unique_image = substr(md5(time()), 0, 10).'.'.$file_ext;
			$uploaded_image = "uploads/".$unique_image;


			if($title=="" || $description=="" || $body=="" || $type==""){
				$alert = "<span class='error'>Fields must be not empty</span>";
				return $alert;
			}else{
				if(!empty($file_name)){
					//Nếu người dùng chọn ảnh
					if ($file_size > 500000) {

		    		 $alert = "<span class='success'>Image Size should be less then 2MB!</span>";
					return $alert;
				    } 
					elseif (in_array($file_ext, $permited) === false) 
					{
				     // echo "<span class='error'>You can upload only:-".implode(', ', $permited)."</span>";	
				    $alert = "<span class='success'>You can upload only:-".implode(', ', $permited)."</span>";
					return $alert;
					}
					move_uploaded_file($file_temp,$uploaded_image);
					$query = "UPDATE tbl_news SET
					title = '$title',
					description = '$description',
					body = '$body', 
					type = '$type', 
					image = '$unique_image'
					WHERE newId = '$id'";
					
				}else{
					//Nếu người dùng không chọn ảnh
					$query = "UPDATE tbl_news SET
                    title = '$title',
					description = '$description',
					body = '$body', 
					type = '$type'
					WHERE newId = '$id'";
					
				}
				$result = $this->db->update($query);
					if($result){
						$alert = "<span class='success'>Product Updated Successfully</span>";
						return $alert;
					}else{
						$alert = "<span class='error'>Product Updated Not Success</span>";
						return $alert;
					}
				
			}

		}
		public function del_new($id){
			$query = "DELETE FROM tbl_news where newId = '$id'";
			$result = $this->db->delete($query);
			if($result){
				$alert = "<span class='success'>Xoá bài viết thành công</span>";
				return $alert;
			}else{
				$alert = "<span class='error'>Xoá bài viết không thành công</span>";
				return $alert;
			}
			
		}
		public function show_new(){
			$query = "SELECT * FROM tbl_news order by newId desc";
			$result = $this->db->select($query);
			return $result;
		}
		public function getnewbyId($id){
			$query = "SELECT * FROM tbl_news where newId = '$id'";
			$result = $this->db->select($query);
			return $result;
		}
		
	}
?>