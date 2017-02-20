package com.hospital;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.model.Doctor;
import com.hospital.model.Hospital;
import com.hospital.model.Patient;

public class HospitalUtil {

	public static List<Patient> patients = new ArrayList<>();

	static {

		List<Doctor> doctors = new ArrayList<>();

		Doctor d = new Doctor();
		d.setId(1);
		d.setName("Ramesh");
		d.setSpecialization("Ortho");

		doctors.add(d);
		Hospital h = new Hospital();
		h.setId(1);
		h.setName("Prasanth Hospital");

		d.setHospital(h);

		Patient p = new Patient();
		p.setId(1001);
		p.setName("Virat");
		p.setAge(26);
		p.setWeight(67);
		p.setDoctor(d);
		p.setImageUrl("http://p.imgci.com/db/PICTURES/CMS/205200/205283.1.jpg");

		Patient p2 = new Patient();
		p2.setId(1002);
		p2.setName("Viru");
		p2.setAge(26);
		p2.setWeight(67);
		p2.setDoctor(d);
		p2.setImageUrl(
				"http://images.iimg.in/c/54c1285ae3eed475a739ff66-4-501-0-1421944925/viru-bhai-j6jot6.img?crop=1");

		Patient p3 = new Patient();
		p3.setId(1003);
		p3.setName("Vimal");
		p3.setAge(26);
		p3.setWeight(67);
		p3.setDoctor(d);
		p3.setImageUrl("http://www.cinepunch.in/wp-content/uploads/2016/04/Vimal-Stills-8.jpg");

		patients.add(p);
		patients.add(p2);
		patients.add(p3);
	}

	public static int getIdFromString(String input) {
		int id = -1;
		try {
			id = Integer.parseInt(input);
		} catch (Exception ex) {
			id = -1;
		}
		return id;
	}

	public static void isUserAuthenticated(HttpServletRequest req, HttpServletResponse resp, ServletContext context)
			throws ServletException, IOException {
		
		
		boolean userAuthenticated = false;
		
		HttpSession session = req.getSession();
		String user = (String)session.getAttribute("user");
		
		if(user != null){
			userAuthenticated = true;
		}
		
		/*Cookie[] arr = req.getCookies();
		if (arr != null){
			for (Cookie cookie : arr) {
				if (cookie.getName().equals("userLoggedIn")) {
					if (cookie.getValue().equals("true")) {
						userAuthenticated = true;
					}
				}
			}
		}*/

		if (!userAuthenticated) {
			RequestDispatcher rd = context.getRequestDispatcher("/jsp/login.jsp");
			rd.forward(req, resp);
		}
	}
}
