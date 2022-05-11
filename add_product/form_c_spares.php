<?php
include "db_connection.php"?>
<h2 align="center">Add Details</h2>
<!-- form  -->
<div class="container form-group">
    <form method="post" action="index.php?page=./function/add_vrm">
        <!-- <input type="hidden" name="hdd_id"> -->
        <!-- <input type="text" name="product" value="VRM" hidden> -->
        <div class="row">
        <!-- <div class="row"> -->
        <div class="form-group col-md-3">
                <label for="inputsubcategory">Select Product</label>
                <select name="product" class="btn btn-default dropdown-toggle">
                    <option selected>Select Product </option>
                    
                    <option value = "COOLING FAN">COOLING FAN </option>
                    <option value = "VRM">VRM</option>
                    <option value = "COOLING FAN BACKPLANE">COOLING FAN BACKPLANE</option>
                    <option value = "DVD">DVD</option>
                    <option value = "HARD DISK BACKPLANE">HARD DISK BACKPLANE</option>
                    <option value = "HEAT SINK">HEAT SINK</option>
                    <option value = "LTO">LTO</option>
                    <option value = "MISCELLANEOUS">MISCELLANEOUS</option>
                    <option value = "MOTHER BOARD">MOTHER BOARD</option>
                    <option value = "ON OFF SWITCH">ON OFF SWITCH</option>
                    <option value = "POWER BACKPLANE">POWER BACKPLANE</option>
                    <option value = "POWER CAGE">POWER CAGE</option>
                    <option value = "POWER SUPPLY">POWER SUPPLY</option>
                    <option value = "RISER CARD">RISER CARD</option>
                    <option value = "ADAPTOR">ADAPTOR</option>
                    <option value = "IO BOARD">IO BOARD</option>
                    <option value = "IP PHONE">IP PHONE</option>
                    
                </select>
            </div>
        <div class="form-group col-md-2">
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
            </div>
            <div class="form-group col-md-3">
                <label for="inputname"> Model No</label>
                <input type="name" class="form-control" name="model" placeholder="Enter the Model No"
                >
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Part No</label>
                <input type="name" class="form-control" name="part_no" placeholder="Enter the Part No">
            </div>
            <div class="form-group col-md-2">
                <label for="inputname">Alternate Part No</label>
                <input type="name" class="form-control" name="alt_part_no" placeholder="Enter Alternate Part No">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Serial No</label>
                <input type="name" class="form-control" name="serial_no" placeholder="Enter Serial No">
            </div>
            <div class="form-group col-md-4">
                <label for="inputname">Alternate Serial No</label>
                <input type="name" class="form-control" name="alt_serial No" placeholder="Enter Alternate Serial No">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Specification</label>
                <input type="name" class="form-control" name="specs" placeholder="Enter Specification">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Quantity </label>
                <input type="name" class="form-control" name="quantity" placeholder="Enter Quantity">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Barcode </label>
                <input type="name" class="form-control" name="barcode" placeholder="Enter Barcode">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Location</label>
                <input type="name" class="form-control" name="location" placeholder="Enter Location">
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Reference Location</label>
                <input type="name" class="form-control" name="ref_location" placeholder="Enter Reference Location">
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