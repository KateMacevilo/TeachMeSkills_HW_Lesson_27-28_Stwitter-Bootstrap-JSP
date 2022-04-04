<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Катя
  Date: 27.03.2022
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <jsp:include page="_header.jsp"/>
</head>
<body>

<div class="container-fluid d-flex justify-content-md-center">
    <div class="row col-6 mt-3 mx-3">
        <div class="col-10">

            <h1>Registration</h1>
            <form action="/registration" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" class="form-control" name="name" id="name" aria-describedby="namelHelp">
                </div>
                <div class="mb-3">
                    <label for="login" class="form-label">Login</label>
                    <input type="text" class="form-control" name="login" id="login" aria-describedby="loginlHelp">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" name="password" id="password">
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="radioRole" value="user" id="flexRadioDefault1">
                    <label class="form-check-label" for="flexRadioDefault1">
                        user
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="radioRole" value="admin" id="flexRadioDefault2"
                           checked>
                    <label class="form-check-label" for="flexRadioDefault2">
                        admin
                    </label>
                </div>

                <button type="submit" class="btn btn-primary">Submit</button>

                <div style="margin-top: 15px">
                    <c:if test="${isAdded == true}">
                        <div class="alert alert-success" role="alert">
                            <h4 class="alert-heading">Well done!</h4>
                        </div>
                    </c:if>
                    <c:if test="${isAdded == false}">
                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                            <h4 class="alert-heading">Error</h4>
                        </div>
                    </c:if>
                </div>

            </form>
        </div>
    </div>
</div>

</body>
</html>
