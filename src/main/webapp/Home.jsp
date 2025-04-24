<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Property Rental System</title>
  
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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

    .hero {
      display: flex;
      justify-content: space-between;
      align-items: center;   
      padding: 60px;
      background: #f9f9f9;
    }

    .hero-text {
      max-width: 50%;
    }

    .hero-text h1 {
      font-size: 3rem;
      margin-bottom: 20px;
      color: #333;
    }

    .hero-text p {
      font-size: 1.2rem;
      margin-bottom: 20px;
      color: #555;
    }

    .features {
      font-size: 1rem;
      margin-bottom: 25px;
      color: #777;
    }

    .hero-buttons button {
      padding: 12px 24px;
      margin: 5px;
      border: none;
      border-radius: 6px;
      font-size: 1rem;
      cursor: pointer;
      transition: background 0.3s ease;
    }

    .search-btn {
      background-color: #ff7e5f;
      color: white;
    }

    .search-btn:hover {
      background-color: #ff6a45;
    }

    .list-btn {
      background-color: white;
      color: #333;
      border: 1px solid #ccc;
    }

    .list-btn:hover {
      background-color: #eee;
    }

    .hero-image img {
      height : 500px;
      width: 100%;
      max-width: 500px;
      border-radius: 12px;
      box-shadow: 0 5px 15px rgba(0,0,0,0.2);
    }

    @media (max-width: 900px) {
      .hero {
        flex-direction: column;
        text-align: center;
        padding: 40px 20px;
      }

      .hero-text, .hero-image {
        max-width: 100%;
      }

      .hero-image {
        margin-top: 30px;
      }
    }
    
    .card-img-top {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
        .property-card {
            margin-bottom: 30px;
        }
  </style>
</head>
<body>

	<nav class="navbar">
    <a href="#" class="logo">RentSmart</a>
    <ul>
      <li><a href="Home.jsp">Home</a></li>
      <li><a href="about.jsp">About</a></li>
      <li><a href="service">Services</a></li>
      <li><a href="userDash">Properties</a></li>
     <li><a href="userDash">Cart</a></li>
      <li><a href="login" class="user-icon">👤</a></li>
    </ul>
  </nav>  

  <div class="hero">
    <div class="hero-text">
    	<h3>Welcome,</h3>
      <h1>Find Your Next Home, Hassle-Free</h1>
      <p>Explore thousands of verified listings, schedule viewings, and seal the deal online. Whether you're looking for a cozy studio or a spacious family home, your perfect rental is just a few clicks away.</p>
      <div class="features">🔍 Smart Search &nbsp;|&nbsp; 💬 Instant Chat &nbsp;|&nbsp; 🔐 Secure Transactions</div>
      <div class="hero-buttons">
        <button class="search-btn">Search Rentals</button>
        <a href="userDash" class="btn list-btn">List Your Property</a>     
      </div>
    </div>
    <div class="hero-image">
      <img src="images/DreamHome.png" alt="Man holding a house">
    </div>
  </div>
  
  
</div>

</body>
</html>
