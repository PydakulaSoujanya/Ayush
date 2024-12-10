

<?php
include('navbar.php'); // Include navigation bar if necessary
include('config.php'); // Include database connection

// Fetch vendor payment data
$query = "SELECT * FROM vendor_payments";
$result = mysqli_query($conn, $query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">

  <title>Data Table</title>
  <style>
    .dataTable_wrapper {
      padding: 20px;
    }

    .dataTable_search input {
      max-width: 200px;
    }

    .dataTable_headerRow th,
    .dataTable_row td {
      border: 1px solid #dee2e6; /* Add borders for columns */
    }

    .dataTable_headerRow {
      background-color: #f8f9fa;
      font-weight: bold;
    }

    .dataTable_row:hover {
      background-color: #f1f1f1;
    }

    .dataTable_card {
      border: 1px solid #ced4da; /* Add card border */
      border-radius: 0.5rem;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .dataTable_card .card-header {
      background-color:  #A26D2B;
      color: white;
      font-weight: bold;
    }
  </style>
</head>
<body>

  <div class="container mt-7">
    <div class="dataTable_card card">
      <!-- Card Header -->
      <div class="card-header">Vendor Payment Records</div>

      <!-- Card Body -->
      <div class="card-body">
        <!-- Search Input -->
        <div class="dataTable_search mb-3 d-flex align-items-center">
  <input type="text" class="form-control me-2" id="globalSearch" placeholder="Search...">
  <a href="vendor_billing_and_payouts.php" class="btn btn-primary ms-auto">Add Vendor Expenditure</a>
</div>



        <!-- Table -->
        <div class="table-responsive">

         <table class="table table-bordered">
         <thead class="thead-dark">
      <tr>
        <th>Bill ID</th>
        <th>Vendor Name</th>
        <th>Payment Amount</th>
        <th>Remaining Balance</th>
        <th>Payment Status</th>
        <th>Payment Date</th>
        <th>Transaction ID</th>
        <th>Created At</th>
      </tr>
    </thead>
    <tbody>
      <?php
      if (mysqli_num_rows($result) > 0) {
          // Fetch and display each row
          while ($row = mysqli_fetch_assoc($result)) {
              echo "<tr>
                  <td>{$row['bill_id']}</td>
                  <td>{$row['vendor_name']}</td>
                  <td>{$row['payment_amount']}</td>
                  <td>{$row['remaining_balance']}</td>
                  <td>{$row['payment_status']}</td>
                  <td>{$row['payment_date']}</td>
                  <td>{$row['transaction_id']}</td>
                  <td>{$row['created_at']}</td>
              </tr>";
          }
      } else {
          echo "<tr><td colspan='8' class='text-center'>No records found</td></tr>";
      }
      ?>
    </tbody>
          </table>
        </div>

        <!-- Pagination Controls -->
        <div class="d-flex align-items-center justify-content-between mt-3">
          <div>
            <button id="previousPage" class="btn btn-sm btn-primary me-2">Previous</button>
            <button id="nextPage" class="btn btn-sm btn-primary">Next</button>
          </div>
          <div class="dataTable_pageInfo">
            Page <strong id="pageInfo">1 of 1</strong>
          </div>
          <div>
            <select id="pageSize" class="form-select form-select-sm">
              <option value="5">Show 5</option>
              <option value="10">Show 10</option>
              <option value="20">Show 20</option>
            </select>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script>
    // Sample Data
    const data = Array.from({ length: 50 }, (_, i) => ({
      id: i + 1,
      name: `Person ${i + 1}`,
      age: Math.floor(Math.random() * 40) + 20,
      city: `City ${Math.floor(Math.random() * 10) + 1}`,
    }));

    // Pagination Variables
    let pageIndex = 0;
    let pageSize = 5;

    // Elements
    const tableBody = document.getElementById("tableBody");
    const pageInfo = document.getElementById("pageInfo");
    const previousPage = document.getElementById("previousPage");
    const nextPage = document.getElementById("nextPage");
    const pageSizeSelect = document.getElementById("pageSize");
    const globalSearch = document.getElementById("globalSearch");

    // Functions to Render Table
    function renderTable() {
      const start = pageIndex * pageSize;
      const filteredData = data.filter((item) =>
        item.name.toLowerCase().includes(globalSearch.value.toLowerCase())
      );
      const pageData = filteredData.slice(start, start + pageSize);

      tableBody.innerHTML = pageData
        .map(
          (row) =>
            `<tr class="dataTable_row">
              <td>${row.id}</td>
              <td>${row.name}</td>
              <td>${row.age}</td>
              <td>${row.city}</td>
            </tr>`
        )
        .join("");

      pageInfo.textContent = `${pageIndex + 1} of ${Math.ceil(filteredData.length / pageSize)}`;
      previousPage.disabled = pageIndex === 0;
      nextPage.disabled = pageIndex >= Math.ceil(filteredData.length / pageSize) - 1;
    }

    // Event Listeners
    previousPage.addEventListener("click", () => {
      if (pageIndex > 0) {
        pageIndex--;
        renderTable();
      }
    });

    nextPage.addEventListener("click", () => {
      pageIndex++;
      renderTable();
    });

    pageSizeSelect.addEventListener("change", (e) => {
      pageSize = Number(e.target.value);
      pageIndex = 0;
      renderTable();
    });

    globalSearch.addEventListener("input", () => {
      pageIndex = 0;
      renderTable();
    });

    // Initial Render
    renderTable();
  </script>
</body>
</html>
