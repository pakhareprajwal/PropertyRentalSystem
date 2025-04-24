
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>User Applications</title>
    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .table-container {
            margin-top: 40px;
        }
        .table th, .table td {
            vertical-align: middle;
            background-color: white;
        }
        .header {
            margin-top: 30px;
            margin-bottom: 20px;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="container table-container">

	<div class="header">
        <h2>User Applications</h2>
    </div>
<table border="1" class="table table-striped table-bordered shadow-sm">
    <tr class="thead-dark">
            <th>Id</th>
            <th>Full Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Address</th>
            <th>Property ID</th>
        	<th>Delete</th>
    </tr>
    <c:forEach var="app" items="${apply}">
            <tr>
                <td>${app.id}</td>
                <td>${app.fullName}</td>
                <td>${app.email}</td>
                <td>${app.phone}</td>
                <td>${app.address}</td>
                <td>${app.propertyId}</td>
                <td>
                        <a href="${pageContext.request.contextPath}/deleteproperty/${app.id}" 
                           class="btn btn-sm btn-danger"
                           onclick="return confirm('Are you sure you want to delete this application?');">
                           Delete
                        </a>
                    </td></tr>
        </c:forEach>
</table>

</div>

</body>
</html>

 