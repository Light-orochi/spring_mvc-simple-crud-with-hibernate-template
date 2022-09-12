<%--
  Created by IntelliJ IDEA.
  User: Light_orochi
  Date: 03/09/2022
  Time: 23:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <%@include file="common.jsp" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Codetechn</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/">Home Tutorial</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container mt-3">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <h1 class="text-center mb-3">Enter your informations to login</h1>

            <form:form action="${pageContext.request.contextPath}/submit-user" method="POST" modelAttribute="user">
                <form:hidden path="id" />
                <div class="mb-3">
                    <label for="Name" class="form-label">Name </label>
                    <form:input type="text" class="form-control"  path="name"/>
                </div>
                <div class="mb-3">
                    <label for="Surname" class="form-label">Surname </label>
                    <form:input type="text" class="form-control"  path="surname"/>
                </div>
                <div class="mb-3">
                    <label for="Email" class="form-label">Email</label>
                    <form:input type="email" class="form-control"  path="email"/>
                </div>
                <div class="mb-3">
                    <label for="Address" class="form-label">Address</label>
                    <form:input type="text" class="form-control"  path="address"/>
                </div>
                <div class="mb-3">
                    <label for="Number" class="form-label">Number </label>
                    <form:input type="text" class="form-control"  path="number"/>
                </div>
                <div class="mb-3">
                    <label for="Career" class="form-label">Career </label>
                    <form:input type="text" class="form-control"  path="career"/>
                </div>
                <div class="row">
                    <button type="submit" class="btn btn-primary btn-lg btn-block">Register</button>
                </div>

            </form:form>
            <!--<form action="submit-company" method="post">
                <div class="mb-3">
                    <label class="form-label">Company Name</label>
                    <input type="text" name="name" class="form-control" placeholder="type company name">
                </div>
                <div class="mb-3">
                    <label class="form-label">Headquarter</label>
                    <input type="text" name="headquarter" class="form-control" placeholder="type headquater or location">
                </div>
                <div class="container text-center">
                    <button type="submit" class="btn btn-primary">Create</button>
                    <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
                </div>
            </form> -->
        </div>
    </div>
</div>
</body>
</html>
