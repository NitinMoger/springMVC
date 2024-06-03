<%@ page isELIgnored = "false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
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

<!-- Contact Us Form -->
<div class="form-container">
    <h2>Contact Us</h2>
    <span style="color:red">
            <c:forEach items="${errors}" var="objectError">
               ${objectError.defaultMessage}<br>
               </c:forEach>
            </span>
    <form action="contacting" method="post" onsubmit="return validateForm()">
        <div class="form-group">
            <label for="fullName">Full Name</label>
            <input type="text" class="form-control" id="fullName" name="fullName" value="${contactUsDTO.fullName}" required>
            <div class="error-message" id="fullNameError"></div>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" name="email" value="${contactUsDTO.email}" required>
            <div class="error-message" id="emailError"></div>
        </div>
        <div class="form-group">
            <label for="phoneNumber">Phone Number</label>
            <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" value="${contactUsDTO.phoneNumber}" required>
            <div class="error-message" id="phoneNumberError"></div>
        </div>
        <div class="form-group">
            <label for="subject">Subject</label>
            <input type="text" class="form-control" id="subject" name="subject" value="${contactUsDTO.subject}" required>
            <div class="error-message" id="subjectError"></div>
        </div>
        <div class="form-group">
            <label for="message">Message</label>
            <textarea class="form-control" id="message" name="message" rows="4" value="${contactUsDTO.message}" required></textarea>
            <div class="error-message" id="messageError"></div>
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
        const subjectPattern = /^.{3,100}$/;
        const messagePattern = /^.{10,1000}$/;

        let fullName = document.getElementById('fullName').value;
        let email = document.getElementById('email').value;
        let phoneNumber = document.getElementById('phoneNumber').value;
        let subject = document.getElementById('subject').value;
        let message = document.getElementById('message').value;

        let valid = true;

        // Clear previous error messages
        document.getElementById('fullNameError').innerText = '';
        document.getElementById('emailError').innerText = '';
        document.getElementById('phoneNumberError').innerText = '';
        document.getElementById('subjectError').innerText = '';
        document.getElementById('messageError').innerText = '';

        if (!namePattern.test(fullName)) {
            document.getElementById('fullNameError').innerText = 'Full Name must be between 3 and 100 characters and contain only letters.';
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
        if (!subjectPattern.test(subject)) {
            document.getElementById('subjectError').innerText = 'Subject must be between 3 and 100 characters.';
            valid = false;
        }
        if (!messagePattern.test(message)) {
            document.getElementById('messageError').innerText = 'Message must be between 10 and 1000 characters.';
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
