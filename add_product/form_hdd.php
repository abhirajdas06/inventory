<?php
include "db_connection.php"?>
<h2 align="center">Add Hard Drive</h2>
<!-- form  -->
<div class="container form-group">
    <form method="post" action="index.php?page=./function/add_hdd">
        <input type="hidden" name="hdd_id">
        <input type="text" name="product" value="Hard Disk" hidden>
        <div class="row">
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
            <div class="form-group col-md-2">
                <label for="inputsubcategory">Select OEM</label>
                <select name="oem" class="btn btn-default dropdown-toggle">
                    <option selected>Select OEM</option>
                </select></div>
            <div class="form-group col-md-3">
                <label for="inputname">Brand Model No</label>
                <input type="name" class="form-control" name="b_model_no" placeholder="Enter the Brand Model No"
                    required>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">OEM Model No</label>
                <input type="name" class="form-control" name="o_model_no" placeholder="Enter the OEM Model No" required>
            </div>
            <div class="form-group col-md-2">
                <label for="inputname">Capacity</label>
                <input type="name" class="form-control" name="capacity" placeholder="Enter Capacity" required>
            </div>
            <div class="form-group col-md-2">
                <label for="inputsubcategory">Select RPM</label>
                <select name="rpm" class="btn btn-default dropdown-toggle">
                    <option selected>Select RPM</option>
                    <option value="10K">10K</option>
                    <option value="15K">15K</option>

                </select>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Interface</label>
                <input type="name" class="form-control" name="interface" placeholder="Enter Interface" required>
            </div>
            <div class="form-group col-md-4">
                <label for="inputname">Part No</label>
                <input type="name" class="form-control" name="part_no" placeholder="Enter Part No" required>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Alt Part No</label>
                <input type="name" class="form-control" name="a_part_no" placeholder="Enter Alt Part No" required>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Alt Part No (1)</label>
                <input type="name" class="form-control" name="a_part_no_1" placeholder="Enter Alt Part No (1)" required>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Alt Part No (2)</label>
                <input type="name" class="form-control" name="a_part_no_2" placeholder="Enter Alt Part No (2)" required>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Alt Part No (3)</label>
                <input type="name" class="form-control" name="a_part_no_3" placeholder="Enter Alt Part No (3)" required>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Retail Part No</label>
                <input type="name" class="form-control" name="r_part_no" placeholder="Enter Retail Part No" required>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Spare Part No</label>
                <input type="name" class="form-control" name="spare_part_no" placeholder="Enter Spare Part No" required>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">GPN Code</label>
                <input type="name" class="form-control" name="gpn_code" placeholder="Enter GPN Code" required>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Brand Serial No</label>
                <input type="name" class="form-control" name="b_serial_no" placeholder="Enter Brand Serial No" required>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">OEM Serial No</label>
                <input type="name" class="form-control" name="o_serial_no" placeholder="Enter OEM Serial No" required>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Serial No</label>
                <input type="name" class="form-control" name="serial_no" placeholder="Enter Serial No" required>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Firmware</label>
                <input type="name" class="form-control" name="firmware" placeholder="Enter Firmware" required>
            </div>
            <div class="form-group col-md-2">
                <label for="inputsubcategory">Select Size</label>
                <select name="size" class="btn btn-default dropdown-toggle">
                    <option selected>Select Size</option>
                    <option value="2.5">2.5</option>
                    <option value="3.5">3.5</option>
                </select>
            </div>
            <div class="form-group col-md-2">
                <label for="inputname">Quantity</label>
                <input type="name" class="form-control" name="quantity" placeholder="Enter Quantity" required>
            </div>
            <div class="form-group col-md-2">
                <label for="inputname">GB/s</label>
                <input type="name" class="form-control" name="gbps" placeholder="Enter GB/s" required>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Location</label>
                <input type="name" class="form-control" name="location" placeholder="Enter Location" required>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Barcode</label>
                <input type="name" class="form-control" name="barcode" placeholder="Enter barcode" required>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Tray Barcode</label>
                <input type="name" class="form-control" name="t_barcode" placeholder="Enter Tray Barcode" required>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Reference Location</label>
                <input type="name" class="form-control" name="ref_location" placeholder="Enter Reference Location"
                    required>
            </div>
            <div class="form-group col-md-3">
                <label for="inputname">Remark</label>
                <input type="name" class="form-control" name="remark" placeholder="Enter Remark" required>
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