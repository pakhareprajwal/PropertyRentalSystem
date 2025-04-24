<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Property</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f3f7;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 90%;
        max-width: 600px;
        margin: 50px auto;
        background-color: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
        text-align: center;
        color: #333;
        margin-bottom: 30px;
    }

    label {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
        color: #333;
    }

    input[type="text"],
    textarea,
    input[type="file"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
    }

    textarea {
        resize: vertical;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 6px;
        background-color: #007bff;
        color: #fff;
        font-weight: bold;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.2s ease;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    .view-form {
        text-align: center;
        margin-top: 20px;
    }

    .view-form input[type="submit"] {
        background-color: #28a745;
    }

    .view-form input[type="submit"]:hover {
        background-color: #1e7e34;
    }
</style>

</head>
<body>

<div class="container">
    <form action="addP" method="post" enctype="multipart/form-data">
        <h1>Property Details</h1>

        <label>Property Title:</label>
        <input type="text" name="title">

        <label for="description">Property Description:</label>
        <textarea name="description" rows="4" placeholder="Describe your property here..."></textarea>

        <label>Address:</label>
        <input type="text" name="address">

        <label>Price:</label>
        <input type="text" name="price">

        <label>Property Type:</label>
        <input type="text" name="type">

        <label>Area (sq.ft):</label>
        <input type="text" name="area">

        <label>Availability:</label>
        <input type="text" name="availability">

        <label for="images">Upload Image:</label>
        <input type="file" name="file" accept="image/*">

        <input type="submit" value="Add Property">
    </form>

    <form action="datafetch" method="get" class="view-form">
        <input type="submit" value="View All Properties">
    </form>
</div>

</body>
</html>



