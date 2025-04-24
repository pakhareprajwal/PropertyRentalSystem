
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f6f8;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 90%;
        max-width: 1000px;
        margin: 60px auto;
        text-align: center;
    }

    h1 {
        margin-bottom: 70px;
        color: #333;
    }

    .card-grid {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: center;
    }

    .card {
        background-color: white;
        padding: 25px;
        width: 400px;
        height:150px;
        border-radius: 10px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        transition: transform 0.2s ease;
    }

    .card:hover {
        transform: translateY(-5px);
    }

    .card h4 {
        margin-bottom: 15px;
        color: #444;
    }

    .card a, .card form {
        display: block;
        text-decoration: none;
        margin-top: 10px;
    }

    .btn {
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        background-color: #007bff;
        color: white;
        font-weight: bold;
        cursor: pointer;
        width: 100%;
    }

    .btn:hover {
        background-color: #0056b3;
    }

    .btn-secondary {
        background-color: #28a745;
    }

    .btn-secondary:hover {
        background-color: #1e7e34;
    }

    .btn-warning {
        background-color: #ffc107;
        color: #000;
    }

    .btn-warning:hover {
        background-color: #e0a800;
    }
</style>

</head>
<body>

<div class="container">
    <h1>Welcome to Admin Dashboard</h1>
    <div class="card-grid">

        <div class="card">
            <h4>Add Property</h4>
            <a href="addProperty.jsp">
                <button class="btn">Add</button>
            </a>
        </div>

        <div class="card">
            <h4>View Users</h4>
            <form action="datafet" method="get">
                <input type="submit" class="btn btn-secondary" value="View">
            </form>
        </div>

        <div class="card">
            <h4>View Application</h4>
            <a href="${pageContext.request.contextPath}/AppFetch">
            	<button class="btn btn-warning">View Applications</button>
            </a>
        </div>


        <div class="card">
            <h4>Available Properties</h4>
            <form action="datafetch" method="get">
                <input type="submit" class="btn btn-secondary" value="View Properties">
            </form>
        </div>

    </div>
</div>

</body>
</html>
