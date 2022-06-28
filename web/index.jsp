<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 21.10.2021
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String siteName = (String) request.getAttribute("siteName");
    System.out.println(siteName);
%>
<html>
<head>
    <title><%= siteName != null ? siteName : "Default site name"%></title>
</head>
<body>

</body>
</html>
