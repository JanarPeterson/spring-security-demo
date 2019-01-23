<%--
  Created by IntelliJ IDEA.
  User: janarpeterson
  Date: 2019-01-23
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login page</title>

    <style>
        .failed{
            color: red;
        }
    </style>
</head>
<body>
    <h3>Custom login page</h3>

    <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="post">

        <c:if test="${param.error != null}">
            <i class="failed">Sorry, you entered invalid username or password.</i>
        </c:if>

        <p>
            User name: <input type="text" name="username">
        </p>
        <p>
            Password: <input type="password" name="password">
        </p>
        <p>
            <input type="submit" value="Login">
        </p>

    </form:form>
</body>
</html>
