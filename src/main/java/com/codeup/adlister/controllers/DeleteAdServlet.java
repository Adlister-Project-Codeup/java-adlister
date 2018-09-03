package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DeleteAdServlet", urlPatterns = "/deleteAd")
public class DeleteAdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            long adId = Long.parseLong(request.getParameter("adId"));
            try {
                System.out.println(DaoFactory.getAdsDao().deleteAdFromAdCategories(adId));
                System.out.println(DaoFactory.getAdsDao().deleteAdFromAdTable(adId));
                request.setAttribute("deleted", true);

                request.getRequestDispatcher("/WEB-INF/ads/AdUpdated.jsp").forward(request, response);
            } catch (SQLException e) {
                e.printStackTrace();
            }

        } else {
            response.sendRedirect("/login");
        }


    }
}
