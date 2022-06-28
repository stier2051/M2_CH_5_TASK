<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 22.10.2021
  Time: 7:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&amp;subset=cyrillic" rel="stylesheet">
    <!-- Bootstrap Reboot CSS -->
    <link rel="stylesheet" href="css/bootstrap-reboot.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="css/main.css">
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-5">
            <%
                String personName = (String) request.getAttribute("personName");
                String personSurname = (String) request.getAttribute("personSurname");
                String personCountry = (String) request.getAttribute("personCountry");
                String personPhone = (String) request.getAttribute("personPhone");
            %>
            <form method="post" class="mt-5">
                <div class="input-group mb-3">
                    <span class="input-group-text bg-success text-white">Name</span>
                    <input type="text" value="<%= personName != null ? personName : ""%>" class="form-control" name="personName" aria-label="Recipient's username" aria-describedby="basic-addon2">
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text bg-success text-white">Surname</span>
                    <input type="text" value="<%= personSurname !=null ? personSurname : ""%>" class="form-control" name="personSurname" aria-label="Recipient's username" aria-describedby="basic-addon2">
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text bg-success text-white">Country</span>
                    <select name="personCountry" class="form-control mb-0">
                        <option value="<%=personCountry != null ? personCountry : ""%>"><%=personCountry != null ? personCountry : ""%></option>
                        <option value="Kazakhstan">Kazakhstan</option>
                        <option value="Germany">Germany</option>
                        <option value="Uzbekistan">Uzbekistan</option>
                    </select>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text bg-success text-white">Phone Number</span>
                    <input type="text" value="<%= personPhone != null ? personPhone : ""%>" class="form-control" name="personPhone" aria-label="Recipient's username" aria-describedby="basic-addon2">
                </div>
                <div class="text-end">
                <button type="button" class="btn btn-dark">Register</button>
                <button type="submit" class="btn btn-secondary">Save to draft</button>
                <a href="delete-cookies" class="btn btn-danger">delete cookies</a>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
