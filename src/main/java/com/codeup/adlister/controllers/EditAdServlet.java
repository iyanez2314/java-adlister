package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditAdServlet", value = "/edit-ad")
public class EditAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adId = request.getParameter("adId");

        Ad adToEdit = DaoFactory.getAdsDao().findById(adId);

        request.setAttribute("ad", adToEdit);

        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adId = request.getParameter("adId");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        User associatedUserWithAd = (User) request.getSession().getAttribute("user");
        Long associatedUserId = associatedUserWithAd.getId();

        Ad updatedAd = new Ad(associatedUserId, Long.parseLong(adId), title, description);
        DaoFactory.getAdsDao().updateAd(updatedAd);

        response.sendRedirect("/profile");
    }
}
