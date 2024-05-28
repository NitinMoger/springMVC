<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Matrimony Register Form</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Adjustments for centering the form */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="text-center">Matrimony Register Form</h2>
    <form action="register" method="post">
    <span style="color:green"><b>${registerData}</b></span>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="age">Age:</label>
            <input type="number" class="form-control" id="age" name="age" required>
        </div>
        <div class="form-group">
            <label for="gender">Gender:</label>
            <select class="form-control" id="gender" name="gender" required>
             <option value="other">Other</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
            </select>
        </div>
        <div class="form-group">
            <label for="maritalStatus">Marital Status:</label>
            <select class="form-control" id="maritalStatus" name="maritalStatus" required>
                <option value="single">Single</option>
                <option value="married">Married</option>
                <option value="divorced">Divorced</option>
                <option value="widowed">Widowed</option>
            </select>
        </div>
        <div class="form-group">
            <label for="qualification">Qualification:</label>
            <input type="text" class="form-control" id="qualification" name="qualification" required>
        </div>
        <div class="form-group">
            <label for="religion">Religion:</label>
            <input type="text" class="form-control" id="religion" name="religion" required>
        </div>
        <div class="form-group">
            <label for="lookingfor">Looking For:</label>
            <input type="text" class="form-control" id="lookingfor" name="lookingfor" required>
        </div>

        <button type="submit" class="btn btn-primary">Register Here</button>
         <a href="index.jsp">Back to Index Page</a>
    </form>
</div>

<!-- Bootstrap JS (optional, for some features like dropdowns) -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
