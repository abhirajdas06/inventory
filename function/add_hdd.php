<?php 
//print_r($_POST);
include "db_connection.php";
if ($connection->connect_error) {
  die("Connection failed: " . $connection->connect_error);

}

$product            =       $_POST['product'];
$brand              =       $_POST['brand'];
$oem                =       $_POST['oem'];
$b_model_no         =       $_POST['b_model_no'];
$o_model_no         =       $_POST['o_model_no'];
$capacity           =       $_POST['capacity'];
$rpm                =       $_POST['rpm'];
$interface          =       $_POST['interface'];
$part_no            =       $_POST['part_no'];
$a_part_no          =       $_POST['a_part_no'];
$a_part_no_1        =       $_POST['a_part_no_1'];
$a_part_no_2        =       $_POST['a_part_no_2'];
$a_part_no_3        =       $_POST['a_part_no_3'];
$r_part_no          =       $_POST['r_part_no'];
$spare_part_no      =       $_POST['spare_part_no'];
$gpn_code           =       $_POST['gpn_code'];
$b_serial_no        =       $_POST['b_serial_no'];
$o_serial_no        =       $_POST['o_serial_no'];
$serial_no          =       $_POST['serial_no'];
$firmware           =       $_POST['firmware'];
$size               =       $_POST['size'];
$quantity           =       $_POST['quantity'];
$gbps               =       $_POST['gbps'];
$location           =       $_POST['location'];
$barcode            =       $_POST['barcode'];
$t_barcode          =       $_POST['t_barcode'];
$ref_location       =       $_POST['ref_location'];
$remark             =       $_POST['remark'];
// $status             =       $_POST['status'];

$sql = "INSERT INTO hdd(product,	brand,	oem,	b_model_no,	o_model_no,	capacity,	rpm,	interface,	part_no,	a_part_no,	a_part_no_1,	a_part_no_2,	a_part_no_3,	r_part_no,	spare_part_no,	gpn_code,	b_serial_no,	o_serial_no,	serial_no,	firmware,	size,	quantity,	gbps,	location,	barcode,	t_barcode,	ref_location,	remark)
VALUES ('$product',	'$brand',	'$oem',	'$b_model_no',	'$o_model_no',	'$capacity',	'$rpm',	'$interface',	'$part_no',	'$a_part_no',	'$a_part_no_1',	'$a_part_no_2',	'$a_part_no_3',	'$r_part_no',	'$spare_part_no',	'$gpn_code',	'$b_serial_no',	'$o_serial_no',	'$serial_no',	'$firmware',	'$size',	'$quantity',	'$gbps',	'$location',	'$barcode',	'$t_barcode',	'$ref_location',	'$remark')";


if ($connection->query($sql) === TRUE) {
  echo "New record created successfully"  ;
} else {
  echo "Error: " . $sql . "<br>" . $connection->error;
}?>
<script>
location.replace("index.php?page=./add_product/form_hdd");

</script>
// header("Location:index.php?page=./add_product/add_hdd");