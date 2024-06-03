<%@ page isELIgnored = "false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check Book Application</title>
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
            color: yellow;
        }
        .form-container {
            background: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 8px;
            max-width: 600px;
            margin: 50px auto;
        }
        .error-message {
            color: red;
            font-size: 0.875em;
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
                <a class="nav-link" href="index.jsp">Home</a>
            </li>
        </ul>
    </div>
</nav>

<!-- Check Book Application Form -->
<div class="form-container">
    <h2>Check Book Application Form</h2>
    <span style="color:red">
        <c:forEach items="${errors}" var="objectError">
           ${objectError.defaultMessage}<br>
           </c:forEach>
        </span>
    <form action="check" method="post" onsubmit="return validateForm()">
      <span style="color:green"><b>${fullName}</b></span><br>
       <span style="color:green">${allData}</span>
        <div class="form-group">
            <label for="fullName">Full Name</label>
            <input type="text" class="form-control" id="fullName" name="fullName" value="${checkBookApplicationDTO.fullName}" required>
            <div class="error-message" id="fullNameError"></div>
        </div>
        <div class="form-group">
            <label for="accountNumber">Account Number</label>
            <input type="text" class="form-control" id="accountNumber" name="accountNumber" value="${checkBookApplicationDTO.accountNumber}" required>
            <div class="error-message" id="accountNumberError"></div>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" name="email" value="${checkBookApplicationDTO.email}" required>
            <div class="error-message" id="emailError"></div>
        </div>
        <div class="form-group">
            <label for="phoneNumber">Phone Number</label>
            <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" value="${checkBookApplicationDTO.phoneNumber}" required>
            <div class="error-message" id="phoneNumberError"></div>
        </div>
        <div class="form-group">
            <label for="branchName">Branch Name</label>
            <input type="text" class="form-control" id="branchName" name="branchName" value="${checkBookApplicationDTO.branchName}" required>
            <div class="error-message" id="branchNameError"></div>
        </div>
        <div class="form-group">
            <label for="address">Address</label>
            <input type="text" class="form-control" id="address" name="address" value="${checkBookApplicationDTO.address}" required>
            <div class="error-message" id="addressError"></div>
        </div>
        <div class="form-group">
            <label for="city">City</label>
            <input type="text" class="form-control" id="city" name="city" value="${checkBookApplicationDTO.city}" required>
            <div class="error-message" id="cityError"></div>
        </div>
        <div class="form-group">
            <label for="postalCode">Postal Code</label>
            <input type="text" class="form-control" id="postalCode" name="postalCode" value="${checkBookApplicationDTO.postalCode}" required>
            <div class="error-message" id="postalCodeError"></div>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<!-- JavaScript for validation -->
<script>
    function validateForm() {
        const namePattern = /^[A-Za-z\s]{3,100}$/;
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        const phoneNumberPattern = /^\d{10}$/;
        const accountNumberPattern = /^\d{6,20}$/;
        const addressPattern = /^.{3,100}$/;
        const cityPattern = /^[A-Za-z\s]{3,50}$/;
        const postalCodePattern = /^\d{5,10}$/;

        let fullName = document.getElementById('fullName').value;
        let accountNumber = document.getElementById('accountNumber').value;
        let email = document.getElementById('email').value;
        let phoneNumber = document.getElementById('phoneNumber').value;
        let branchName = document.getElementById('branchName').value;
        let address = document.getElementById('address').value;
        let city = document.getElementById('city').value;
        let postalCode = document.getElementById('postalCode').value;

        let valid = true;

        // Clear previous error messages
        document.getElementById('fullNameError').innerText = '';
        document.getElementById('accountNumberError').innerText = '';
        document.getElementById('emailError').innerText = '';
        document.getElementById('phoneNumberError').innerText = '';
        document.getElementById('branchNameError').innerText = '';
        document.getElementById('addressError').innerText = '';
        document.getElementById('cityError').innerText = '';
        document.getElementById('postalCodeError').innerText = '';

        if (!namePattern.test(fullName)) {
            document.getElementById('fullNameError').innerText = 'Full Name must be between 3 and 100 characters and contain only letters.';
            valid = false;
        }
        if (!accountNumberPattern.test(accountNumber)) {
            document.getElementById('accountNumberError').innerText = 'Account Number must be between 6 and 20 digits.';
            valid = false;
        }
        if (!emailPattern.test(email)) {
            document.getElementById('emailError').innerText = 'Please enter a valid email address.';
            valid = false;
        }
        if (!phoneNumberPattern.test(phoneNumber)) {
            document.getElementById('phoneNumberError').innerText = 'Phone Number must be exactly 10 digits.';
            valid = false;
        }
        if (!namePattern.test(branchName)) {
            document.getElementById('branchNameError').innerText = 'Branch Name must be between 3 and 100 characters and contain only letters.';
            valid = false;
        }
        if (!addressPattern.test(address)) {
            document.getElementById('addressError').innerText = 'Address must be between 3 and 100 characters.';
            valid = false;
        }
        if (!cityPattern.test(city)) {
            document.getElementById('cityError').innerText = 'City must be between 3 and 50 characters and contain only letters and spaces.';
            valid = false;
        }
        if (!postalCodePattern.test(postalCode)) {
            document.getElementById('postalCodeError').innerText = 'Postal Code must be between 5 and 10 digits.';
            valid = false;
        }

        return valid;
    }
</script>

<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
