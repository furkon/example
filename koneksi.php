<?php

$host 	= "localhost";
$user 	= "root";
$pass 	= "";
$db_name = "db_example";

$connect = mysql_connect($host, $user, $pass);
if(!$connect){
	die('not connected' .mysql_error());
}
$db = mysql_select_db($db_name, $connect);
if(!$db){
	die('database not found' .mysql_error());
}

?>