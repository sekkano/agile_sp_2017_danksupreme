package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import model.User;


@WebServlet("/SubmitUserData")
public class SubmitUserDataServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String target = null;
		
		System.out.println("Stuff is happening");
		
		try {
			
			final String userEmailAddress = request.getParameter("userEmailAddress");
			final String userFirstName = request.getParameter("userFirstName");
			final String userLastName = request.getParameter("userLastName");
//			final String userUserName = request.getParameter("userUserName");
//			final String userStreetAddress = request.getParameter("userStreetAddress");
//			final String userCity = request.getParameter("userCity");
//			final String userStateCode = request.getParameter("userStateCode");
//			final String userPhoneNumber = request.getParameter("userPhoneNumber");
			final String userPassword = request.getParameter("userPassword").trim();
			final String userVerifyPassword = request.getParameter("userVerifyPassword").trim();
			
			if (userFirstName != null && !userFirstName.isEmpty() &&
				userLastName != null && !userLastName.isEmpty() &&
				userEmailAddress != null && !userEmailAddress.isEmpty() &&
//				userPhoneNumber != null && !userPhoneNumber.isEmpty() &&
				userPassword != null && !userPassword.isEmpty() &&
				userVerifyPassword != null && !userVerifyPassword.isEmpty()) {
				
				if (userPassword.equals(userVerifyPassword)) {
					final User user = new User(userEmailAddress, userFirstName, userLastName, userPassword);
					
					final UserDao userDao = new UserDaoImpl();
					userDao.insertUser(user);
					
					
					request.setAttribute("success", "Thanks " + userFirstName + " " + userLastName + " for joining!");
					target = "success.jsp";
				} else {
					request.setAttribute("error", "The passwords entered do not match.");
					System.out.println(userPassword + " - " + userVerifyPassword);
					target = "error.jsp";
					
				}
			} else {
				request.setAttribute("error", "Sorry, you must complete all fields.");
				target = "error.jsp";
			}
			
			
		} catch (final Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Sorry, there was a problem submitting your information.");
			target = "error.jsp";
		}
		
		request.getRequestDispatcher(target).forward(request, response);
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
	}
}
