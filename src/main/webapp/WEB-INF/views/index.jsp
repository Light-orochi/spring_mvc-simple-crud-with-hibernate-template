<%--
  Created by IntelliJ IDEA.
  User: Light_orochi
  Date: 03/09/2022
  Time: 22:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <%@include file="common.jsp" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <a class="nav-link active" aria-current="page" href="#">Back to Tutorial</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-3">

    <div class="row">

        <h3 class="text-center mb-3" style="color:red;">Spring MVC CRUD With MySQL & Hibernate</h3>

        <table class="table mt-4">
            <thead class="table-light">
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Name</th>
                <th scope="col">Surname</th>
                <th scope="col">Email</th>
                <th scope="col">Address</th>
                <th scope="col">Number</th>
                <th scope="col">Career</th>
                <th scope="col">Edit</th>
                <th scope="col">Delete</th>
            </tr>
            </thead>
            <tbody class="table-group-divider">

            <c:forEach items="${users}" var="str">
                <c:url var="updateLink" value="/updated">
                    <c:param name="uid" value="${str.id}" />
                </c:url>
                <tr>
                    <th scope="row">${str.id}</th>
                    <td>${str.name}</td>
                    <td>${str.surname}</td>
                    <td>${str.email}</td>
                    <td>${str.address}</td>
                    <td>${str.number}</td>
                    <td>${str.career}</td>
                    <td><a href="updated/${str.id}"><i class="fas fa-edit"></i></a></td>
                    <td><a href="delete/${str.id}"><i class="fas fa-trash-alt text-danger"></i></a></td>
                </tr>
            </c:forEach>

            </tbody>
        </table>

        <div class="container text-center">
            <a href="add-user" class="btn btn-success">Add User</a>
        </div>

    </div>
</div>

</body>