package servlets;

import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import model.User;

import javax.servlet.http.Cookie;

/**
 * Servlet implementation class ViewUser
 */
@WebServlet("/ViewUser")
public class ViewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewUser() {
        super();

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String target = "user.jsp";
		System.out.println("Hello from View User");
		
		PrintWriter out = response.getWriter();
		//Cookie[]
		try {
			final UserDao user = new UserDaoImpl();
			final List<User> users = user.retrieveUsers();
			
			request.setAttribute("users", users);
			target = "user.jsp";
			
			// Grabs the cookie we set in SubmitUserDataServlet as an array
			// and prints it out.
			Cookie[] cookies = request.getCookies();
			for (Cookie cookie : cookies) {
				if("userCookies".equals(cookie.getName())) {
					System.out.println("User Name: " + cookie.getValue());
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "There was an error");
		}
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher(target).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
