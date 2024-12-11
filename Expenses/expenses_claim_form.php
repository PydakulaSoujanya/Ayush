<?php
// include('../../navbar.php');
include('../config.php'); // Ensure this includes the database connection logic

// Fetch employee data for the dropdown
$employee_query = "SELECT id, name, phone FROM emp_info";
$employee_result = mysqli_query($conn, $employee_query);
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Expenses Claim</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-dywxE7Dbauy0ZdO9IMIAgFbKk8c0Lx0nvW0Uj+ks9qqRhj2uP/zLwsiXccCD9dQrcxJjpHZB5Q72n11KH4cOZg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

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
<?php
include('../navbar.php');
?>
<body>

<div class="container mt-7">
  
  <h3 class="mb-4">Employee Expenses Claim</h3>
  <form action="expenses_claim_db.php" method="POST" enctype="multipart/form-data">
    <div class="row">
    
    <!-- Employee Name -->
    <div class="col-md-4">
  <div class="input-field-container">
    <label class="input-label">Select Employee</label>
    <select class="styled-input" id="employee_name" name="employee_name" style="width: 100%;" required>
  <option value="" disabled selected>Select Employee</option>
  <?php
  while ($row = mysqli_fetch_assoc($employee_result)) {
      echo "<option value='{$row['name']}'>{$row['name']} ({$row['phone']})</option>";
  }
  ?>
</select>
  </div>
</div>



      <!-- Expense Category -->
      <div class="col-md-4">
        <div class="input-field-container">
          <label class="input-label">Expense Category</label>
          <select class="styled-input" name="expense_category" required>
            <option value="" disabled selected>Select Category</option>
            <option value="Travel">Travel</option>
            <option value="Medical">Medical</option>
            <option value="Food">Food</option>
            <option value="Other">Other</option>
          </select>
        </div>
      </div>

      <!-- Expense Date -->
      <div class="col-md-4">
        <div class="input-field-container">
          <label class="input-label">Expense Date</label>
          <input type="date" class="styled-input" name="expense_date" required />
        </div>
      </div>
    </div>

    <div class="row">
      <!-- Amount Claimed -->
      <div class="col-md-4">
        <div class="input-field-container">
          <label class="input-label">Amount Claimed</label>
          <input type="number" class="styled-input" name="amount_claimed" placeholder="Enter Amount Claimed" required />
        </div>
      </div>

      <!-- Attachment -->
      <div class="col-md-4">
        <div class="input-field-container">
          <label class="input-label">Attachment</label>
          <input type="file" class="styled-input" name="attachment" accept=".pdf,.jpeg,.jpg,.png" />
        </div>
      </div>

      <!-- Status -->
      <div class="col-md-4">
        <div class="input-field-container">
          <label class="input-label">Status</label>
          <select class="styled-input" name="status" required>
            <option value="" disabled selected>Select Status</option>
            <option value="Pending">Pending</option>
            <option value="Approved">Approved</option>
            <option value="Rejected">Rejected</option>
            <option value="Paid">Paid</option>
          </select>
        </div>
      </div>
    </div>

    <div class="row">
      <!-- Rejection Reason -->
      <div class="col-md-4" id="rejection_reason_container" style="display: none;">
  <div class="input-field-container">
    <label class="input-label">Rejection Reason</label>
    <input type="text" class="styled-input" name="rejection_reason" placeholder="Reason for rejection (if any)" />
  </div>
</div>


      <!-- Submitted Date -->
      <div class="col-md-4">
        <div class="input-field-container">
          <label class="input-label">Submitted Date</label>
          <input type="date" class="styled-input" name="submitted_date" required />
        </div>
      </div>

      <!-- Approved Date -->
      <div class="col-md-4">
        <div class="input-field-container">
          <label class="input-label">Approved Date</label>
          <input type="date" class="styled-input" name="approved_date" />
        </div>
      </div>
    </div>

    <div class="row">
      <!-- Payment Status -->
      <div class="col-md-4">
        <div class="input-field-container">
          <label class="input-label">Payment Status</label>
          <select class="styled-input" name="payment_status" required>
            <option value="" disabled selected>Select Payment Status</option>
            <option value="Paid">Paid</option>
            <option value="Pending">Pending Payment</option>
          </select>
        </div>
      </div>

      <!-- Payment Date -->
      <div class="col-md-4">
        <div class="input-field-container">
          <label class="input-label">Payment Date</label>
          <input type="date" class="styled-input" name="payment_date" />
        </div>
      </div>

      <!-- Description -->
  
    </div>
    

    <div class="row">
    <div class="col-md-8">
        <div class="input-field-container">
          <label class="input-label">Description</label>
          <textarea class="styled-input" name="description" placeholder="Describe the expense" required></textarea>
        </div>
      </div>
      <div class="col-md-12 text-center">
        <button type="submit" class="btn btn-primary" name="submit" value="Submit">Submit</button>
      </div>
    </div>
  </form>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0/dist/js/select2.min.js"></script>
<script>
  $(document).ready(function () {
    // Trigger event when status is changed
    $('select[name="status"]').on('change', function () {
      const selectedStatus = $(this).val(); // Get the selected value
      if (selectedStatus === 'Rejected') {
        $('#rejection_reason_container').show(); // Show the rejection reason field
      } else {
        $('#rejection_reason_container').hide(); // Hide the rejection reason field
        $('input[name="rejection_reason"]').val(''); // Clear the value
      }
    });
  });
</script>
<script>
  $(document).ready(function() {
    $('#employee_name').select2({
      placeholder: "Select Employee", // Placeholder text
      allowClear: true                // Allow clearing the selected option
    });
  });
</script>
<script>
  $(document).ready(function () {
    $('#employee_name').select2({
      placeholder: "Select Employee",
      allowClear: true,
      ajax: {
        url: 'fetch_employees.php',
        dataType: 'json',
        delay: 250,
        data: function (params) {
          return {
            search: params.term, // The search term
          };
        },
        processResults: function (data) {
          return {
            results: data.map(function (item) {
              return { id: item.name, text: item.name + ' (' + item.phone + ')' };
            }),
          };
        },
        cache: true,
      },
    });
  });
</script>
</body>
</html>
