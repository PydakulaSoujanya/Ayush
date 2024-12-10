<?php
include('config.php'); // Include your database connection file

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $bill_id = $_POST['bill_id'];
    $vendor_name = $_POST['vendor_name'];
    $payment_amount = $_POST['payment_amount'];
    $remaining_balance = $_POST['remaining_balance'];
    $payment_status = $_POST['payment_status'];
    $payment_date = $_POST['payment_date'];
    $transaction_id = $_POST['transaction_id'];

    // Insert into database
    $query = "INSERT INTO vendor_payments 
              (bill_id, vendor_name, payment_amount, remaining_balance, payment_status, payment_date, transaction_id) 
              VALUES 
              ('$bill_id', '$vendor_name', '$payment_amount', '$remaining_balance', '$payment_status', '$payment_date', '$transaction_id')";

    if (mysqli_query($conn, $query)) {
        echo "<script>alert('Vendor payment record submitted successfully!'); window.location.href='vendor_billing_and_payouts.php';</script>";
    } else {
        $error_message = mysqli_error($conn);
        echo "<script>alert('Error: $error_message'); window.location.href='vendor_billing_and_payouts.php';</script>";
    }
}
?>
