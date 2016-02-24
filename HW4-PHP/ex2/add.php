<?php
$conn = mysqli_connect("localhost", "root", "", "First_db");
if ($conn === false){
	die("ERROR: Could not connect. " . mysqli_connect_error());
}
$name = mysqli_real_escape_string($conn, $_POST['Name']);
$email = mysqli_real_escape_string($conn, $_POST['Email']);
$age = mysqli_real_escape_string($conn, $_POST['Age']);

$sql = "INSERT INTO Person (Name, Email, Age) VALUES ('$name', '$email', '$age')";

if(mysqli_query($conn, $sql)){
    echo "Records added successfully."<br>;
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
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