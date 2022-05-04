<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${dojo.name} Location Ninjas</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

    <h1><c:out value="${dojo.name}"/> Location Ninjas</h1>

    <table class="table table-striped">

        <thead>
            <tr>
            <th scope="col">First Name</th>
            <th scope="col">Last Name</th>
            <th scope="col">Age</th>
         </tr>
        </thead>

        <tbody>
            <c:forEach var="dojoList" items="${dojo.ninjas}">
                <tr>
                    <td><c:out value="${dojoList.firstName}"/></td>
                    <td><c:out value="${dojoList.lastName}"/></td>
                    <td><c:out value="${dojoList.age}"/></td>
                </tr>
            </c:forEach>
        </tbody>

    </table>

</body>
</html>