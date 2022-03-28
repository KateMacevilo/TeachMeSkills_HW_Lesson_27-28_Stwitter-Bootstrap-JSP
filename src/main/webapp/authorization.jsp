<%--
  Created by IntelliJ IDEA.
  User: Катя
  Date: 28.03.2022
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Authorization</title>
    <jsp:include page="_header.jsp"/>
</head>
<body>

<div class="row mt-3 mx-3">
    <div class="col-4">
        <h1>Authorization</h1>
        <form action="/authorization" method="post">

            <div class="mb-3">
                <label for="login" class="form-label">Login</label>
                <input type="text" class="form-control" name="login" id="login" aria-describedby="loginlHelp">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" name="password" id="password">
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>


</body>
</html>