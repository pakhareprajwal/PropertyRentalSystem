<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Our Services - Property Rental System</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f8;
        }

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

        .container {
            max-width: 1000px;
            margin: 40px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        .service-box {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .service {
            background-color: #f9f9f9;
            padding: 20px;
            border-left: 6px solid #007bff;
            border-radius: 8px;
        }

        .service h3 {
            color: #007bff;
            margin-bottom: 10px;
        }

        .service p {
            color: #555;
            font-size: 16px;
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
        <li><a href="services.jsp">Services</a></li>
        <li><a href="userDash">Properties</a></li>
        <li><a href="userDash">Cart</a></li>
        <li><a href="login" class="user-icon">👤</a></li>
    </ul>
</nav>

<div class="container">
    <h1>Our Services</h1>
    <div class="service-box">
        <div class="service">
            <h3>Property Listings</h3>
            <p>List and showcase your property to thousands of potential tenants with detailed information, photos, and pricing.</p>
        </div>
        <div class="service">
            <h3>Smart Search</h3>
            <p>Search for properties using filters such as location, price, property type, and availability to find your ideal home faster.</p>
        </div>
        <div class="service">
            <h3>Application Management</h3>
            <p>Submit rental applications and track their status all in one place. Property owners can manage tenant applications efficiently.</p>
        </div>
        <div class="service">
            <h3>Secure Transactions</h3>
            <p>Conduct transactions securely with verified listings and encrypted communication channels between renters and landlords.</p>
        </div>
        <div class="service">
            <h3>Customer Support</h3>
            <p>Our support team is available to help both tenants and property owners with any questions or issues they may face.</p>
        </div>
    </div>

    <div class="footer">
        &copy; 2025 SmartRent - All Rights Reserved
    </div>
</div>

</body>
</html>