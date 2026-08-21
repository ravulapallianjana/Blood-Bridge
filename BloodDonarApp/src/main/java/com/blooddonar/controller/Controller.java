package com.blooddonar.controller;

import java.io.IOException;

import com.blooddonar.DAO.Blood_Implements;
import com.blooddonar.model.BloodModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Controller extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String dname = request.getParameter("dname");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String blood_group = request.getParameter("blood_group");
		String phone = request.getParameter("phone");
		String city = request.getParameter("city");

		BloodModel bm = new BloodModel();
		bm.setEmail(email);
		bm.setDname(dname);
		bm.setAge(age);
		bm.setGender(gender);
		bm.setBlood_group(blood_group);
		bm.setPhone(phone);
		bm.setCity(city);

		Blood_Implements dao = new Blood_Implements();

		String status = dao.donar(bm);

		if ("success".equals(status)) {

			request.setAttribute("dname", dname);

			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");

			rd.forward(request, response);

		} else {

			request.setAttribute("msg", "Registration Failed!");

			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");

			rd.forward(request, response);
		}
	}
}