<?php
include('../config.php'); // Ensure this includes the database connection logic

// Generate a unique Bill ID
$bill_id = "BILL-" . date("d/m/Y") . "-" . rand(1000, 9999);

// Fetch vendor data for the dropdown
$vendor_query = "SELECT id, vendor_name, phone_number FROM vendors";
$vendor_result = mysqli_query($conn, $vendor_query);
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Vendor Payment Form</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    .input-field-container {
      position: relative;
      margin-bottom: 15px;
    }

    .input-label {
      position: absolute;
      top: -10px;
      left: 10px;
      background-color: white;
      padding: 0 5px;
      font-size: 14px;
      font-weight: bold;
      color: #A26D2B;
    }

    .styled-input {
      width: 100%;
      padding: 10px;
      font-size: 12px;
      outline: none;
      box-sizing: border-box;
      border: 1px solid #A26D2B;
      border-radius: 5px;
    }

    .styled-input:focus {
      border-color: #007bff;
      box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    }

    h3 {
      color: #A26D2B;
    }
  </style>
</head>
<body>
<?php
include('../navbar.php');

?>
<div class="container mt-7">
  <h3 class="mb-4"> Vendor Billing and Payouts </h3>
  <form action="vendor_payment_db.php" method="POST" enctype="multipart/form-data">
    <div class="row">
      <!-- Bill ID -->
      <div class="col-md-4">
        <div class="input-field-container">
          <label class="input-label">Bill ID</label>
          <input type="text" class="styled-input" name="bill_id" value="<?php echo $bill_id; ?>" readonly />
        </div>
      </div>

      <!-- Vendor Name Dropdown -->
      <div class="col-md-4">
        <div class="input-field-container">
          <label class="input-label">Vendor Name</label>
          <select class="styled-input" id="vendor_name" name="vendor_name" style="width: 100%;" required>
            <option value="" disabled selected>Select Vendor</option>
            <?php
            while ($row = mysqli_fetch_assoc($vendor_result)) {
              echo "<option value='{$row['vendor_name']}'>{$row['vendor_name']} ({$row['phone_number']})</option>";
            }
            ?>
          </select>
        </div>
      </div>

      <!-- Payment Amount -->
      <div class="col-md-4">
        <div class="input-field-container">
          <label class="input-label">Payment Amount</label>
          <input type="number" class="styled-input" name="payment_amount" placeholder="Enter Payment Amount" required />
        </div>
      </div>
    </div>

    <div class="row">
      <!-- Remaining Balance -->
      <div class="col-md-4">
        <div class="input-field-container">
          <label class="input-label">Remaining Balance</label>
          <input type="number" class="styled-input" name="remaining_balance" placeholder="Enter Remaining Balance" required />
        </div>
      </div>

      <!-- Payment Status -->
      <div class="col-md-4">
        <div class="input-field-container">
          <label class="input-label">Payment Status</label>
          <select class="styled-input" name="payment_status" required>
            <option value="" disabled selected>Select Payment Status</option>
            <option value="Paid">Paid</option>
            <option value="Partially Paid">Partially Paid</option>
            <option value="Pending">Pending</option>
          </select>
        </div>
      </div>

      <!-- Payment Date -->
      <div class="col-md-4">
        <div class="input-field-container">
          <label class="input-label">Payment Date</label>
          <input type="date" class="styled-input" name="payment_date" required />
        </div>
      </div>
    </div>

    <div class="row">
      <!-- Transaction ID -->
      <div class="col-md-4">
        <div class="input-field-container">
          <label class="input-label">Transaction ID</label>
          <input type="text" class="styled-input" name="transaction_id" placeholder="Enter Transaction ID" required />
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12 text-center">
        <button type="submit" class="btn btn-primary" name="submit" value="Submit">Submit</button>
      </div>
    </div>
  </form>
</div>

</body>
</html>
