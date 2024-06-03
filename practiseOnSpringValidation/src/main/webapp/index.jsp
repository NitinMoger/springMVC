<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap Navbar Example</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvcm0yMjJiYXRjaDUta3VsLTM2XzEuanBn.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .navbar-custom {
            background-color: green;
        }
        .navbar-custom .navbar-nav .nav-link {
            color: white;
            transition: color 0.3s;
        }
        .navbar-custom .navbar-nav .nav-link:hover {
            color: yellow; /* Change to your preferred hover color */
        }
    </style>
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-custom">
    <a class="navbar-brand" href="#">
        <img src="https://png.pngtree.com/png-vector/20190328/ourmid/pngtree-green-recycling-logo-png-image_881104.jpg" width="50" height="50" alt="Logo">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="PassportApplication.jsp">PassportApplication</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="DrivingLicense.jsp">DrivingLicense</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="BankAccount.jsp">BankAccount</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="CreditCardApplication.jsp">CreditCardApplication</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="StudentIdCardApplicationForm.jsp">StudentIdCardForm</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="MetroCardApplication.jsp">MetroCardApplication</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="CheckBookApplication.jsp">CheckBookApplication</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ContactUs.jsp">ContactUs</a>
            </li>
        </ul>
    </div>
</nav>

<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

