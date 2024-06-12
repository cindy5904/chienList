<%@ page import="org.example.chienliste.entity.Chien" %><%--
  Created by IntelliJ IDEA.
  User: telci
  Date: 12/06/2024
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>

<div class="container pt-5">
    <main class="container">
        <div class="row my-3">
            <div class="col-8 offset-2 text-bg-dark rounded p-3">
                <h1 class="fw-light text-center">Détails 🐶</h1>
                <hr>
                <table class="table table-dark text-center align-middle">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Nom</th>
                        <th>Race</th>
                        <th>Date de naissance</th>

                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td></td>
                        <td><%=  ((Chien) request.getAttribute("chien")).getNom() %></td>
                        <td><%=  ((Chien) request.getAttribute("chien")).getRace()  %></td>
                        <td><%= ((Chien) request.getAttribute("chien")).getDateNaissance() %></td>
                    </tr>
                    </tbody>
                </table>
                <a href="listeChien" class="btn btn-secondary text-center">Retour à la liste</a>
            </div>
        </div>
    </main>

</div>
</body>
</html>
