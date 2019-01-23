<%--
  Created by IntelliJ IDEA.
  User: janarpeterson
  Date: 2019-01-22
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Spring security demo</title>
</head>
<body>
    <h2>Welcome to the luv2code company home page.</h2>
    <hr>

    <p>
        This is a home page of a company called luv2code.
    </p>

    <hr>
    <p>
        User: <security:authentication property="principal.username"/>
        <br>
        <br>
        Role(s): <security:authentication property="principal.authorities"/>
    </p>
    <hr>

    <security:authorize access="hasRole('MANAGER')">
        <p>
            <a href="${pageContext.request.contextPath}/leaders">Leadership meeting</a> (Only for managers peeps)
        </p>
        <hr>
    </security:authorize>

    <security:authorize access="hasRole('ADMIN')">
        <p>
            <a href="${pageContext.request.contextPath}/systems">IT systems meeting</a> (Only for admins peeps)
        </p>
        <hr>
    </security:authorize>

    <form:form action="${pageContext.request.contextPath}/logout" method="post">
        <input type="submit" value="Logout">
    </form:form>

</body>
</html>
