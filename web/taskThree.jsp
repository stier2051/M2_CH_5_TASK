<%@ page import="model.Translation" %><%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 22.10.2021
  Time: 15:36
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
<%
    String spanName = (String)request.getAttribute("spanName");
    String spanAge = (String)request.getAttribute("spanAge");
    String spanCountry = (String)request.getAttribute("spanCountry");
    String spanGender = (String)request.getAttribute("spanGender");
    String spanInsurance = (String)request.getAttribute("spanInsurance");
    String spanSendDoc = (String)request.getAttribute("spanSendDoc");
    String spanMale = (String)request.getAttribute("spanMale");
    String spanFemale = (String)request.getAttribute("spanFemale");
%>
<div class="container">
    <div class="navigation-edocs bg-dark-red white-text">
        <div class="row justify-content-between">
            <div class="col-lg-1">
                <a href="#" class="logo nav-link fs-3 fw-bold">eDOCS</a>
            </div>
            <div class="col-lg-2">
                <ul class="nav justify-content-end">
                    <li class="nav-item"><a href="lang-choice?lang=0" class="nav-link fs-5">en</a></li>
                    <li class="nav-item"><a href="lang-choice?lang=1" class="nav-link fs-5">ru</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="form">
        <div class="row">
            <div class="col justify-content-center">
                <form action="" class="mt-5 form-edocs m-auto">
                    <div class="input-group mb-3">
                        <span class="input-group-text text-white bg-dark-red"><%=spanName%></span>
                        <input type="text" name="fullName" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text text-white bg-dark-red"><%=spanAge%></span>
                        <input type="text" name="age" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text text-white bg-dark-red"><%=spanCountry%></span>
                        <select name="personCountry" class="form-control mb-0">
                            <option value="Kazakhstan">Kazakhstan</option>
                            <option value="Germany">Germany</option>
                            <option value="Uzbekistan">Uzbekistan</option>
                        </select>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text text-white bg-dark-red"><%=spanGender%></span>
                        <div class="form-check ms-3">
                            <input class="form-check-input" type="radio" name="gender" id="flexRadioDefault1">
                            <label class="form-check-label" for="flexRadioDefault1">
                                <%=spanMale%>
                            </label>
                        </div>
                        <div class="form-check ms-3">
                            <input class="form-check-input" type="radio" name="gender" id="flexRadioDefault2" checked>
                            <label class="form-check-label" for="flexRadioDefault2">
                                <%=spanFemale%>
                            </label>
                        </div>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text text-white bg-dark-red"><%=spanInsurance%></span>
                        <input type="text" name="insuranceNumber" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                    <button type="submit" class="btn btn-success"><%=spanSendDoc%></button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
