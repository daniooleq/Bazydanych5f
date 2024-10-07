<?php
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "daniel";

// Utworzenie połączenia
$conn = new mysqli($servername, $username, $password, $dbname);

// Sprawdzenie połączenia
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}


$result = $conn->query("SELECT * FROM autorzy");
 
while($row = $result->fetch_assoc())
  {
  echo "Dane tabeli autorzy: " . $row['id'] . " " . $row['imie'] . " " . $row['nazwisko'];
  echo "<br />";
  }
 
mysqli_close($conn);

?>