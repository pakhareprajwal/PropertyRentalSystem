<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Header - Property Rental System</title>
    <style>
        /* Reset default styles */
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Navbar Styles */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #333;
            padding: 10px 20px;
            color: white;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: bold;
            color: white;
            text-decoration: none;
        }

        .navbar ul {
            list-style: none;
            display: flex;
            gap: 25px;
            align-items: center;
        }

        .navbar ul li a {
            color: white;
            text-decoration: none;
            font-size: 1rem;
            transition: color 0.3s;
        }

        .navbar ul li a:hover {
            color: #ff7e5f;
        }

        .user-icon {
            font-size: 1.2rem;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar">
        <a href="Home.jsp" class="logo">RentSmart</a>
        <ul>
            <li><a href="Home.jsp">Home</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="services.jsp">Services</a></li>
            <li><a href="userDash">Properties</a></li>
            <li><a href="cart.jsp">Cart</a></li>
            <li><a href="login.jsp" class="user-icon">👤</a></li>
        </ul>
    </nav>
</body>
</html>
