package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Ad> usersAds;
        if (request.getSession().getAttribute("user") != null) {
            // Retrieve the user that is stored in the session
            User AssociatedusersAds = (User) request.getSession().getAttribute("user");
            // I store said users id in a varaible
            String usersId = String.valueOf(AssociatedusersAds.getId());
            // I create a list of Ad's I use my DAO to fetch all the post with associated user id.
            List<Ad> associatedAdWithLoggedInUser = DaoFactory.getAdsDao().searchQuery(usersId);
            // I set the global variable to list I received from the database
            usersAds = associatedAdWithLoggedInUser;
            // I then set the attribute of all the ads in the request object
            request.setAttribute("ads", usersAds);
            request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
        } else {
            response.sendRedirect("/login");
        }
    }

    protected  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String adId = request.getParameter("adId");
        Ad fetchedAdFromDb = DaoFactory.getAdsDao().findById(adId);
        DaoFactory.getAdsDao().deleteAd(fetchedAdFromDb);
        response.sendRedirect("/profile");
    }
}
