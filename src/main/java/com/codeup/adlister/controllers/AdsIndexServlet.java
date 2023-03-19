package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: I need to add some error handling if the user is not in our database
        String seachedQuery = request.getParameter("search");
        List<Ad> ads;
        if(seachedQuery!= null && !seachedQuery.trim().isEmpty()){
            // Fetching the user with the associated username in the searchedQuery
            User QueryedUser = DaoFactory.getUsersDao().findByUsername(seachedQuery);
            // Extracting the userId
            String usersId = String.valueOf(QueryedUser.getId());
            // Setting out global variable to the all the ads associated with said user
            ads = DaoFactory.getAdsDao().searchQuery(usersId);
        } else {
            // If there is nothing searched we will set the global variable to all the ads in our database
            ads = DaoFactory.getAdsDao().all();
        }
        request.setAttribute("ads", ads);
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String addId = request.getParameter("adId");
        String associatedUserWithAdId = request.getParameter("userId");

        // Using my Dao factory to fetch the associated user
        Ad fetchedId = DaoFactory.getAdsDao().findById(addId);
        User fetchedAssociatedUser = DaoFactory.getUsersDao().findById(associatedUserWithAdId);

        // Setting the attributes, so we can use them in the jsp file
        request.setAttribute("user", fetchedAssociatedUser);
        request.setAttribute("ad", fetchedId);
        request.getRequestDispatcher("WEB-INF/ads/ad.jsp").forward(request, response);
    }
}
