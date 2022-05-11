<?php 
//print_r($_POST);
include "db_connection.php";
if ($connection->connect_error) {
  die("Connection failed: " . $connection->connect_error);

}

$product              =          $_POST['product'];
$test_date            =          $_POST['test_date'];
$test_by              =          $_POST['test_by'];
$mach_type            =          $_POST['mach_type'];
$mach_no              =          $_POST['mach_no'];
$service_tag          =          $_POST['service_tag'];
$model                =          $_POST['model'];
$spar_type            =          $_POST['spar_type'];
$part_no              =          $_POST['part_no'];
$alt_part             =          $_POST['alt_part'];
$seri_no              =          $_POST['seri_no'];
$alt_serial           =          $_POST['alt_serial'];
$specs                =          $_POST['specs'];
$barc_no              =          $_POST['barc_no'];
$qty                  =          $_POST['qty'];
$work_not             =          $_POST['work_not'];
$location             =          $_POST['location'];
$refe_location        =          $_POST['refe_location'];
$pare_child           =          $_POST['pare_child'];
// $remark               =          $_POST['remark'];


// Add RACK SERVER
if ($product == "RACK SERVER") {
  $sql = "INSERT INTO rack_server  (	test_date,	test_by,	mach_type,	mach_no,	service_tag,	model,	spar_type,	part_no,	alt_part,	seri_no,	alt_serial,	specs,	barc_no,	qty,	work_not,	location,	refe_location,	pare_child,	remark )
VALUES ($test_date',	'$test_by',	'$mach_type',	'$mach_no',	'$service_tag',	'$model',	'$spar_type',	'$part_no',	'$alt_part',	'$seri_no',	'$alt_serial',	'$specs',	'$barc_no',	'$qty',	'$work_not',	'$location',	'$refe_location',	'$pare_child',	'$remark')";
}

// Add BLADE SERVER
if ($product == "BLADE SERVER") {
  $sql = "INSERT INTO blade_server  (	test_date,	test_by,	mach_type,	mach_no,	service_tag,	model,	spar_type,	part_no,	alt_part,	seri_no,	alt_serial,	specs,	barc_no,	qty,	work_not,	location,	refe_location,	pare_child,	remark )
VALUES ($test_date',	'$test_by',	'$mach_type',	'$mach_no',	'$service_tag',	'$model',	'$spar_type',	'$part_no',	'$alt_part',	'$seri_no',	'$alt_serial',	'$specs',	'$barc_no',	'$qty',	'$work_not',	'$location',	'$refe_location',	'$pare_child',	'$remark')";
}

// Add STORAGE
if ($product == "STORAGE") {
  $sql = "INSERT INTO storage  (	test_date,	test_by,	mach_type,	mach_no,	service_tag,	model,	spar_type,	part_no,	alt_part,	seri_no,	alt_serial,	specs,	barc_no,	qty,	work_not,	location,	refe_location,	pare_child,	remark )
VALUES ($test_date',	'$test_by',	'$mach_type',	'$mach_no',	'$service_tag',	'$model',	'$spar_type',	'$part_no',	'$alt_part',	'$seri_no',	'$alt_serial',	'$specs',	'$barc_no',	'$qty',	'$work_not',	'$location',	'$refe_location',	'$pare_child',	'$remark')";
}

// Add SUN SERVER
if ($product == "SUN SERVER") {
  $sql = "INSERT INTO sun_server  (	test_date,	test_by,	mach_type,	mach_no,	service_tag,	model,	spar_type,	part_no,	alt_part,	seri_no,	alt_serial,	specs,	barc_no,	qty,	work_not,	location,	refe_location,	pare_child,	remark )
VALUES ($test_date',	'$test_by',	'$mach_type',	'$mach_no',	'$service_tag',	'$model',	'$spar_type',	'$part_no',	'$alt_part',	'$seri_no',	'$alt_serial',	'$specs',	'$barc_no',	'$qty',	'$work_not',	'$location',	'$refe_location',	'$pare_child',	'$remark')";
}

// Add IBM/ DELL/HP CHASIS
if ($product == "IBM/ DELL/HP CHASIS") {
  $sql = "INSERT INTO chasis  (	test_date,	test_by,	mach_type,	mach_no,	service_tag,	model,	spar_type,	part_no,	alt_part,	seri_no,	alt_serial,	specs,	barc_no,	qty,	work_not,	location,	refe_location,	pare_child,	remark )
VALUES ($test_date',	'$test_by',	'$mach_type',	'$mach_no',	'$service_tag',	'$model',	'$spar_type',	'$part_no',	'$alt_part',	'$seri_no',	'$alt_serial',	'$specs',	'$barc_no',	'$qty',	'$work_not',	'$location',	'$refe_location',	'$pare_child',	'$remark')";
}

// Add NETWORKING FIREWALL
if ($product == "NETWORKING FIREWALL") {
  $sql = "INSERT INTO networking_firewall  (	test_date,	test_by,	mach_type,	mach_no,	service_tag,	model,	spar_type,	part_no,	alt_part,	seri_no,	alt_serial,	specs,	barc_no,	qty,	work_not,	location,	refe_location,	pare_child,	remark )
VALUES ($test_date',	'$test_by',	'$mach_type',	'$mach_no',	'$service_tag',	'$model',	'$spar_type',	'$part_no',	'$alt_part',	'$seri_no',	'$alt_serial',	'$specs',	'$barc_no',	'$qty',	'$work_not',	'$location',	'$refe_location',	'$pare_child',	'$remark')";
}

// Add NETWORKING MODEM / ROUTER
if ($product == "NETWORKING MODEM / ROUTER") {
  $sql = "INSERT INTO networking_modem  (	test_date,	test_by,	mach_type,	mach_no,	service_tag,	model,	spar_type,	part_no,	alt_part,	seri_no,	alt_serial,	specs,	barc_no,	qty,	work_not,	location,	refe_location,	pare_child,	remark )
VALUES ($test_date',	'$test_by',	'$mach_type',	'$mach_no',	'$service_tag',	'$model',	'$spar_type',	'$part_no',	'$alt_part',	'$seri_no',	'$alt_serial',	'$specs',	'$barc_no',	'$qty',	'$work_not',	'$location',	'$refe_location',	'$pare_child',	'$remark')";
}

// Add NETWORKING SWITCH
if ($product == "NETWORKING SWITCH") {
  $sql = "INSERT INTO networking_switch  (	test_date,	test_by,	mach_type,	mach_no,	service_tag,	model,	spar_type,	part_no,	alt_part,	seri_no,	alt_serial,	specs,	barc_no,	qty,	work_not,	location,	refe_location,	pare_child,	remark )
VALUES ($test_date',	'$test_by',	'$mach_type',	'$mach_no',	'$service_tag',	'$model',	'$spar_type',	'$part_no',	'$alt_part',	'$seri_no',	'$alt_serial',	'$specs',	'$barc_no',	'$qty',	'$work_not',	'$location',	'$refe_location',	'$pare_child',	'$remark')";
}

// Add CISCO CHASIS
if ($product == "CISCO CHASIS") {
  $sql = "INSERT INTO cisco_chasis  (	test_date,	test_by,	mach_type,	mach_no,	service_tag,	model,	spar_type,	part_no,	alt_part,	seri_no,	alt_serial,	specs,	barc_no,	qty,	work_not,	location,	refe_location,	pare_child,	remark )
VALUES ($test_date',	'$test_by',	'$mach_type',	'$mach_no',	'$service_tag',	'$model',	'$spar_type',	'$part_no',	'$alt_part',	'$seri_no',	'$alt_serial',	'$specs',	'$barc_no',	'$qty',	'$work_not',	'$location',	'$refe_location',	'$pare_child',	'$remark')";
}

// Add DESKTOP
if ($product == "DESKTOP") {
  $sql = "INSERT INTO desktop  (	test_date,	test_by,	mach_type,	mach_no,	service_tag,	model,	spar_type,	part_no,	alt_part,	seri_no,	alt_serial,	specs,	barc_no,	qty,	work_not,	location,	refe_location,	pare_child,	remark )
VALUES ($test_date',	'$test_by',	'$mach_type',	'$mach_no',	'$service_tag',	'$model',	'$spar_type',	'$part_no',	'$alt_part',	'$seri_no',	'$alt_serial',	'$specs',	'$barc_no',	'$qty',	'$work_not',	'$location',	'$refe_location',	'$pare_child',	'$remark')";
}


if ($connection->query($sql) === TRUE) {
  echo "New record created successfully"  ;
} else {
  echo "Error: " . $sql . "<br>" . $connection->error;
}?>
<script>
location.replace("index.php?page=./add_product/form_hdd");

</script>
// header("Location:index.php?page=./add_product/add_hdd");