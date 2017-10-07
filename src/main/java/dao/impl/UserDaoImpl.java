/**
 * 
 */
package dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import dao.UserDao;
import model.User;
import utility.DBUtility;
import utility.ScriptRunner;



/**
 * @author klicker
 *
 */


public class UserDaoImpl implements UserDao {
	
	
	private FilePath filePath = "CVCP_DB.sql";
	private Connection connect = null;
	private Statement statement = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;
	
	public void createNewDatabase(String filePath) throws Exception {
		
		Connection connection = DBUtility.createConnection();
		ScriptRunner scriptRunner = new ScriptRunner(connection, true, true);
		final Statement statement = connection.createStatement();
		
		statement.setQueryTimeout(DBUtility.TIMEOUT);
		
		
		Connection connection = null;
		PreparedStatement insertStatement = null;
		


	@Override
	public void submitUserData(String filePath) throws Exception {
		
		Connection connection = DBUtility.createConnection();
			//TODO
		final String insertValues = "insert into movies (title, director, lengthInMinutes) values (?,?,?)";
		insertStatement = connection.prepareStatement(insertValues);
		
		//TODO
		insertStatement.setString(1, movie.getTitle());
		insertStatement.setString(2, movie.getDirector());
		insertStatement.setInt(3, movie.getLengthInMinutes());
			
		insertStatement.setQueryTimeout(DBUtility.TIMEOUT);
			
		insertStatement.executeUpdate();

		DBUtility.closeConnections(connection, insertStatement);
		

		
	}


	@Override
	public List<User> retrieveUser() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void insertUser(User user) throws Exception {
		// TODO Auto-generated method stub
		
	}
	

}
