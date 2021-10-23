package misc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.Cookie;


@WebServlet(
		description = "Logging out of all user accounts - Admin, Student", 
		urlPatterns = { 
				"/admin/Logout", 
				"/student/Logout"
		})


public class Logout extends HttpServlet {
	private static final long serialVersionUID = 8360415648756682270L;
	
	private static String admin_cookie = "f07bf50b0455c2346f8883d7697a158b703338dddc3c7b4cd33e2c1b85df0711";

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		Cookie[] cookies = req.getCookies();
		String user_type = "";
		if (cookies != null)
			for (Cookie cookie : cookies) {
				
				if(cookie.getName().equals("user_type")) {
					
	        		if(cookie.getValue().equals(admin_cookie)) {
		        		user_type = "admin";
		        	}
	        		cookie.setValue("");
	        		cookie.setMaxAge(0);
	        		res.addCookie(cookie);
	        		
	        	}
		
	        }
		if(!user_type.equals("")) {
	    	req.setAttribute("logout_msg", "You have been logged out successfully!");
	    	req.getRequestDispatcher("/WEB-INF/admin/adminLogin.jsp").forward(req, res);
	    }
	    else {
	    	req.setAttribute("error","Unauthorized access");
			req.getRequestDispatcher("/WEB-INF/admin/adminLogin.jsp").forward(req, res);
	    }

   }
	
}
