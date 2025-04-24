<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View User</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f6f9;
        margin: 0;
        padding: 20px;
    }

    h1 {
        text-align: center;
        color: #333;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        background-color: #fff;
        margin-top: 30px;
        box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    }

    th, td {
        padding: 12px 15px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #007bff;
        color: white;
        font-weight: bold;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    a {
        text-decoration: none;
        color: #007bff;
        font-weight: bold;
    }

    a:hover {
        text-decoration: underline;
        color: #0056b3;
    }
</style>

</head>
<body>

<h1>User List</h1>

<table>
    <tr>
        <th>Sr No</th>
        <th>Name</th>
        <th>Email</th>
        <th>Password</th>
        <th>Confirm Password</th>
        <th>Phone No</th>
        <th>Address</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <c:forEach var="u" items="${user}">
        <tr>
            <td>${u.sr_no}</td>
            <td>${u.name}</td>
            <td>${u.email}</td>
            <td>${u.password}</td>
            <td>${u.cpassword}</td>
            <td>${u.phone}</td>
            <td>${u.address}</td>
            <td><a href="<c:url value='/${u.sr_no}'/>">Edit</a></td>
            <td><a href="<c:url value='/delete/${u.sr_no}'/>">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>


