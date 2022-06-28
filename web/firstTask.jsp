<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 21.10.2021
  Time: 20:46
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
<%--    <link rel="stylesheet" href="css/main.css">--%>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-5">
            <form method="post">
            <div class="input-group mb-3 mt-5">
                <input type="text" class="form-control" name="siteTitle" placeholder="Insert site name" aria-label="Recipient's username" aria-describedby="basic-addon2">
                <span class="input-group-text bg-primary text-white" id="basic-addon2">SITE NAME</span>
            </div>
            <button type="submit" class="btn btn-success">set site name</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
