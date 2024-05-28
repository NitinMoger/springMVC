<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Styled Form</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h2 {
            color: #333;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #007bff;
            padding: 10px 20px;
            border-radius: 5px;
            background-color: #f0f0f0;
            transition: background-color 0.3s ease, color 0.3s ease;
        }
        a:hover {
            background-color: #007bff;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome to Metrimony Form</h2>
        <form action="sent"  method="post">
             <input type="submit" value="Click">
        </form>
        <form action="recv"  method="post">
            <input type="submit" value="Click">
        </form>
        <a href="MatromanyRegister.jsp">Click here to MatromanyRegister</a>
        <a href="contact.jsp">Contact us</a>
    </div>
</body>
</html>
