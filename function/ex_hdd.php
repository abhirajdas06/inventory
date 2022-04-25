<?php

//include "db_connection.php";
// $filename = 'hard_disk_'.date("d-m-y").'.csv';

// // POST values
// $from_date = $_POST['from_date'];
// $to_date = $_POST['to_date'];

// // Select query
// //$query = "SELECT * FROM lead_mng ORDER BY id asc";
// //$query = "SELECT lead_mng.Id AS lead_id, lead_date, lead_source, zcpl_branch, cont_name, comp_name, cont_no, email_id, prod_req, qty_req, deal_val, lead_status, lead_stage, lost_reason, closed_date, remarks, address, users.name AS assignee From lead_mng INNER JOIN users ON lead_mng.assign_to=users.id ORDER BY id asc";

// $query= "SELECT * From hdd";

// $result = mysqli_query($connection,$query);
// $hdd_arr = array();

// // file creation
// $file = fopen($filename,"w");

// // Header row - Remove this code if you don't want a header row in the export file.
// $hdd_arr = array("Sr No",	"Product",	"Brand",	"OEM",	"Brand Model No",	"OEM Model No",	"Capacity",	"RPM",	"Interface(Sas/Sata/Fc)",	" Part No",	"Alt Part no",	"Alt Fru No / Alt Part No (1)",	"Alt Fru No / Alt Part No (2)",	"Alt Fru No / Alt Part No (3)",	"Retail Part No(Box Pack)",	"Spare Part No-Tray",	"GPN Code",	"Brand Serial no 1",	"Oem Serial no",	"Serial No",	"Firmware",	"Size(2.5/3.5)",	"Quantity",	"GB/S",	"Location",	"Barcode",	"Tray -Barcode",	"Reference Location",	"Remark");    
// fputcsv($file,$hdd_arr);   
// while($row = mysqli_fetch_array($result)){
	
//     //$id =$row['Id'];
//     $id                 =       $_POST['hdd_id'];
//     $product            =       $_POST['product'];
//     $brand              =       $_POST['brand'];
//     $oem                =       $_POST['oem'];
//     $b_model_no         =       $_POST['b_model_no'];
//     $o_model_no         =       $_POST['o_model_no'];
//     $capacity           =       $_POST['capacity'];
//     $rpm                =       $_POST['rpm'];
//     $interface          =       $_POST['interface'];
//     $part_no            =       $_POST['part_no'];
//     $a_part_no          =       $_POST['a_part_no'];
//     $a_part_no_1        =       $_POST['a_part_no_1'];
//     $a_part_no_2        =       $_POST['a_part_no_2'];
//     $a_part_no_3        =       $_POST['a_part_no_3'];
//     $r_part_no          =       $_POST['r_part_no'];
//     $spare_part_no      =       $_POST['spare_part_no'];
//     $gpn_code           =       $_POST['gpn_code'];
//     $b_serial_no        =       $_POST['b_serial_no'];
//     $o_serial_no        =       $_POST['o_serial_no'];
//     $serial_no          =       $_POST['serial_no'];
//     $firmware           =       $_POST['firmware'];
//     $size               =       $_POST['size'];
//     $quantity           =       $_POST['quantity'];
//     $gbps               =       $_POST['gbps'];
//     $location           =       $_POST['location'];
//     $barcode            =       $_POST['barcode'];
//     $t_barcode          =       $_POST['t_barcode'];
//     $ref_location       =       $_POST['ref_location'];
//     $remark             =       $_POST['remark'];
//     // $status             =       $_POST['status'];
    
//     // Write to file 
//     $hdd_arr = array($id, $product,	$brand,	$oem,	$b_model_no,	$o_model_no,	$capacity,	$rpm,	$interface,	$part_no,	$a_part_no,	$a_part_no_1,	$a_part_no_2,	$a_part_no_3,	$r_part_no,	$spare_part_no,	$gpn_code,	$b_serial_no,	$o_serial_no,	$serial_no,	$firmware,	$size,	$quantity,	$gbps,	$location,	$barcode,	$t_barcode,	$ref_location,	$remark,	$status);
//     fputcsv($file,$hdd_arr);   
// }

// fclose($file); 

// // download
// header("Content-Description: File Transfer");
// header("Content-Disposition: attachment; filename=$filename");
// header("Content-Type: application/csv; "); 

// readfile($filename);

// // deleting file
// unlink($filename);
// exit();



include "db_connection.php";
$filename = 'leads_'.date("d-m-y").'.csv';

// POST values
$from_date = $_POST['from_date'];
$to_date = $_POST['to_date'];

// Select query
//$query = "SELECT * FROM lead_mng ORDER BY id asc";
//$query = "SELECT lead_mng.Id AS lead_id, lead_date, lead_source, zcpl_branch, cont_name, comp_name, cont_no, email_id, prod_req, qty_req, deal_val, lead_status, lead_stage, lost_reason, closed_date, remarks, address, users.name AS assignee From lead_mng INNER JOIN users ON lead_mng.assign_to=users.id ORDER BY id asc";

$query= "SELECT * from hdd";

$result = mysqli_query($connection,$query);
$employee_arr = array();

// file creation
$file = fopen($filename,"w");

// Header row - Remove this code if you don't want a header row in the export file.
$employee_arr = array("SKU Id","Product Name","Short Description","Description","Stock","Weight","Length","Width","Height","Category","Sub-Category","Time Period","Material","Price");    
fputcsv($file,$employee_arr);   
while($row = mysqli_fetch_assoc($result)){
	
    // //$id =$row['Id'];
    // //$bdm =$row['assign_to'];
    // $prod_id       = $sku_id;
    // $prod_name     = $row['prod_name'];
    // $short_desc    = $row["short_desc"];
    // $description   = $row["description"];
    // $stock         = $row["stock"];
    // $weight        = $row["weight"];
    // $length        = $row["length"];
    // $width         = $row["width"];
    // $height        = $row["height"];
    // $category      = $cat;
    // $sub_cat       = $row["sub_cat"];
    // $time_period   = $row["time_period"];
    // $material      = $row["material"];
    // $price   	     = $row["price"];
    





    // Write to file 
    $employee_arr = array($prod_id,$prod_name,$short_desc,$description,$stock,$weight,$length,$width,$height,$category,$sub_cat,$time_period,$material,$price);
    fputcsv($file,$employee_arr);   
}

fclose($file); 

// download
header("Content-Description: File Transfer");
header("Content-Disposition: attachment; filename=$filename");
header("Content-Type: application/csv; "); 

readfile($filename);

// deleting file
unlink($filename);
exit();
