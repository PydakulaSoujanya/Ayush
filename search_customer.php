<?php
require 'config.php'; // Include your database connection

$response = [
    'success' => false,
    'message' => 'Invalid request.',
    'data' => []
];

if (isset($_GET['search'])) {
    $search = $_GET['search'];

    $sql = "SELECT customer_name, emergency_contact_number FROM customer_master WHERE emergency_contact_number LIKE ?";
    $stmt = $conn->prepare($sql);
    $likeSearch = "%$search%";
    $stmt->bind_param("s", $likeSearch);

    if ($stmt->execute()) {
        $result = $stmt->get_result();
        $customers = [];
        while ($row = $result->fetch_assoc()) {
            $customers[] = $row;
        }

        if (count($customers) > 0) {
            $response['success'] = true;
            $response['message'] = 'Customers found.';
            $response['data'] = $customers;
        } else {
            $response['message'] = 'No customers found.';
        }
    } else {
        $response['message'] = 'Database query failed.';
    }

    $stmt->close();
}

header('Content-Type: application/json');
echo json_encode($response);
?>
