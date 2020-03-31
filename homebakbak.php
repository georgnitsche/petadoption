<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<?php
		include ("db_connect.php");
		$sql = "SELECT * FROM animal";
		$result = mysqli_query($conn, $sql);
		$conn->close();
		if ($result->num_rows== 0 ){
			echo "No result";
		}elseif($result->num_rows == 1){
			$row = $result->fetch_assoc();
			echo $row["fk_location_id"] . " ". $row["image"]." ".$row["description"]. " ".$row["sml"]. " ".$row["pk_animal_id"]. "<a href='update.php?id=".$value["pk_animal_id"]."'>Update</a> <a href='delete.php?id=".$value["id"]."'>Delete</a><br>";
		}
		else {
			$rows = $result->fetch_all(MYSQLI_ASSOC);
			foreach ($rows as $key => $value)
			echo $value["fk_location_id"] . " " .$value["description"]. " ".$value["sml"]. " ".$value["pk_animal_id"]. " ".$value["name"]. "<a href='update.php?id=".$value["pk_animal_id"]."'>Update</a> <a href='delete.php?id=".$value["pk_animal_id"]."'>Delete</a> <img src=".$value["image"]."> <br>";
			
		}
		
	?>


</body>
</html>
