
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Login</h2>
    <form method="post" action="${pageContext.request.contextPath}/login">
        <div class="form-group">
            <label>Email:</label>
            <input type="email" name="email" class="form-control" required />
        </div>
        <div class="form-group">
            <label>Password:</label>
            <input type="password" name="password" class="form-control" required />
        </div>
        <button type="submit" class="btn btn-primary btn-block">Login</button>
        
        
        <c:if test="${not empty error}">
            <div class="alert alert-danger mt-3"><a href="register.jsp">New User</a></div>
        </c:if>
    </form>
</div>
</body>
</html>
