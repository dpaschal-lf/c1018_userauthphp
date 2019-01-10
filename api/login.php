<?php
session_start();

require_once('mysql_creds.php');

$username = $_POST['user'];
$password = sha1( $_POST['pass'] );

$query = "SELECT * FROM `users` WHERE `email`='$username' AND `password`='$password'";

$result = mysqli_query($conn, $query);

if($result){
	if( mysqli_num_rows($result)){
		print("you are logged in");
		$userData = mysqli_fetch_assoc( $result );
		$_SESSION['user'] = [
			'id' => $userData['ID'],
			'name'=> $userData['name']
		];
	} else {
		print("you are not logged in");
	}
} else {
	print("database error");
}

?>