
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Simple and Sober Internal CSS */
        body {
            font-family: Arial, sans-serif;
            color: #333;
            margin-top: 100px;
        }
        .container {
            background-color: #fff;
            border-radius: 8px;
            padding: 40px;
            max-width: 500px;
            height : 500px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            margin-top: 100px;
        }
        h2 {
            font-size: 24px;
            font-weight: 600;
            color: #333;
            margin-bottom: 30px;
        }
        .form-group label {
            font-size: 14px;
            font-weight: 500;
            color: #555;
        }
        .form-control {
            border-radius: 4px;
            border: 1px solid #ccc;
            padding: 12px;
            font-size: 16px;
            margin-bottom: 20px;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
            padding: 12px;
            border-radius: 4px;
            font-size: 16px;
            width: 100%;
            text-align: center; /* Center the text inside the button */
        }
        .btn-primary:hover {
          
            background-color: #0056b3;
        }
        .alert-danger {
            background-color: #f8d7da;
            color: #721c24;
            border-radius: 5px;
            padding: 10px;
            margin-top: 15px;
            text-align: center; /* Center the error message */
        }
        .alert-danger a {
            color: #721c24;
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <h1 class="text-center mb-4">Login</h1>
    <form method="post" action="${pageContext.request.contextPath}/login">
        <div class="form-group">
            <label>Email:</label>
            <input type="email" name="email" class="form-control" required />
        </div>
        <div class="form-group">
            <label>Password:</label>
            <input type="password" name="password" class="form-control" required />
        </div><br>
        <button type="submit" class="btn btn-primary btn-block" >Login</button>
        
        
        <c:if test="${not empty error}">
            <div class="alert alert-danger mt-3"><a href="register.jsp">New User</a></div>
        </c:if>
    </form>
</div>
</body>
</html>
