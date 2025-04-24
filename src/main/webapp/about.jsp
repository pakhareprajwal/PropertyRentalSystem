
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us - Property Rental System</title>
    <style>
    body, html {
      margin: 0;
      padding: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .navbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color: #333;
      padding: 0.5px 20px;
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
    
    
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f7fa;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 900px;
            margin: 40px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333333;
            margin-bottom: 20px;
        }

        p {
            line-height: 1.8;
            color: #555555;
            font-size: 16px;
        }

        .highlight {
            color: #007bff;
            font-weight: bold;
        }

        ul {
            margin-top: 15px;
            padding-left: 20px;
        }

        li {
            margin-bottom: 8px;
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            font-size: 14px;
            color: #999999;
        }
    </style>
</head>
<body>
<nav class="navbar">
    <a href="#" class="logo">RentSmart</a>
    <ul>
      <li><a href="Home.jsp">Home</a></li>
      <li><a href="about.jsp">About</a></li>
      <li><a href="#">Services</a></li>
      <li><a href="userDash">Properties</a></li>
     <li><a href="userDash">Cart</a></li>
      <li><a href="login" class="user-icon">👤</a></li>
    </ul>
  </nav>

<div class="container">
    <h1>About Our Property Rental System</h1>
    <p>
        Welcome to <span class="highlight">SmartRent</span>, your one-stop solution for renting residential and commercial properties with ease. 
        Our system connects property owners and potential tenants on a modern, user-friendly platform that makes renting safe, simple, and efficient.
    </p>

    <p>With SmartRent, users can:</p>
    <ul>
        <li>Browse available properties with detailed descriptions and images</li>
        <li>Search and filter listings based on their preferences</li>
        <li>Submit rental applications directly through the portal</li>
        <li>Manage rental records in a secure and transparent manner</li>
    </ul>

    <p>
        Our mission is to streamline the property rental process for both owners and tenants while ensuring a seamless experience through automation, real-time communication, and data security.
    </p>

    <p>
        Whether you’re looking for a place to stay or want to list your property for rent — <span class="highlight">SmartRent</span> is here to help.
    </p>

    <div class="footer">
        &copy; 2025 SmartRent - All Rights Reserved
    </div>
</div>

</body>
</html>

