<?php

session_start();

require_once('mysql_creds.php');
require_once('functions.php');

$loggedIn = checkIfLoggedIn();

if($loggedIn !== false){
	print($loggedIn['ID'] . " the current time is " . date('H:i:s'));
} else {
	print('you must be logged in to use this service');
}
?>