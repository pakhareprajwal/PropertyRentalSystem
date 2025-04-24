<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f4f8;
            padding: 40px;
        }

        .form-container {
            max-width: 500px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            color: #333333;
            margin-bottom: 25px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 15px;
            margin-bottom: 5px;
            color: #444444;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 6px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #28a745;
            border: none;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        .login-link {
            display: block;
            text-align: center;
            margin-top: 20px;
        }

        .login-link a {
            color: #007bff;
            text-decoration: none;
        }

        .login-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="form-container">
	<h1>Registration Form</h1>
	<form action="Registration" method="post">
		<label for="name">Name</label>
        <input type="text" name="name" id="name" required>

        <label for="email">Email</label>
        <input type="email" name="email" id="email" required>

        <label for="password">Password</label>
        <input type="password" name="password" id="password" required>

        <label for="cpassword">Confirm Password</label>
        <input type="password" name="cpassword" id="cpassword" required>

        <label for="phone">Phone Number</label>
        <input type="text" name="phone" id="phone" required>

        <label for="address">Address</label>
        <input type="text" name="address" id="address" required>

        <input type="submit" value="Register">
        
        <div class="login-link">
            Already have an account? <a href="login.jsp">Login here</a>
        </div>
	<!--  	Name : <br><br><input type="text" name="name"><br><br>

		Email : <br><br><input type="email" name="email"><br><br>

		Password : <br><br><input type="password" name="password"><br><br>

		Confirm Password : <br><br><input type="text" name="cpassword"><br><br>

		Phone Number : <br><br><input type="text" name="phone"><br><br>

		Address : <br><br><input type="text" name="address"><br><br>

		<br><br><input type="submit" name="Register"><br><br>
		
		<a href="login.jsp">Login here</a>-->
	</form>
</div>
	
</body>
</html>