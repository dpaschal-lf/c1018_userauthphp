<?php
session_start();

require_once('mysql_creds.php');

$sessionID = session_id();

session_destroy();

$query = "DELETE FROM `currentConnections` WHERE token='{$sessionID}'";

$result = mysqli_query($conn, $query);

if($result){
	if(mysqli_affected_rows($conn)!==1){
		print("you were not logged out");
	}
	else {
		print("you were logged out");
	}
}
?>