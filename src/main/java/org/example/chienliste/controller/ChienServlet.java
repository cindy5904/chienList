package org.example.chienliste.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.chienliste.entity.Chien;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "chienliste", value = {"/listeChien", "/ajoutChien", "/detailChien/*"})
public class ChienServlet extends HttpServlet {
    private List<Chien> chiens;

    @Override
    public void init() throws ServletException {
        chiens = new ArrayList<>();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();

        System.out.println(path);
        switch (path) {
            case "/listeChien":
                listesChiens(req, resp);
                break;
            case "/ajoutChien":
                afficherFormulaireChien(req, resp);
                break;
            case "/detailChien":
                afficherDetailChien(req, resp);
                break;
            default:
                resp.sendError(400, "Invalid");
                break;
        }
    }
    private void listesChiens(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("chiens", chiens);
        req.getRequestDispatcher("/WEB-INF/chienListe.jsp").forward(req, resp);
    }

    private void afficherFormulaireChien(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/chienForm.jsp").forward(req, resp);
    }

    private void afficherDetailChien(HttpServletRequest req, HttpServletResponse resp)  throws ServletException, IOException {

        String idParam = req.getParameter("id");
        System.out.println("ID Paramètre : " + idParam);


        req.getRequestDispatcher("/WEB-INF/chienDetail.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom = req.getParameter("nom");
        String race = req.getParameter("race");
        LocalDate dateNaissance = LocalDate.parse(req.getParameter("dateNaissance"));

        Chien chien = new Chien(nom, race, dateNaissance);
        chiens.add(chien);
        req.setAttribute("chiens", chiens);

    }

    @Override
    public void destroy() {
        super.destroy();
    }
}
