<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Form</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* CSS to center the heading */
        h1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container mt-4">
        <h1>Contact Form</h1>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="MatromanyRegister.jsp">MatromanyRegister <span class="sr-only"></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                </ul>
            </div>
        </nav>
        <form id="contactForm" action="contactUs" method="post" onsubmit="return validateForm()">
            <span style="color:red"><b>${contactData}</b></span>
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="text" class="form-control" id="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="mobile">Mobile:</label>
                <input type="tel" class="form-control" id="mobile" name="mobile" required>
            </div>

            <div class="form-group">
                <label for="comments">Comments:</label>
                <textarea class="form-control" id="comments" name="comments" rows="4" required></textarea>
            </div>

            <!-- Submit button outside the form-group -->
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <script>
        function validateForm() {
            var name = document.getElementById('name').value;
            var email = document.getElementById('email').value;
            var mobile = document.getElementById('mobile').value;
            var comments = document.getElementById('comments').value;

            var errors = [];

            if (name.length < 3 || name.length > 30 ) {
                errors.push("Name must be between 3 and 30 characters.");
            }

            if (email.length < 3 || email.length > 30) {
                errors.push("Email must be between 3 and 30 characters.");
            }

            if (!validateMobile(mobile)) {
                errors.push("Please enter a valid 10-digit mobile number.");
            }

            if (comments.length > 300) {
                errors.push("Comments must not exceed 300 characters.");
            }

            if (errors.length > 0) {
                alert(errors.join("\n"));
                return false;
            }

            return true;
        }

        function validateMobile(mobile) {
            var pattern = /^[0-9]{10}$/;
            return pattern.test(mobile);
        }
    </script>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
