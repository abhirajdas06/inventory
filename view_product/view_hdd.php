<?php
include "db_connection.php";
if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}
?>



<div class="container col-lg-12">
    <div class="col-md-6">
        <form method='post' action="index.php?page=./function/ex_hdd">

            <!-- Datepicker -->
            <input type='text' class='datepicker' placeholder="From date" name="from_date" id='from_date' readonly>
            <input type='text' class='datepicker' placeholder="To date" name="to_date" id='to_date' readonly>

            <!-- Export button -->
            <input type='submit' value='Export' name='Export'>

        </form>
    </div>
    <div class="col-md-6">

        <div> <a href="index.php?page=./add_product/form_hdd" class="btn btn-primary btn-md active" role="button" aria-pressed="true">Add
                Product</a> </div>


    </div>
</div>


<!-- <div class="table-responsive col-md-12"> -->

<table id="hdd_data" class="table table-borded  table-responsive table-striped ">
    <thead class="table-dark">
        <tr>
            <th>Edit</th>
            <th>Sr No</th>
            <th>Product</th>
            <th>Brand</th>
            <th>OEM</th>
            <th>Brand Model No</th>
            <th>OEM Model No</th>
            <th>Capacity</th>
            <th>RPM</th>
            <th>Interface(Sas/Sata/Fc)</th>
            <th> Part No</th>
            <th>Alt Part no</th>
            <th>Alt Fru No / Alt Part No (1)</th>
            <th>Alt Fru No / Alt Part No (2)</th>
            <th>Alt Fru No / Alt Part No (3)</th>
            <th>Retail Part No(Box Pack)</th>
            <th>Spare Part No-Tray</th>
            <th>GPN Code</th>
            <th>Brand Serial no 1</th>
            <th>Oem Serial no</th>
            <th>Serial No</th>
            <th>Firmware</th>
            <th>Size(2.5/3.5)</th>
            <th>Quantity</th>
            <th>GB/S</th>
            <th>Location</th>
            <th>Barcode</th>
            <th>Tray -Barcode</th>
            <th>Reference Location</th>
            <th>Remark</th>


        </tr>
    </thead>

    <?php


            $query = "SELECT * From hdd";
            $result = mysqli_query($connection, $query);
            $nums = mysqli_num_rows($result);
            //$res = mysqli_fetch_array($result);

            while ($row = mysqli_fetch_assoc($result)) {
               
                                echo '  
                               <tr> 

                                     <td><a href="update_pro.php?id=' . $row['hdd_id'] . '"
                                     data-toggle="tooltip" data-placement="top" title="UPDATE">
                                     <i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></td>
                                    <td>' .  $row["hdd_id"] . '</td> 
                                    <td>' . $row["product"] . '</td> 
                                    <td>' . $row["brand"] . '</td> 
                                    <td>' . $row["oem"] . '</td> 
                                    <td>' . $row["b_model_no"] . '</td> 
                                    <td>' . $row["o_model_no"] . '</td> 
                                    <td>' . $row["capacity"] . '</td> 
                                    <td>' . $row["rpm"] . '</td> 
                                    <td>' . $row["interface"] . '</td> 
                                    <td>' . $row["part_no"] . '</td> 
                                    <td>' . $row["a_part_no"] . '</td> 
                                    <td>' . $row["a_part_no_1"] . '</td> 
                                    <td>' . $row["a_part_no_2"] . '</td> 
                                    <td>' . $row["a_part_no_3"] . '</td> 
                                    <td>' . $row["r_part_no"] . '</td> 
                                    <td>' . $row["spare_part_no"] . '</td> 
                                    <td>' . $row["gpn_code"] . '</td> 
                                    <td>' . $row["b_serial_no"] . '</td> 
                                    <td>' . $row["o_serial_no"] . '</td> 
                                    <td>' . $row["serial_no"] . '</td> 
                                    <td>' . $row["firmware"] . '</td> 
                                    <td>' . $row["size"] . '</td> 
                                    <td>' . $row["quantity"] . '</td> 
                                    <td>' . $row["gbps"] . '</td> 
                                    <td>' . $row["location"] . '</td> 
                                    <td>' . $row["barcode"] . '</td> 
                                    <td>' . $row["t_barcode"] . '</td> 
                                    <td>' . $row["ref_location"] . '</td> 
                                    <td>' . $row["remark"] . '</td> 
                                    <td>' . $row["status"] . '</td>                                      
                               </tr>  
                               ';
            }
            ?>
</table>
</div>

<script>
    $(document).ready(function () {
        $('#employee_data').DataTable();
    });
</script>
<script type='text/javascript'>
    $(document).ready(function () {

        // From datepicker
        $("#from_date").datepicker({
            dateFormat: 'yy-mm-dd',
            changeYear: true,
            onSelect: function (selected) {
                var dt = new Date(selected);
                dt.setDate(dt.getDate() + 1);
                $("#to_date").datepicker("option", "minDate", dt);
            }
        });

        // To datepicker
        $("#to_date").datepicker({
            dateFormat: 'yy-mm-dd',
            changeYear: true,
            onSelect: function (selected) {
                var dt = new Date(selected);
                dt.setDate(dt.getDate() - 1);
                $("#from_date").datepicker("option", "maxDate", dt);
            }
        });
    });
</script>
</body>

