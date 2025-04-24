<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <!-- Bootstrap CDN -->
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
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

<div class="container mt-4">
    <h2 class="mb-4 text-center">User Dashboard - Property Listings</h2>
    
    <!-- Search Form -->
    <form action="propertyDash" method="get" class="search-box">
        <div class="input-group mb-3">
        
        
            <input type="text" name="keyword" class="form-control" placeholder="Search by title or address" value="${param.keyword}">
            <div class="input-group-append">
                <button class="btn btn-outline-primary" type="submit">Search</button>
            </div>
        </div>
    </form>
    
    <div class="row">
        <c:forEach var="pro" items="${property1}">
            <div class="col-md-4">
                <div class="card property-card shadow-sm">
                    <img src="${pageContext.request.contextPath}/${pro.images}" class="card-img-top" alt="Property Image">
                    <div class="card-body">
                        <h5 class="card-title">${pro.title}</h5>
                        <p class="card-text">${pro.description}</p>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item"><strong>Address:</strong> ${pro.address}</li>
                            <li class="list-group-item"><strong>Price:</strong> ₹${pro.price}</li>
                            <li class="list-group-item"><strong>Type:</strong> ${pro.type}</li>
                            <li class="list-group-item"><strong>Area:</strong> ${pro.area} sq.ft</li>
                            <li class="list-group-item"><strong>Availability:</strong> ${pro.availability}</li>
                        </ul>
                        
                        <div class="mt-3 text-center">
                        	 <form action="${pro.sr_no}" method="get">
    								<button type="submit" class="btn btn-primary btn-sm">Enquiry</button>
							</form>
                        	 
                        	

                        	 
                        </div> 
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
