<!DOCTYPE html>
<html>
<head>
<style>
table {
    width: 100%;
    border-collapse: collapse;
}

table, td, th {
    border: 1px solid black;
    padding: 5px;
}

th {text-align: left;}
</style>
</head>
<body>

<?php
$q = intval($_GET['q']);
$n="";
if ($q==1){
    $n = "John";
}
if ($q==2){
    $n = "Jack";   
}
if ($q==3){
    $n = "Hurley";
}
if ($q==4){
    $n = "Kate";
}


$con = mysqli_connect('localhost','root','','first_db');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}
//mysqli_select_db($con,"ajax_demo");
$sql="SELECT * FROM Person WHERE Name = '".$n."'";
$result = mysqli_query($con,$sql);

echo "<table>
<tr>
<th>Name</th>
<th>Email</th>
<th>Age</th>
</tr>";
while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
    echo "<td>" . $row['Name'] . "</td>";
    echo "<td>" . $row['Email'] . "</td>";
    echo "<td>" . $row['Age'] . "</td>";
    echo "</tr>";
}
echo "</table>";
mysqli_close($con);
?>
</body>
</html>