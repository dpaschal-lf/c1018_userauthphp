<?php


if(!function_exists('checkIfLoggedIn')){
	function checkIfLoggedIn(){
		global $conn;
		$sessionID = session_id();
		$query = "UPDATE `currentConnections`
						SET `connectionCount` = `connectionCount`+1,
						`ipAddress` = '{$_SERVER['REMOTE_ADDR']}',
						`lastConnection` = NOW()
					   WHERE `token` = '{$sessionID}'";
		$result = mysqli_query($conn, $query);
		if($result){
			if(mysqli_affected_rows($conn)> 0){
				$selectQuery = "SELECT * FROM `currentConnections`
			WHERE `token` = '{$sessionID}'";
				$userResult = mysqli_query($conn, $selectQuery);
				if($userResult){
					if(mysqli_num_rows($userResult)){
						return mysqli_fetch_assoc($userResult);
					}
				}
			}
		}
		return false;
	}
}

?>