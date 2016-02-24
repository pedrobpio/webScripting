<?php
$servername = "localhost";
$username = "root";
$password = "";


$conn = mysqli_connect($servername, $username, $password, "First_db");


if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
$sql = "SELECT * from Person";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		echo "Name - " . $row["Name"] . "   | Email - " . $row["Email"] ."<br>";
	}	
	}
mysqli_close($conn);
?> 
