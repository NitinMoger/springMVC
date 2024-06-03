<%@ page isELIgnored = "false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Passport Application</title>
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

<!-- Passport Application Form -->
<div class="form-container">
    <h2>Passport Application Form</h2>
     <span style="color:red">
                <c:forEach items="${invalidData}" var="objectError">
                    ${objectError.defaultMessage}<br>
                </c:forEach>
     </span>
    <form action="passport" method="post" onsubmit="return validateForm()">
    <span style="color:red"><b>${userData}</b></span></br>
                <span style="color:green">${allData}</span>
        <div class="form-group">
            <label for="firstName">First Name</label>
            <input type="text" class="form-control" id="firstName" name="firstName" value="${passportApplicationDTO.firstName}" >
            <div class="error-message" id="firstNameError"></div>
        </div>
        <div class="form-group">
            <label for="lastName">Last Name</label>
            <input type="text" class="form-control" id="lastName" name="lastName" value="${passportApplicationDTO.lastName}"  >
            <div class="error-message" id="lastNameError"></div>
        </div>
        <div class="form-group">
            <label for="address">Address</label>
            <input type="text" class="form-control" id="address" name="address" value="${passportApplicationDTO.address}" >
            <div class="error-message" id="addressError"></div>
        </div>
        <div class="form-group">
            <label for="city">City</label>
            <input type="text" class="form-control" id="city" name="city" value="${passportApplicationDTO.city}" >
            <div class="error-message" id="cityError"></div>
        </div>
        <div class="form-group">
            <label for="state">State</label>
            <input type="text" class="form-control" id="state" name="state" value="${passportApplicationDTO.state}" >
            <div class="error-message" id="stateError"></div>
        </div>
        <div class="form-group">
            <label for="country">Country</label>
            <input type="text" class="form-control" id="country" name="country" value="${passportApplicationDTO.country}"  >
            <div class="error-message" id="countryError"></div>
        </div>
        <div class="form-group">
            <label for="mobile">Mobile Number</label>
            <input type="phone" class="form-control" id="mobile" name="mobile" value="${passportApplicationDTO.mobile}" >
            <div class="error-message" id="mobileError"></div>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<!-- JavaScript for validation -->
<script>
    function validateForm() {
        const namePattern = /^[A-Za-z]{3,30}$/;
        const addressPattern = /^.{3,100}$/; // Basic validation for address (3 to 100 characters)
        const cityPattern = /^[A-Za-z\s]{3,50}$/;
        const statePattern = /^[A-Za-z\s]{3,50}$/;
        const countryPattern = /^[A-Za-z\s]{3,50}$/;
        const mobilePattern = /^[0-9]{10}$/;

        let firstName = document.getElementById('firstName').value;
        let lastName = document.getElementById('lastName').value;
        let address = document.getElementById('address').value;
        let city = document.getElementById('city').value;
        let state = document.getElementById('state').value;
        let country = document.getElementById('country').value;
        let mobile = document.getElementById('mobile').value;

        let valid = true;

        // Clear previous error messages
        document.getElementById('firstNameError').innerText = '';
        document.getElementById('lastNameError').innerText = '';
        document.getElementById('addressError').innerText = '';
        document.getElementById('cityError').innerText = '';
        document.getElementById('stateError').innerText = '';
        document.getElementById('countryError').innerText = '';
        document.getElementById('mobileError').innerText = '';

        if (!namePattern.test(firstName)) {
            document.getElementById('firstNameError').innerText = 'First Name must be between 3 and 30 characters and contain only letters.';
            valid = false;
        }
        if (!namePattern.test(lastName)) {
            document.getElementById('lastNameError').innerText = 'Last Name must be between 3 and 30 characters and contain only letters.';
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
        if (!statePattern.test(state)) {
            document.getElementById('stateError').innerText = 'State must be between 3 and 50 characters and contain only letters and spaces.';
            valid = false;
        }
        if (!countryPattern.test(country)) {
            document.getElementById('countryError').innerText = 'Country must be between 3 and 50 characters and contain only letters and spaces.';
            valid = false;
        }
        if (!mobilePattern.test(mobile)) {
            document.getElementById('mobileError').innerText = 'Mobile Number must be exactly 10 digits.';
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
