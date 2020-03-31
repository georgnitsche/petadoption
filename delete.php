<?php
require_once 'db_connect.php';
if($_GET["pk_animal_id"]){
	$pk_animal_id = $_GET["pk_animal_id"];

	$sql = "DELETE FROM animal WHERE pk_animal_id = $pk_animal_id";

	if(mysqli_query($conn, $sql)){
		echo "success <br> <a href='home.php' >Back to home page</a>";
	}else
	{echo "error";
}
	}
	$conn->close();
?>