<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ayush</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>

<body>
    <header class="navbar-header">
        <div class="navbar-brand">
            <img src="images/logo.jpg" alt="Ayush App Logo" class="navbar-logo-img" />
        </div>

        <div class="navbar-hamburger" onclick="toggleMenu()">
            <div class="navbar-bar"></div>
            <div class="navbar-bar"></div>
            <div class="navbar-bar"></div>
        </div>

        <nav class="navbar-links">
            <div class="navbar-dropdown" onmouseover="toggleDropdown('dashboard')" onmouseout="toggleDropdown('dashboard')">
                <span class="navbar-dropdown-title">
                    DASHBOARD <span class="dropdown-arrow-icon">▼</span>
                </span>
                <div class="navbar-dropdown-content" id="dashboard">
                    <a href="view_invoice.php">Invoice</a>
                </div>
            </div>

            <!-- Masters Dropdown -->
            <div class="navbar-dropdown" onmouseover="toggleDropdown('contact')" onmouseout="toggleDropdown('contact')">
               <div> <span class="navbar-dropdown-title">
                    CONTACTS <span class="dropdown-arrow-icon">▼</span>
                </span></div>
                <div class="navbar-dropdown-content" id="contact">
                    <a href="customer_form1_v1.php">Customer </a>
                    <!-- <a href="/suppliertable">Supplier Master</a>
                    <a href="/itemmastertable">Product</a>
                    <a href="/purity">Purity</a>
                    <a href="/accountstable">Accounts</a> -->
                </div>
            </div>

            <!-- Transactions Dropdown -->
            <div class="navbar-dropdown" onmouseover="toggleDropdown('customers')" onmouseout="toggleDropdown('customers')">
                <span class="navbar-dropdown-title">
                    CUSTOMERS <span class="dropdown-arrow-icon">▼</span>
                </span>
                <div class="navbar-dropdown-content" id="customers">
                    <a href="customer_table.php">Customers</a>
                    <!-- <a href="/estimates">Estimate</a>
                    <a href="/stockEntryTable">Stock Entry</a>
                    <a href="/paymentstable">Payments</a>
                    <a href="/receiptstable">Receipts</a>
                    <a href="/purchasetable">Purchase</a>
                    <a href="/repairstable">Repairs</a>
                    <a href="/urd_purchase">URD Purchase</a> -->
                </div>
            </div>

            <!-- Reports Dropdown -->
            <div class="navbar-dropdown" onmouseover="toggleDropdown('vendor')" onmouseout="toggleDropdown('vendor')">
                <span class="navbar-dropdown-title">
                    VENDORS <span class="dropdown-arrow-icon">▼</span>
                </span>
                <div class="navbar-dropdown-content" id="vendor">
                    <a href="vendors.php">Vendor</a>
                    <a href="Vendor_Billing_and_Payouts.php">Vendor Billing</a>
                    <!-- <a href="/estimateReport">Estimate Report</a>
                    <a href="/purchaseReport">Purchase Report</a>
                    <a href="/repairsReport">Repairs Report</a>
                    <a href="/urdPurchaseReport">URD Purchase Report</a>
                    <a href="/stockReport">Stock Report</a>
                    <a href="/barcodeprinting">Barcode Printing Report</a> -->
                    
                </div>
            </div>
            <div class="navbar-dropdown" onmouseover="toggleDropdown('employee')" onmouseout="toggleDropdown('employee')">
                <span class="navbar-dropdown-title">
                    EMPLOYEES <span class="dropdown-arrow-icon">▼</span>
                </span>
                <div class="navbar-dropdown-content" id="employee">
                    <a href="manage_employee.php">Employee</a>
                    <!-- <a href="/estimateReport">Estimate Report</a>
                    <a href="/purchaseReport">Purchase Report</a>
                    <a href="/repairsReport">Repairs Report</a>
                    <a href="/urdPurchaseReport">URD Purchase Report</a>
                    <a href="/stockReport">Stock Report</a>
                    <a href="/barcodeprinting">Barcode Printing Report</a>
                    <a href="/cashReport">Cash Report</a> -->
                </div>
            </div>
            <div class="navbar-dropdown" onmouseover="toggleDropdown('service')" onmouseout="toggleDropdown('services')">
                <span class="navbar-dropdown-title">
                    SERVICES <span class="dropdown-arrow-icon">▼</span>
                </span>
                <div class="navbar-dropdown-content" id="service">
                    <a href="view_servicemaster.php">Services</a>
                    <!-- <a href="/estimateReport">Estimate Report</a>
                    <a href="/purchaseReport">Purchase Report</a>
                    <a href="/repairsReport">Repairs Report</a>
                    <a href="/urdPurchaseReport">URD Purchase Report</a>
                    <a href="/stockReport">Stock Report</a>
                    <a href="/barcodeprinting">Barcode Printing Report</a>
                    <a href="/cashReport">Cash Report</a> -->
                </div>
            </div>
        </nav>
    </header>

    <script>
        // JavaScript for toggling the menu
        function toggleMenu() {
            const navbarLinks = document.querySelector('.navbar-links');
            navbarLinks.classList.toggle('open');
        }

        // JavaScript for toggling dropdowns and rotating the arrow
        function toggleDropdown(dropdownId) {
            const dropdownContent = document.getElementById(dropdownId);
            const arrowIcon = dropdownContent.previousElementSibling.querySelector('.dropdown-arrow-icon');
            if (dropdownContent.style.display === 'block') {
                dropdownContent.style.display = 'none';
                arrowIcon.style.transform = 'rotate(0deg)';
            } else {
                dropdownContent.style.display = 'block';
                arrowIcon.style.transform = 'rotate(180deg)';
            }
        }
    </script>
</body>

</html>
