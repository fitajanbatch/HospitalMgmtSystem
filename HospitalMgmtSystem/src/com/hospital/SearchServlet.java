package com.hospital;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.model.Patient;

public class SearchServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		HospitalUtil.isUserAuthenticated(req, resp, getServletContext());
		
		List<Patient> patients = new ArrayList<>();
		String searchTerm = req.getParameter("searchbox");

		int id = HospitalUtil.getIdFromString(searchTerm);

		if (id != -1) {
			// search by id
			for (Patient p : HospitalUtil.patients) {
				if (p.getId() == id) {
					patients.add(p);
				}
			}
		} else {
			// search by name
			for (Patient p : HospitalUtil.patients) {
				if (p.getName().toLowerCase().contains(searchTerm.toLowerCase())) {
					patients.add(p);
				}
			}
		}
		req.setAttribute("patients", patients);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/jsp/results.jsp");
		rd.forward(req, resp);
	}

}
