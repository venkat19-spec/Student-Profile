package admin;

import misc.DBConnectivity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.Cookie;

@WebServlet(description = "Setup Faculty Account", urlPatterns = { "/admin/FacultyRegistration" })


public class FacReg extends HttpServlet {
	
	private static final long serialVersionUID = 101379795688571747L;
	private static String admin_cookie = "f07bf50b0455c2346f8883d7697a158b703338dddc3c7b4cd33e2c1b85df0711";

	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		boolean isAdmin = false;
		Cookie ck[] = req.getCookies();  
		for(int i=0;i<ck.length;i++){   
			if(ck[i].getName().equals("user_type") && ck[i].getValue().equals(admin_cookie)) {
				isAdmin = true;
			}
		}
		if(isAdmin) {
			req.getRequestDispatcher("/WEB-INF/admin/FacReg.jsp").forward(req, res);
		}
		else {
			req.setAttribute("error","Unauthorized access");
			req.getRequestDispatcher("../admin/LoginAdmin").forward(req, res);
		}
		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		boolean isAdmin = false;
		Cookie ck[] = req.getCookies();  
		for(int i=0;i<ck.length;i++){   
			if(ck[i].getName().equals("user_type") && ck[i].getValue().equals(admin_cookie)) {
				isAdmin = true;
			}
		}
		
		if(isAdmin) {
			String username = req.getParameter("fullname");
			String facID = req.getParameter("username");
			String email = req.getParameter("email");
			String phoneNo = req.getParameter("phoneno");
			String password1 = req.getParameter("pass1");
			
			String gender = req.getParameter("gender");
			String dept = req.getParameter("dept");		
			String year = req.getParameter("year");
			String section = req.getParameter("section");
			
			System.out.println("\nFaculty Form Details to be written into database:\n");
			System.out.println(username);
			System.out.println(facID);
			System.out.println(email);
			System.out.println(phoneNo);
			System.out.println(password1);
			
			System.out.println(gender);
			System.out.println(dept);
			System.out.println(year);
			System.out.println(section);
			System.out.println("\n");
			
			int status = -1;
			Connection con;
			
			try {
				con = DBConnectivity.initializeDatabase();
				PreparedStatement st = con.prepareStatement("INSERT INTO facultyregistration (FacultyID, FacultyName, FacEmail, FacPhoneNo, FacPassword, FacGender, FacDept, FacYear, FacSection) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);");
				
				st.setString(1, facID);
				st.setString(2, username);
				st.setString(3, email);
				st.setString(4, phoneNo);
				st.setString(5, password1);
				st.setString(6, gender);
				st.setString(7, dept);
				st.setString(8, year);
				st.setString(9, section);
				status = st.executeUpdate();
				
				con.close();
				st.close();
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(status>0) {
				getServletContext().setAttribute("message", "FACULTY account has been created for "+facID+" successfully!!");
				res.sendRedirect("../admin/Notifications");
			}
			else {
				getServletContext().setAttribute("message", "Some SQL error happened, please try again!");
				res.sendRedirect("../admin/Notifications");
			}
		}
		else {
			req.setAttribute("error","Unauthorized access");
			req.getRequestDispatcher("/WEB-INF/admin/adminLogin.jsp").forward(req, res);
		}
		
	}

}
