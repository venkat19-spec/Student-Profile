package admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(description = "Messages regarding account creation, updation", urlPatterns = { "/admin/Notifications" })
public class Notifications extends HttpServlet {
	private static final long serialVersionUID = 4248801557964766230L;
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
			req.getRequestDispatcher("/WEB-INF/admin/Notifications.jsp").forward(req, res);
		}
		else {
			req.setAttribute("error","Unauthorized access");
			req.getRequestDispatcher("../admin/LoginAdmin").forward(req, res);
		}
	}

	
}
