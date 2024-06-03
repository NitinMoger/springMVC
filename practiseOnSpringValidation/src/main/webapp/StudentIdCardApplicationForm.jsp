<%@ page isELIgnored = "false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student ID Card Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('https://cf.bstatic.com/xdata/images/hotel/max1024x768/386022082.jpg?k=0ad3d6eb82d33c1d59add06e20bdfa24b13fdee33a595efa20f50e3daf889a1d&o=&hp=1');
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

<div class="form-container">
    <h2>Student ID Card Form</h2>
    <form action="submitForm" method="post" onsubmit="return validateForm()">
         <span style="color:red">
                       <c:forEach items="${errors}" var="objectError">
                           ${objectError.defaultMessage}<br>
                       </c:forEach>
            </span>
        <div class="form-group">
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" class="form-control" value="${studentIdDTO.firstName}">
            <div class="error-message" id="firstNameError"></div>
        </div>
        <div class="form-group">
            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" class="form-control" value="${studentIdDTO.lastName}">
            <div class="error-message" id="lastNameError"></div>
        </div>
        <div class="form-group">
            <label for="mobileNumber">Mobile Number:</label>
            <input type="text" id="mobileNumber" name="mobileNumber" class="form-control" value="${studentIdDTO.mobileNumber}">
            <div class="error-message" id="mobileNumberError"></div>
        </div>
        <div class="form-group">
            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" class="form-control" value="${studentIdDTO.dob}">
            <div class="error-message" id="dobError"></div>
        </div>
        <div class="form-group">
            <label for="department">Department:</label>
            <select id="department" name="department" class="form-control">
                <option value="" ${studentIdDTO.department == null ? 'selected' : ''}>Select Department</option>
                <option value="Computer Science" ${studentIdDTO.department == 'Computer Science' ? 'selected' : ''}>Computer Science</option>
                <option value="Mechanical Engineering" ${studentIdDTO.department == 'Mechanical Engineering' ? 'selected' : ''}>Mechanical Engineering</option>
                <option value="Electrical Engineering" ${studentIdDTO.department == 'Electrical Engineering' ? 'selected' : ''}>Electrical Engineering</option>
                <option value="Civil Engineering" ${studentIdDTO.department == 'Civil Engineering' ? 'selected' : ''}>Civil Engineering</option>
                <option value="Mathematics" ${studentIdDTO.department == 'Mathematics' ? 'selected' : ''}>Mathematics</option>
                <option value="Physics" ${studentIdDTO.department == 'Physics' ? 'selected' : ''}>Physics</option>
            </select>
            <div class="error-message" id="departmentError"></div>
        </div>
        <div class="form-group">
            <label for="bloodGroup">Blood Group:</label>
            <select id="bloodGroup" name="bloodGroup" class="form-control">
                <option value="" ${studentIdDTO.bloodGroup == null ? 'selected' : ''}>Select Blood Group</option>
                <option value="A+" ${studentIdDTO.bloodGroup == 'A+' ? 'selected' : ''}>A+</option>
                <option value="A-" ${studentIdDTO.bloodGroup == 'A-' ? 'selected' : ''}>A-</option>
                <option value="B+" ${studentIdDTO.bloodGroup == 'B+' ? 'selected' : ''}>B+</option>
                <option value="B-" ${studentIdDTO.bloodGroup == 'B-' ? 'selected' : ''}>B-</option>
                <option value="O+" ${studentIdDTO.bloodGroup == 'O+' ? 'selected' : ''}>O+</option>
                <option value="O-" ${studentIdDTO.bloodGroup == 'O-' ? 'selected' : ''}>O-</option>
                <option value="AB+" ${studentIdDTO.bloodGroup == 'AB+' ? 'selected' : ''}>AB+</option>
                <option value="AB-" ${studentIdDTO.bloodGroup == 'AB-' ? 'selected' : ''}>AB-</option>
            </select>
            <div class="error-message" id="bloodGroupError"></div>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<script>
    function validateForm() {
        let isValid = true;
        let firstName = document.getElementById('firstName').value;
        let lastName = document.getElementById('lastName').value;
        let mobileNumber = document.getElementById('mobileNumber').value;
        let dob = document.getElementById('dob').value;
        let department = document.getElementById('department').value;
        let bloodGroup = document.getElementById('bloodGroup').value;

        // Regex patterns
        let namePattern = /^[A-Za-z]{3,30}$/;
        let mobilePattern = /^\d{10}$/;

        // Clear previous error messages
        document.getElementById('firstNameError').innerText = '';
        document.getElementById('lastNameError').innerText = '';
        document.getElementById('mobileNumberError').innerText = '';
        document.getElementById('dobError').innerText = '';
        document.getElementById('departmentError').innerText = '';
        document.getElementById('bloodGroupError').innerText = '';

        // Validate first name
        if (!namePattern.test(firstName)) {
            document.getElementById('firstNameError').innerText = 'First name must be 3-30 characters long and contain only letters.';
            isValid = false;
        }

        // Validate last name
        if (!namePattern.test(lastName)) {
            document.getElementById('lastNameError').innerText = 'Last name must be 3-30 characters long and contain only letters.';
            isValid = false;
        }

        // Validate mobile number
        if (!mobilePattern.test(mobileNumber)) {
            document.getElementById('mobileNumberError').innerText = 'Mobile number must be a valid 10-digit number.';
            isValid = false;
        }

        // Validate DOB
        if (dob === '') {
            document.getElementById('dobError').innerText = 'Please select your date of birth.';
            isValid = false;
        }

        // Validate department
        if (department === '') {
            document.getElementById('departmentError').innerText = 'Please select your department.';
            isValid = false;
        }

        // Validate blood group
        if (bloodGroup === '') {
            document.getElementById('bloodGroupError').innerText = 'Please select your blood group.';
            isValid = false;
        }

        return isValid;
    }
</script>

<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
