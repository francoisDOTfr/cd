<?php 
include('include/conf.inc.php');
include('include/sql.inc.php');



$bdd = connect_bdd();
$name = mysqli_real_escape_string ($bdd,$_POST["name"]);
//var_dump($_POST);
$sql = "INSERT INTO cd_album SET album_name ='".$name."'";

sleep(2);
send_sql($bdd,$sql);

echo $id = mysqli_insert_id($bdd);

 ?>