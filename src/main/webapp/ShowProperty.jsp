<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Available Property</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f6f8;
        margin: 20px;
    }

    h2 {
        text-align: center;
        color: #2c3e50;
        margin-bottom: 30px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        background-color: #ffffff;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    th, td {
        padding: 12px 15px;
        text-align: center;
        border: 1px solid #ddd;
    }

    th {
        background-color: #007BFF;
        color: white;
        font-weight: bold;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    img {
        width: 120px;
        height: auto;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0,0,0,0.2);
    }

    a {
        color: #007BFF;
        text-decoration: none;
        font-weight: bold;
    }

    a:hover {
        color: #0056b3;
        text-decoration: underline;
    }
</style>
</head>
<body>

<h2>Available Properties</h2>

<table>
    <thead>
        <tr>
            <th>Sr No</th>
            <th>Title</th>
            <th>Description</th>
            <th>Address</th>
            <th>Price</th>
            <th>Type</th>
            <th>Area</th>
            <th>Available</th>
            <th>Image</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="pro" items="${property}">
            <tr>
                <td>${pro.sr_no}</td>
                <td>${pro.title}</td>
                <td>${pro.description}</td>
                <td>${pro.address}</td>
                <td>${pro.price}</td>
                <td>${pro.type}</td>
                <td>${pro.area}</td>
                <td>${pro.availability}</td>
                <td>
                    <img src="${pageContext.request.contextPath}/${pro.images}" alt="Property Image">
                </td>
                <td><a href="<c:url value='/${pro.sr_no}' />">Edit</a></td>
                <td><a href="<c:url value='/deleteproperty/${pro.sr_no}' />">Delete</a></td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>


