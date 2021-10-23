package admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javax.servlet.http.Cookie;


@WebServlet("/admin/LoginAdmin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1700635895394014993L;
	
	private static String admin_cookie = "f07bf50b0455c2346f8883d7697a158b703338dddc3c7b4cd33e2c1b85df0711";
	private static String username_main = "Root";
	private static String password_main = "password";
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB-INF/admin/adminLogin.jsp").forward(req, res);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		if (username.equals(username_main) && password.equals(password_main)) {
			res.addCookie(new Cookie("user_type", admin_cookie));
			res.addCookie(new Cookie("user_name","admin"));
			res.sendRedirect("../admin/AdminDashboard");	
		} 
		
		
		else {
			req.setAttribute("error","Wrong Username and/or Password!!");
			req.getRequestDispatcher("/WEB-INF/admin/adminLogin.jsp").forward(req, res);
		}
		
		
	}

}
