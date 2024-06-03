<%@ page isELIgnored = "false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Credit Card Application</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('https://time.com/personal-finance/static/f7c28c848a98c41c1fb4272abc5472ae/57e17/use-credit-card-before-it-arrives.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: absolute;
        }
        .navbar-custom {
            background-color: sky blue;
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

<!-- Credit Card Application Form -->
<div class="form-container">
    <h2>Credit Card Application Form</h2>
      <span style="color:red">
                <c:forEach items="${errors}" var="objectError">
                    ${objectError.defaultMessage}<br>
                </c:forEach>
            </span>
    <form action="credit" method="post" onsubmit="return validateForm()">
     <span style="color:green"><b>${creditName}</b></span></br>
          <span style="color:red"><b>${allCreditData}</b></span>
        <div class="form-group">
            <label for="fullName">Full Name</label>
            <input type="text" class="form-control" id="fullName" name="fullName" value="${creditCardApplicationDTO.fullName}" required>
            <div class="error-message" id="fullNameError"></div>
        </div>

        <div class="form-group">
            <label for="dob">Date of Birth</label>
            <input type="date" class="form-control" id="dob" name="dob" value="${creditCardApplicationDTO.fullName}" required>
            <div class="error-message" id="dobError"></div>
        </div>
        <div class="form-group">
            <label for="gender">Gender</label>
            <select class="form-control" id="gender" name="gender" required>
                <option ${creditCardApplicationDTO.gender==null ? 'selected' : ''} value="">Select Gender</option>
                <option value="Male" ${creditCardApplicationDTO.gender eq 'Male' ? 'selected' : ''}>Male</option>
                <option value="Female" ${creditCardApplicationDTO.gender eq 'Female' ? 'selected' : ''}>Female</option>
                <option value="Other" ${creditCardApplicationDTO.gender eq 'Other' ? 'selected' : ''}>Other</option>
            </select>
            <div class="error-message" id="genderError"></div>
        </div>
        <div class="form-group">
            <label for="bankName">Bank Name</label>
            <input type="text" class="form-control" id="bankName" name="bankName" value="${creditCardApplicationDTO.bankName}" required>
            <div class="error-message" id="bankNameError"></div>
        </div>
        <div class="form-group">
            <label for="address">Address</label>
            <input type="text" class="form-control" id="address" name="address" value="${creditCardApplicationDTO.address}" required>
            <div class="error-message" id="addressError"></div>
        </div>
        <div class="form-group">
            <label for="city">City</label>
            <input type="text" class="form-control" id="city" name="city" value="${creditCardApplicationDTO.city}" required>
            <div class="error-message" id="cityError"></div>
        </div>
        <div class="form-group">
            <label for="state">State</label>
            <input type="text" class="form-control" id="state" name="state" value="${creditCardApplicationDTO.state}" required>
            <div class="error-message" id="stateError"></div>
        </div>
        <div class="form-group">
            <label for="phoneNumber">Phone Number</label>
            <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" value="${creditCardApplicationDTO.phoneNumber}" required>
            <div class="error-message" id="phoneNumberError"></div>
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
        const postalCodePattern = /^\d{5}$/;
        const phoneNumberPattern = /^\d{10}$/;
        const bankNamePattern = /^[A-Za-z\s]{3,100}$/;

        let fullName = document.getElementById('fullName').value;
        let dob = document.getElementById('dob').value;
        let address = document.getElementById('address').value;
        let city = document.getElementById('city').value;
        let state = document.getElementById('state').value;
        let postalCode = document.getElementById('postalCode').value;
        let phoneNumber = document.getElementById('phoneNumber').value;
        let bankName = document.getElementById('bankName').value;
        let gender = document.getElementById('gender').value;

        let valid = true;

        // Clear previous error messages
        document.getElementById('fullNameError').innerText = '';
        document.getElementById('dobError').innerText = '';
        document.getElementById('addressError').innerText = '';
        document.getElementById('cityError').innerText = '';
        document.getElementById('stateError').innerText = '';
        document.getElementById('postalCodeError').innerText = '';
        document.getElementById('phoneNumberError').innerText = '';
        document.getElementById('bankNameError').innerText = '';
        document.getElementById('genderError').innerText = '';

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
            document.getElementById('postalCodeError').innerText = 'Postal Code must be exactly 5 digits.';
            valid = false;
        }
        if (!phoneNumberPattern.test(phoneNumber)) {
            document.getElementById('phoneNumberError').innerText = 'Phone Number must be exactly 10 digits.';
            valid = false;
        }
        if (!bankNamePattern.test(bankName)) {
            document.getElementById('bankNameError').innerText = 'Bank Name must be between 3 and 100 characters and contain only letters.';
            valid = false;
        }
        if (!gender) {
            document.getElementById('genderError').innerText = 'Please select a gender.';
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
