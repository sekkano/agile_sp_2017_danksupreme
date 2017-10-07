/**
 * 
 */
package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import edu.cvtc.web.dao.MovieDao;
import edu.cvtc.web.dao.impl.MovieDaoImpl;
import edu.cvtc.web.model.Movie;
import model.User;

/**
 * @author klicker
 *
 */

@WebServlet("/SubmitUserData")
public class SubmitUserDataServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String target = null;
		try {
			
			final String userEmailAddress = request.getParameter("userEmailAddress");
			final String userFirstName = request.getParameter("userFirstName");
			final String userLastName = request.getParameter("userLastName");
			final String userUserName = request.getParameter("userUserName");
			final String userStreetAddress = request.getParameter("userStreetAddress");
			final String userCity = request.getParameter("userCity");
			final String userStateCode = request.getParameter("userStateCode");
			final String userPhoneNumber = request.getParameter("userPhoneNumber");
			final String userPassword = request.getParameter("userPassword");
			final String verifyUserPassword = request.getParameter("verifyUserPassword");
			
			if (userEmailAddress != null && !userEmailAddress.isEmpty() && userFirstName != null && !userFirstName.isEmpty()
				+ userLastName != null && !userLastName.isEmpty() && userPhoneNumber != null && !userPhoneNumber.isEmpty()
				+ userPassword != null && !userPassword.isEmpty() && verifyUserPassword != null && !verifyUserPassword.isEmpty()) {
				
				if (userPassword == verifyUserPassword) {
					final User user = new User(userFirstName, userLastName, userUserName, userStreetAddress, userCity, userStateCode, userPhoneNumber, userEmailAddress, userPassword)
				} else {
					
				}
			}
			
			final UserDao userDao = new UserDaoImpl();
			
			userDao.submitUserData(filePath);
			
		} catch (final Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Sorry, there was a problem populating the database");
			target = "error.jsp";
		}
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}






try {

	final String title = request.getParameter("title");
	final String director = request.getParameter("director");
	final int lengthInMinutes = Integer.parseInt(request.getParameter("lengthInMinutes"));
	
	if (null != title && !title.isEmpty() && null != director && !director.isEmpty() && lengthInMinutes != 0) {
		
		final Movie movie = new Movie(title, director, lengthInMinutes);
		
		final MovieDao movieDao = new MovieDaoImpl();
		movieDao.insertMovie(movie);
		
		request.setAttribute("success", "Success, a new movie has been added to the database.");
		target = "success.jsp";
		
	} else {
		request.setAttribute("error", "Sorry, you must complete all fields to add a new movie to the database.");
		target = "error.jsp";
	}
	
	
} catch (final Exception e) {
	e.printStackTrace();
	request.setAttribute("error", "Sorry, there was a problem adding this movie to the database");
	target = "error.jsp";
}

request.getRequestDispatcher(target).forward(request, response);