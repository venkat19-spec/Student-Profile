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


@WebServlet(description = "Setup Student Account", urlPatterns = { "/admin/StudentRegistration" })
public class StudReg extends HttpServlet {

	private static final long serialVersionUID = 7055996261533266265L;
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
			req.getRequestDispatcher("/WEB-INF/admin/StudReg.jsp").forward(req, res);
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
			String studID = req.getParameter("username");
			String email = req.getParameter("email");
			String phoneNo = req.getParameter("phoneno");
			String password1 = req.getParameter("pass1");
			String gender = req.getParameter("gender");
			System.out.println("\nStudent Form Details to be written into database:\n");
			System.out.println(username);
			System.out.println(studID);
			System.out.println(email);
			System.out.println(phoneNo);
			System.out.println(password1);
			System.out.println(gender);
			System.out.println("\n");
			int status = -1;
			Connection con;
			try {
				con = DBConnectivity.initializeDatabase();
				PreparedStatement st = con.prepareStatement("INSERT INTO studentregistration (RollNo, StudentName, Email, PhoneNo, Password, Gender) VALUES (?,?,?,?,?,?);");
				
				
				st.setString(1,studID);
				st.setString(2,username);
				st.setString(3,email);
				st.setString(4,phoneNo);
				st.setString(5,password1);
				st.setString(6, gender);
				
				
				status = st.executeUpdate();
				st.close();
			} catch (ClassNotFoundException | SQLException e) {
				
				e.printStackTrace();
			}
			if(status>0) {
				getServletContext().setAttribute("message", "STUDENT account has been created for "+studID+" successfully!!");
				res.sendRedirect("../admin/Notifications");
			}
			else {
				getServletContext().setAttribute("message", "Some SQL error happened, PLEASE TRY AGAIN!");
				res.sendRedirect("../admin/Notifications");
			}		
		}
		
		else {
			req.setAttribute("error","Unauthorized access");
			req.getRequestDispatcher("/WEB-INF/admin/adminLogin.jsp").forward(req, res);
		}
		
	}
	
}

