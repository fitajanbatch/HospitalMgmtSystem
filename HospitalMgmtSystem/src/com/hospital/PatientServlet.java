package com.hospital;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.model.Patient;

public class PatientServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HospitalUtil.isUserAuthenticated(req, resp, getServletContext());
		
		int id = Integer.parseInt(req.getParameter("id"));
		
		for (Patient p : HospitalUtil.patients) {
			if (p.getId() == id) {
				req.setAttribute("patient", p);
			}
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/jsp/patient_detail.jsp");
		rd.forward(req, resp);
	}

}
