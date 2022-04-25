<?php 
include "db_connection.php";
if ($connection->connect_error) {
  die("Connection failed: " . $connection->connect_error);

}

$brand              =       $_POST['brand'];

$sql = "INSERT INTO add_master(brand)
VALUES ('$brand')";


if ($connection->query($sql) === TRUE) {
  echo "New record created successfully"  ;
} else {
  echo "Error: " . $sql . "<br>" . $connection->error;
}?>

<script>
location.replace("index.php?page=./add_master");

</script>
// exit (header('Location:index.php?page=./inventory/add_master'));
