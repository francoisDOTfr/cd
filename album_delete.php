<?php 
	include('include/conf.inc.php');
	include('include/sql.inc.php');



	$bdd = connect_bdd();
	$id = mysqli_real_escape_string ($bdd,$_POST["id"]);

	$sql = "DELETE FROM cd_album_has_categ WHERE album_id ='".$id."'";
	send_sql($bdd,$sql);
	$sql = "DELETE FROM cd_album WHERE album_id ='".$id."'";
	send_sql($bdd,$sql);
 ?>