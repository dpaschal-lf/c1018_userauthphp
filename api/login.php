<?php

require_once('mysql_creds.php');

$username = $_POST['user'];
$password = sha1( $_POST['pass'] );


?>