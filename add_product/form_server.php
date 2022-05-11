<?php
include "db_connection.php"?>
<h2 align="center">Add Details</h2>
<!-- form  -->
<div class="container form-group">
    <form method="post" action="index.php?page=./function/add_server">
        <!-- <input type="hidden" name="hdd_id"> -->
        <!-- <input type="text" name="product" value="VRM" hidden> -->
        <div class="row">
            <!-- <div class="row"> -->
            <div class="form-group col-md-3">
                <label for="inputsubcategory">Select Product</label>
                <select name="product" class="btn btn-default dropdown-toggle">
                    <option selected>Select Product </option>
                    <option value = "RACK SERVER">RACK SERVER </option>
                    <option value = "BLADE SERVER">BLADE SERVER </option>
                    <option value = "STORAGE">STORAGE </option>
                    <option value = "SUN SERVER">SUN SERVER </option>
                    <option value = "IBM/ DELL/HP CHASIS">IBM/ DELL/HP CHASIS </option>
                    <option value = "NETWORKING FIREWALL">NETWORKING FIREWALL </option>
                    <option value = "NETWORKING MODEM / ROUTER">NETWORKING MODEM / ROUTER </option>
                    <option value = "NETWORKING SWITCH">NETWORKING SWITCH </option>
                    <option value = "CISCO CHASIS">CISCO CHASIS </option>
                    <option value = "DESKTOP">DESKTOP </option>



                </select>
            </div>
            <!-- <div class="form-group col-md-2">
                <label for="inputsubcategory">Select Brand</label>
                <select name="brand" class="btn btn-default dropdown-toggle">
                    <option selected>Select Brand</option>
                    <?php 
                $query= "SELECT * from add_master";
                $result = mysqli_query($connection,$query);
                while($row = mysqli_fetch_assoc($result)){                
                ?>
                    <option value='<?php echo $row['brand'];?>'><?php echo $row ['brand'] ?> </option>
                    <?php } ?>
                </select>
            </div> -->
            <div class="form-group col-md-3">
                <label for="inputname"> Testing Date</label>
                <input type="name" class="form-control" name="test_date" placeholder="Enter Testing Date">
            </div>
            <div class="form-group col-md-3">
                <label for="inputsubcategory">Tested by</label>
                <select name="test_by" class="btn btn-default dropdown-toggle">
                    <option selected>Tested by </option>
                    <option value="Select name">Select name </option>
                </select>
            </div>
            <div class="form-group col-md-3">
                <label for="inputsubcategory">Machine Type</label>
                <select name="mach_type" class="btn btn-default dropdown-toggle">
                    <option selected> Select Machine Type </option>
                    <option value="Machine type">Machine type </option>
                </select>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname"> Machine no</label>
                <input type="name" class="form-control" name="mach_no" placeholder="Enter Machine no">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname"> System Service Tag No</label>
                <input type="name" class="form-control" name="service_tag" placeholder="Enter System Service Tag No">
            </div>
            <div class="form-group col-md-3">
                <label for="inputsubcategory">Model</label>
                <select name="model" class="btn btn-default dropdown-toggle">
                    <option selected> Select Model </option>
                    <option value="Model">Model </option>
                </select>
            </div>
            <div class="form-group col-md-3">
                <label for="inputsubcategory">Spares Type</label>
                <select name="spar_type" class="btn btn-default dropdown-toggle">
                    <option selected> Select Spares Type </option>
                    <option value="Spares Type">Spares Type </option>
                </select>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname"> Part No</label>
                <input type="name" class="form-control" name="part_no" placeholder="Enter Part No">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Alt Part No</label>
                <input type="name" class="form-control" name="alt_part" placeholder="Enter Alt Part No">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Serial No</label>
                <input type="name" class="form-control" name="seri_no" placeholder="Enter Serial No">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Alt Serial. no</label>
                <input type="name" class="form-control" name="alt_serial" placeholder="Enter Alt Serial. no">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Specification</label>
                <input type="name" class="form-control" name="specs" placeholder="Enter Specification">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Barcode No</label>
                <input type="name" class="form-control" name="barc_no" placeholder="Enter Barcode No">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Quantity</label>
                <input type="name" class="form-control" name="qty" placeholder="Enter Quantity">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Working Status</label>
                <input type="name" class="form-control" name="work_not" placeholder="Enter Working Status">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Location</label>
                <input type="name" class="form-control" name="location" placeholder="Enter Location">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Refrence Location</label>
                <input type="name" class="form-control" name="ref_location" placeholder="Enter refrence Location">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Parent-Child Location</label>
                <input type="name" class="form-control" name="pare_child" placeholder="Enter Parent-Child Location">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Remark</label>
                <input type="name" class="form-control" name="remark" placeholder="Enter Remark">
            </div>



            <!-- form end    -->

            <!-- submit button -->
            <div align="center" class="form-group col-md-12">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </form>
</div>
</body>