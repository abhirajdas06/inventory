<?php
//print_r($_POST);
include "db_connection.php";
if ($connection->connect_error) {
  die("Connection failed: " . $connection->connect_error);
}

$product         =      $_POST['product'];
$brand           =      $_POST['brand'];
$model           =      $_POST['model'];
$part_no         =      $_POST['part_no'];
$alt_part_no     =      $_POST['alt_part_no'];
$serial_no       =      $_POST['serial_no'];
$alt_serial_no   =      $_POST['alt_serial_no'];
$specs           =      $_POST['specs'];
$quantity        =      $_POST['quantity'];
$barcode         =      $_POST['barcode'];
$location        =      $_POST['location'];
$ref_location    =      $_POST['ref_location'];
$remark          =      $_POST['remark'];


// Add VRM
if ($product == "VRM") {
  $sql = "INSERT INTO vrm(	product,	brand,	model,	part_no,	alt_part_no,	serial_no,	alt_serial_no,	specs,	quantity,	barcode,	location,	ref_location,	remark)
VALUES ('$product',	'$brand',	'$model',	'$part_no',	'$alt_part_no',	'$serial_no',	'$alt_serial_no',	'$specs',	'$quantity',	'$barcode',	'$location',	'$ref_location',	'$remark')";
}

// Add COOLING FAN
if ($product == "COOLING FAN") {
  $sql = "INSERT INTO cooling_fan(	product,	brand,	model,	part_no,	alt_part_no,	serial_no,	alt_serial_no,	specs,	quantity,	barcode,	location,	ref_location,	remark)
  VALUES ('$product',	'$brand',	'$model',	'$part_no',	'$alt_part_no',	'$serial_no',	'$alt_serial_no',	'$specs',	'$quantity',	'$barcode',	'$location',	'$ref_location',	'$remark')";
}

// Add COOLING FAN BACKPLANE
if ($product == "COOLING FAN BACKPLANE") {
  $sql = "INSERT INTO cf_backplane(	product,	brand,	model,	part_no,	alt_part_no,	serial_no,	alt_serial_no,	specs,	quantity,	barcode,	location,	ref_location,	remark)
    VALUES ('$product',	'$brand',	'$model',	'$part_no',	'$alt_part_no',	'$serial_no',	'$alt_serial_no',	'$specs',	'$quantity',	'$barcode',	'$location',	'$ref_location',	'$remark')";
}
// Add DVD
if ($product == "DVD") {
  $sql = "INSERT INTO dvd(	product,	brand,	model,	part_no,	alt_part_no,	serial_no,	alt_serial_no,	specs,	quantity,	barcode,	location,	ref_location,	remark)
    VALUES ('$product',	'$brand',	'$model',	'$part_no',	'$alt_part_no',	'$serial_no',	'$alt_serial_no',	'$specs',	'$quantity',	'$barcode',	'$location',	'$ref_location',	'$remark')";
}
// Add HARD DISK BACKPLANE
if ($product == "HARD DISK BACKPLANE") {
  $sql = "INSERT INTO hd_backplane(	product,	brand,	model,	part_no,	alt_part_no,	serial_no,	alt_serial_no,	specs,	quantity,	barcode,	location,	ref_location,	remark)
    VALUES ('$product',	'$brand',	'$model',	'$part_no',	'$alt_part_no',	'$serial_no',	'$alt_serial_no',	'$specs',	'$quantity',	'$barcode',	'$location',	'$ref_location',	'$remark')";
}
// Add HEAT SINK
if ($product == "HEAT SINK") {
  $sql = "INSERT INTO heat_sink  (	product,	brand,	model,	part_no,	alt_part_no,	serial_no,	alt_serial_no,	specs,	quantity,	barcode,	location,	ref_location,	remark)
    VALUES ('$product',	'$brand',	'$model',	'$part_no',	'$alt_part_no',	'$serial_no',	'$alt_serial_no',	'$specs',	'$quantity',	'$barcode',	'$location',	'$ref_location',	'$remark')";
}
// Add LTO
if ($product == "LTO") {
  $sql = "INSERT INTO lto  (	product,	brand,	model,	part_no,	alt_part_no,	serial_no,	alt_serial_no,	specs,	quantity,	barcode,	location,	ref_location,	remark)
    VALUES ('$product',	'$brand',	'$model',	'$part_no',	'$alt_part_no',	'$serial_no',	'$alt_serial_no',	'$specs',	'$quantity',	'$barcode',	'$location',	'$ref_location',	'$remark')";
}
// Add MISCELLANEOUS
if ($product == "MISCELLANEOUS") {
  $sql = "INSERT INTO miscellaneous  (	product,	brand,	model,	part_no,	alt_part_no,	serial_no,	alt_serial_no,	specs,	quantity,	barcode,	location,	ref_location,	remark)
    VALUES ('$product',	'$brand',	'$model',	'$part_no',	'$alt_part_no',	'$serial_no',	'$alt_serial_no',	'$specs',	'$quantity',	'$barcode',	'$location',	'$ref_location',	'$remark')";
}
// Add MOTHER BOARD
if ($product == "MOTHER BOARD") {
  $sql = "INSERT INTO mother_board  (	product,	brand,	model,	part_no,	alt_part_no,	serial_no,	alt_serial_no,	specs,	quantity,	barcode,	location,	ref_location,	remark)
    VALUES ('$product',	'$brand',	'$model',	'$part_no',	'$alt_part_no',	'$serial_no',	'$alt_serial_no',	'$specs',	'$quantity',	'$barcode',	'$location',	'$ref_location',	'$remark')";
}
// Add ON OFF SWITCH
if ($product == "ON OFF SWITCH") {
  $sql = "INSERT INTO oo_switch  (	product,	brand,	model,	part_no,	alt_part_no,	serial_no,	alt_serial_no,	specs,	quantity,	barcode,	location,	ref_location,	remark)
    VALUES ('$product',	'$brand',	'$model',	'$part_no',	'$alt_part_no',	'$serial_no',	'$alt_serial_no',	'$specs',	'$quantity',	'$barcode',	'$location',	'$ref_location',	'$remark')";
}
// Add POWER BACKPLANE
if ($product == "POWER BACKPLANE") {
  $sql = "INSERT INTO power_backplane  (	product,	brand,	model,	part_no,	alt_part_no,	serial_no,	alt_serial_no,	specs,	quantity,	barcode,	location,	ref_location,	remark)
    VALUES ('$product',	'$brand',	'$model',	'$part_no',	'$alt_part_no',	'$serial_no',	'$alt_serial_no',	'$specs',	'$quantity',	'$barcode',	'$location',	'$ref_location',	'$remark')";
}
// Add POWER CAGE
if ($product == "POWER CAGE") {
  $sql = "INSERT INTO power_cage  (	product,	brand,	model,	part_no,	alt_part_no,	serial_no,	alt_serial_no,	specs,	quantity,	barcode,	location,	ref_location,	remark)
    VALUES ('$product',	'$brand',	'$model',	'$part_no',	'$alt_part_no',	'$serial_no',	'$alt_serial_no',	'$specs',	'$quantity',	'$barcode',	'$location',	'$ref_location',	'$remark')";
}
// Add POWER SUPPLY
if ($product == "POWER SUPPLY") {
  $sql = "INSERT INTO power_supply  (	product,	brand,	model,	part_no,	alt_part_no,	serial_no,	alt_serial_no,	specs,	quantity,	barcode,	location,	ref_location,	remark)
    VALUES ('$product',	'$brand',	'$model',	'$part_no',	'$alt_part_no',	'$serial_no',	'$alt_serial_no',	'$specs',	'$quantity',	'$barcode',	'$location',	'$ref_location',	'$remark')";
}
// Add RISER CARD
if ($product == "RISER CARD") {
  $sql = "INSERT INTO riser_card  (	product,	brand,	model,	part_no,	alt_part_no,	serial_no,	alt_serial_no,	specs,	quantity,	barcode,	location,	ref_location,	remark)
    VALUES ('$product',	'$brand',	'$model',	'$part_no',	'$alt_part_no',	'$serial_no',	'$alt_serial_no',	'$specs',	'$quantity',	'$barcode',	'$location',	'$ref_location',	'$remark')";
}
// Add ADAPTOR
if ($product == "ADAPTOR") {
  $sql = "INSERT INTO adaptor  (	product,	brand,	model,	part_no,	alt_part_no,	serial_no,	alt_serial_no,	specs,	quantity,	barcode,	location,	ref_location,	remark)
    VALUES ('$product',	'$brand',	'$model',	'$part_no',	'$alt_part_no',	'$serial_no',	'$alt_serial_no',	'$specs',	'$quantity',	'$barcode',	'$location',	'$ref_location',	'$remark')";
}
// Add IO BOARD
if ($product == "IO BOARD") {
  $sql = "INSERT INTO io_board  (	product,	brand,	model,	part_no,	alt_part_no,	serial_no,	alt_serial_no,	specs,	quantity,	barcode,	location,	ref_location,	remark)
    VALUES ('$product',	'$brand',	'$model',	'$part_no',	'$alt_part_no',	'$serial_no',	'$alt_serial_no',	'$specs',	'$quantity',	'$barcode',	'$location',	'$ref_location',	'$remark')";
}
// Add IP PHONE
if ($product == "IP PHONE") {
  $sql = "INSERT INTO ip_phone  (	product,	brand,	model,	part_no,	alt_part_no,	serial_no,	alt_serial_no,	specs,	quantity,	barcode,	location,	ref_location,	remark)
    VALUES ('$product',	'$brand',	'$model',	'$part_no',	'$alt_part_no',	'$serial_no',	'$alt_serial_no',	'$specs',	'$quantity',	'$barcode',	'$location',	'$ref_location',	'$remark')";
}





if ($connection->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $connection->error;
} ?>
<script>
  location.replace("index.php?page=./add_product/form_c_spares");
</script>
// header("Location:index.php?page=./add_product/add_hdd");