<?php require_once 'header.php';

	require_once 'koneksi.php';
	$q = "SELECT * FROM t_user";
	$cek_data = mysql_query($q)or die(mysql_error());
	$num = mysql_num_rows($cek_data);
	
	if($num > 0){
			while($data = mysql_fetch_assoc($cek_data)){?>
				<div class="callout secondary">
					<h5><?=$data['nama'];?></h5>
					<a class="button" href="show.php?show=<?=$data['id_user'];?>">Show</a>
				</div>
			<?php }
	}else{
		echo 'data not found';
	}

require_once 'footer.php';
?>
	