<%@ page isELIgnored = "false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Driving License Application</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('https://media.post.rvohealth.io/wp-content/uploads/2023/09/view-from-drivers-seat-truck-on-highway-driving-steering-wheel-1296x728-header.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: absolute;
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

<!-- Driving License Application Form -->
<div class="form-container">
    <h2>Driving License Application Form</h2>
    <span style="color:red">
         <c:forEach items="${errors}" var="objectError">
         ${objectError.defaultMessage}<br>
         </c:forEach>
    </span>
    <form  action="driving" method="post" onsubmit="return validateForm()">

        <div class="form-group">
            <label for="fullName">Full Name</label>
            <input type="text" class="form-control" id="fullName" name="fullName" value="${drivingLicenseDTO.fullName}"  >
            <div class="error-message" id="fullNameError"></div>
        </div>
        <div class="form-group">
            <label for="dateOfBirth">Date of Birth</label>
            <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth" value="${drivingLicenseDTO.dateOfBirth}" >
            <div class="error-message" id="dateOfBirthError"></div>
        </div>
        <div class="form-group">
            <label for="address">Address</label>
            <input type="text" class="form-control" id="address" name="address" value="${drivingLicenseDTO.address}" >
            <div class="error-message" id="addressError"></div>
        </div>
        <div class="form-group">
            <label for="city">City</label>
            <input type="text" class="form-control" id="city" name="city" value="${drivingLicenseDTO.city}" >
            <div class="error-message" id="cityError"></div>
        </div>
        <div class="form-group">
            <label for="state">State</label>
            <input type="text" class="form-control" id="state" name="state" value="${drivingLicenseDTO.state}" >
            <div class="error-message" id="stateError"></div>
        </div>
        <div class="form-group">
            <label for="postalCode">Postal Code</label>
            <input type="text" class="form-control" id="postalCode" name="postalCode" value="${drivingLicenseDTO.postalCode}" >
            <div class="error-message" id="postalCodeError"></div>
        </div>
        <div class="form-group">
            <label for="licenseType">License Type</label>
            <select class="form-control" id="licenseType" name="licenseType" >
                <option  ${drivingLicenseDTO.licenseType==null ? 'selected' : ''} value="">Select License Type</option>
                <option value="Two" ${drivingLicenseDTO.licenseType eq 'Two wheeler' ? 'selected' : ''} >Two wheeler</option>
                <option value="Four" ${drivingLicenseDTO.licenseType eq 'Four wheeler' ? 'selected' : ''}>Four wheeler</option>
                <option value="heavy" ${drivingLicenseDTO.licenseType eq 'heavy vehicle' ? 'selected' : ''}>heavy vehicle</option>
            </select>
            <div class="error-message" id="licenseTypeError"></div>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<!-- JavaScript for validation -->
<script>
    function validateForm() {
        const namePattern = /^[A-Za-z\s]{3,100}$/;
        const addressPattern = /^.{3,100}$/; // Basic validation for address (3 to 100 characters)
        const cityPattern = /^[A-Za-z\s]{3,50}$/;
        const statePattern = /^[A-Za-z\s]{3,50}$/;
        const postalCodePattern = /^\d{6}$/;

        let fullName = document.getElementById('fullName').value;
        let dateOfBirth = document.getElementById('dateOfBirth').value;
        let address = document.getElementById('address').value;
        let city = document.getElementById('city').value;
        let state = document.getElementById('state').value;
        let postalCode = document.getElementById('postalCode').value;
        let licenseType = document.getElementById('licenseType').value;

        let valid = true;

        // Clear previous error messages
        document.getElementById('fullNameError').innerText = '';
        document.getElementById('dateOfBirthError').innerText = '';
        document.getElementById('addressError').innerText = '';
        document.getElementById('cityError').innerText = '';
        document.getElementById('stateError').innerText = '';
        document.getElementById('postalCodeError').innerText = '';
        document.getElementById('licenseTypeError').innerText = '';

        if (!namePattern.test(fullName)) {
            document.getElementById('fullNameError').innerText = 'Full Name must be between 3 and 100 characters and contain only letters.';
            valid = false;
        }
        // Date of Birth validation can be added if needed
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
        if (!postalCodePattern.test(postalCode)) {
            document.getElementById('postalCodeError').innerText = 'Postal Code must be exactly 6 digits.';
            valid = false;
        }
        if (licenseType === '') {
            document.getElementById('licenseTypeError').innerText = 'Please select a License Type.';
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