<%--
  Created by IntelliJ IDEA.
  User: telci
  Date: 12/06/2024
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="chiens" type="java.util.ArrayList<org.example.chienliste.entity.Chien>" scope="request"/>
<html>
<head>
    <title>Liste Chien</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>

<main class="container">
    <div class="row my-3 pt-5">
        <div class="col-8 offset-2 text-bg-dark rounded p-3">
            <h1 class="fw-light text-center">Liste de chien 🐶</h1>
            <hr>
            <% if (!chiens.isEmpty()) { %>
            <table class="table table-dark text-center align-middle">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Nom</th>
                    <th>Race</th>
                    <th>Date de naissance</th>
                    <th>Détail</th>
                </tr>
                </thead>
                <tbody>
                <% for (int i = 0; i < chiens.size();i++) { %>
                <tr>
                    <td><%= i+1 %></td>
                    <td><%= chiens.get(i).getNom() %></td>
                    <td><%= chiens.get(i).getRace() %></td>
                    <td><%= chiens.get(i).getDateNaissance() %></td>
                    <td>
                        <a href="detailChien?id=<%= chiens.get(i).getId() %>" class="btn btn-info">Détails</a>
                    </td>
                </tr>
                <% } %>
                </tbody>
            </table>
            <% } else { %>
            <p>La liste de chien est vide 🫨🫨🫨</p>
            <% }  %>
            <a href="ajoutChien" class="btn btn-secondary text-center"> ➕ Ajoute un chien</a>
        </div>
    </div>
</main>


</body>
</html>
