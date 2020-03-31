<?php
ob_start();
session_start();
require_once 'dbconnect.php';

// if session is not set this will redirect to login page
if( !isset($_SESSION['user' ]) && !isset($_SESSION['admin' ]) ) {
 header("Location: index.php");
 exit;
}
// select logged-in users details
$res=mysqli_query($conn, "SELECT * FROM users WHERE userId=".$_SESSION['user']);
$userRow=mysqli_fetch_array($res, MYSQLI_ASSOC);

		include ("db_connect.php");
		$sql = "SELECT * FROM `animal` WHERE sml = 's' OR sml = 'm'";
		$result = mysqli_query($conn, $sql);
		$conn->close();
		if ($result->num_rows== 0 ){
			echo "No result";
		}elseif($result->num_rows == 1){
			$row = $result->fetch_assoc();
			echo "location" .$row["fk_location_id"] . " ". $row["description"]." size ". $row["sml"]." animal id ".$row["pk_animal_id"]. " name ".$row["name"]. "<img src=".$value["image"]."> <br>";
		}
		else {
			$rows = $result->fetch_all(MYSQLI_ASSOC);
			foreach ($rows as $key => $value)
			echo "location" .$value["fk_location_id"] . " " .$value["description"]. " size ".$value["sml"]. " animal id ".$value["pk_animal_id"]. " name ".$value["name"]. "<img src=".$value["image"]."> <br>";
			
		}
?>
<!DOCTYPE html>
<html>
<head>
<title>Welcome - <?php echo $userRow['userEmail' ]; ?></title>
</head>
<body >
           Hi <?php echo $userRow['userEmail' ]; ?>
           <a href="home.php">Display all animals</a>
           <a  href="logout.php?logout">Sign Out</a>
 
       
 
</body>
</html>
<?php ob_end_flush(); ?>