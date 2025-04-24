<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update User</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 50px;
    }

    h1 {
        text-align: center;
        color: #343a40;
        margin-bottom: 30px;
    }

    form {
        width: 400px;
        margin: auto;
        padding: 25px;
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0,0,0,0.1);
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        border: none;
        color: white;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    label {
        font-weight: bold;
        color: #495057;
    }
</style>

</head>
<body>

<h1>Update User Details</h1>

<c:set var="ob" value="${edit_data}" />
<form action="edit/${ob.sr_no}" method="post">
    <label>Name:</label>
    <input type="text" name="name" value="${ob.name}">

    <label>Email:</label>
    <input type="email" name="email" value="${ob.email}">

    <label>Password:</label>
    <input type="password" name="password" value="${ob.password}">

    <label>Confirm Password:</label>
    <input type="password" name="cpassword" value="${ob.cpassword}">

    <label>Phone No:</label>
    <input type="text" name="phone" value="${ob.phone}">

    <label>Address:</label>
    <input type="text" name="address" value="${ob.address}">

    <input type="submit" value="Update">
</form>

</body>
</html>


