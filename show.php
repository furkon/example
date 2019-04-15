<?php require_once 'header.php';

if(isset($_GET['show'])){
	$show = trim($_GET['show']);
	
	require_once 'koneksi.php';
	$q = "SELECT * FROM t_user WHERE id_user = '".$show."' ";
	$query = mysql_query($q) or die(mysql_error());
	$data = mysql_fetch_assoc($query);
	// var_dump($data);	
}
?>

<?php
		if(isset($_POST['Input'])){
			
			$nama_rek = trim($_POST['nama_rek']);
			$no_rek = trim($_POST['no_rek']);
			$id_user =  $_POST['id_user'];
			
			require_once 'koneksi.php';
			$cek_id = "SELECT * FROM t_rek WHERE id_user = '".$id_user."' ";
			$cek_rek = mysql_query($cek_id) or die(mysql_error());
			$num = mysql_num_rows($cek_rek);
			
			if($num == 0){
				$q = "INSERT INTO t_rek VALUES('', '$id_user', '$no_rek', '$nama_rek')";
				$sql = mysql_query($q) or die(mysql_error());
				if($sql){
					echo  "<script>document.location=\"index.php\"</script>";	
				}else{
					echo 'error';
				}
			}else{
				die('data id sudah terdaftar');
			}
		}
	
	?>
	<form action="" method="POST" name="Input">
		<div class="grid-container">
			<h5>Form Rekening</h5>
			<div class="grid-x grid-padding-x">
				<input type="hidden" name="id_user" value="<?php echo $data['id_user'];?>">
				<div class="medium-6 cell">
					<label for="">No Rek
						<input type="text" name="no_rek">
					</label>
				</div>
				<div class="medium-6 cell">
					<label for="">Nama Rek
						<input type="text" name="nama_rek">
					</label>
				</div>
			</div>
			<button type="submit" class="success button" name="Input">Simpan</button>
			<a href="index.php" class="alert button">Back</a>
		</div>
	</form>
	
<?php require_once 'footer.php'; ?>