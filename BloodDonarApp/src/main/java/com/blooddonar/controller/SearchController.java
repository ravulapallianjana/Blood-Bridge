package com.blooddonar.controller;

import java.io.IOException;
import java.util.List;

import com.blooddonar.DAO.Blood_Implements;
import com.blooddonar.model.BloodModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SearchServlet")
public class SearchController extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String bloodgroup = request.getParameter("bloodgroup");
        String location = request.getParameter("location");

        Blood_Implements dao = new Blood_Implements();

        List<BloodModel> donors =
                dao.searchDonor(bloodgroup, location);

        request.setAttribute("donors", donors);

        RequestDispatcher rd =
                request.getRequestDispatcher("/available.jsp");

        rd.forward(request, response);
    }
}