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
		$sessionID = session_id();
		$userData = mysqli_fetch_assoc( $result );
		$insertQuery = "INSERT INTO `currentConnections` 
						SET `token` = '$sessionID',
						`userID` = {$userData['ID']},
						`connected` = NOW(),
						`connectionCount` = `connectionCount`+1,
						`ipAddress` = '{$_SERVER['REMOTE_ADDR']}',
						`lastConnection` = NOW()
						ON DUPLICATE KEY UPDATE 
						`connectionCount` = `connectionCount`+1,
						`ipAddress` = '{$_SERVER['REMOTE_ADDR']}',
						`lastConnection` = NOW()";
		$result = mysqli_query($conn, $insertQuery);
		if($result){
			if(mysqli_affected_rows($conn)> 0){
				$_SESSION['user'] = [
					'id' => $userData['ID'],
					'name'=> $userData['name']
				];	
				print("you are logged in");			
			} else {
				print("error logging you in");
			}
		} else {
			print(" error in database");
		}

	} else {
		print("you are not logged in");
	}
} else {
	print("database error");
}

?>