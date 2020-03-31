<?php
	$hostName= "localhost";
	$userName= "root";
	$password= "";
	$dbName= "cr11_georgnitsche_petadoption";

	$conn = mysqli_connect($hostName, $userName, $password, $dbName);

	if(!$conn){
		echo "error";
	}
	?>