<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your Cart</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .card-img-top {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
        .cart-item-card {
            margin-bottom: 30px;
        }
    </style>
</head>
<body>

<div class="container mt-4">
    <h2 class="mb-4 text-center">Your Cart</h2>
    <div class="row">
        <c:forEach var="cart" items="${cartItems}">
            <div class="col-md-4">
                <div class="card cart-item-card shadow-sm">
                    <img src="${pageContext.request.contextPath}/${cart.property.images}" class="card-img-top" alt="Property Image">
                    <div class="card-body">
                        <h5 class="card-title">${cart.property.title}</h5>
                        <p class="card-text">${cart.property.description}</p>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item"><strong>Address:</strong> ${cart.property.address}</li>
                            <li class="list-group-item"><strong>Price:</strong> ₹${cart.property.price}</li>
                            <li class="list-group-item"><strong>Type:</strong> ${cart.property.type}</li>
                            <li class="list-group-item"><strong>Area:</strong> ${cart.property.area} sq.ft</li>
                            <li class="list-group-item"><strong>Availability:</strong> ${cart.property.availability}</li>
                        </ul>
                        <div class="mt-3 text-center">
                            <form action="${pageContext.request.contextPath}/removeFromCart/${cart.id}" method="post" style="display:inline;">
                                <button type="submit" class="btn btn-danger btn-sm">Remove from Cart</button>
                            </form>
                        </div> 
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <div class="text-center">
        <a href="${pageContext.request.contextPath}/checkout" class="btn btn-success">Proceed to Checkout</a>
    </div>
</div>

</body>
</html>