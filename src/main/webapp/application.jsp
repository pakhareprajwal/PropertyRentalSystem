<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Application (Enquiry)</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            padding: 40px;
        }

        .form-container {
            max-width: 500px;
            margin: 0 auto;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 15px;
            margin-bottom: 5px;
            color: #444;
        }

        input[type="text"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
        }

        button {
            margin-top: 25px;
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            border: none;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="form-container">
	<h1>Application Form</h1>
	<form action="submit" method="post">
    <input type="hidden" name="propertyId" value="${application.propertyId}" />
    Name: <br/><input type="text" name="fullName" required /><br/><br/>
    Email: <br/><input type="email" name="email" required /><br/><br/>
    Phone: <br/><input type="text" name="phone" required /><br/><br/>
    Address : <br/><input type="text" name="address" required ><br/><br/>
    <button type="submit">Submit</button>
	</form>
</div>
	

<!-- 
	<form:form modelAttribute="application" method="post" action="${pageContext.request.contextPath}/application/submitApplication">
	
        Full Name: <br><form:input path="fullName" required="true"/><br><br>
        Email: <br><form:input path="email" type="email" required="true"/><br><br>
        Phone: <br><form:input path="phone" required="true"/><br><br>
        Address: <br><form:input path="address" required="true"/><br><br>
        <input type="submit" value="Submit Application">
    </form:form>
 -->
 
</body>
</html>
