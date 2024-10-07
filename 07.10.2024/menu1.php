
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title><link rel="stylesheet" href="styles.css">
</head>
<body>

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


$result = $conn->query("SELECT * FROM wypozyczalnia");
 
while($row = $result->fetch_assoc())
  {
  echo "Dane tabeli wypozyczalnia: " . $row['id'] . " " . $row['id_ksiazki'] . " " . $row['id_klienta'];
  echo "<br />";
  }
 
mysqli_close($conn);

?>

</body>
</html>
