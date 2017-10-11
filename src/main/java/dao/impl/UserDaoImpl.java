/**
 * 
 */
package dao.impl;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dao.UserDao;
import model.User;
import utility.DBUtility;
import utility.WorkbookUtility;

public class UserDaoImpl implements UserDao {
	
	private static final String DROP_TABLE_USERS = "DROP TABLE IF EXISTS Users";
	private static final String CREATE_TABLE_USERS = "CREATE TABLE Users ("
			+ "userID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,"
			+ "firstName varchar(25) DEFAULT NULL,"
			+ "lastName varchar(25) DEFAULT NULL,"
//			+ "`userName` varchar(25) DEFAULT NULL,"
//			+ "`address` text,"
//			+ "`city` text,"
//			+ "`stateCode` varchar(2) DEFAULT NULL,"
//			+ "`phoneNumber` varchar(12) DEFAULT NULL,"
			+ "emailAddress varchar(45) DEFAULT NULL,"
			+ "password varchar(45) DEFAULT NULL);";
//			+ "PRIMARY KEY (`UserID`),"
//			+ "UNIQUE KEY `userID_UNIQUE` (`UserID`)) "
//			+ "ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;";
	private static final String SELECT_ALL_FROM_USERS = "SELECT * FROM Users";
			
	
  @Override
  public void populate(String filePath) throws Exception {
	  
	  final Connection connection = DBUtility.createConnection();
	  final Statement statement = connection.createStatement();
	  
	  	try {
	  		statement.setQueryTimeout(DBUtility.TIMEOUT);
	  		statement.executeUpdate(DROP_TABLE_USERS);
	  		statement.executeUpdate(CREATE_TABLE_USERS);
	  		
	  		final File inputFile = new File(filePath);
	  		final List<User> users = WorkbookUtility.retrieveUsersFromWorkbook(inputFile);
	  		
	  		for (final User user : users) {
	  			final String insertValues = "insert into Users (firstName, lastName, emailAddress, password"
	  					+ "values ('" + user.getFirstName() + "', '"
	  					+ user.getLastName() + "', '"
	  					+ user.getEmailAddress() + "', '"
	  					+ user.getPassword() + "');";
	  			
	  			System.out.println(insertValues);
	  			
	  			statement.executeUpdate(insertValues);
	  		}
	  	} finally {
	  		DBUtility.closeConnections(connection, statement);
	  	}
  }
  
  @Override
  public List<User> retrieveUsers() throws Exception {
	  System.out.println("retrive users");
	  final List<User> users = new ArrayList<>();
		
	  final Connection connection = DBUtility.createConnection();
	  final Statement statement = connection.createStatement();
		
	  try{
		  statement.setQueryTimeout(DBUtility.TIMEOUT);
		
		  final ResultSet resultSet = statement.executeQuery(SELECT_ALL_FROM_USERS);
			
		  while (resultSet.next()) {
			  final String firstName = resultSet.getString("firstName");
			  final String lastName = resultSet.getString("lastName");
			  final String emailAddress = resultSet.getString("emailAddress");
			  final String password = resultSet.getString("password");
			  
			  final User user = new User(firstName, lastName, emailAddress, password);
			  users.add(user);
		  }
			
		  resultSet.close();
	  } finally {
		  DBUtility.closeConnections(connection, statement);
	  }
	  System.out.println(users);
	  return users;
  }

  @Override
  public void insertUser(final User user) throws Exception {
		
	  Connection connection = null;
	  PreparedStatement insertStatement = null;
	  
	  
	  
	  try {
			
		  connection = DBUtility.createConnection();
		  
		  System.out.println("It made it past the connection");
			
		  final String insertValues = "insert into Users (firstName, lastName, emailAddress, password) values (?,?,?,?)";
		  insertStatement = connection.prepareStatement(insertValues);
		  
		  System.out.println("It even made it past the insertvalues!");
			
		  insertStatement.setString(1, user.getFirstName());
		  insertStatement.setString(2, user.getLastName());
		  insertStatement.setString(3, user.getEmailAddress());
		  insertStatement.setString(4, user.getPassword());
		  
			
		  insertStatement.setQueryTimeout(DBUtility.TIMEOUT);
		  insertStatement.executeUpdate();
		  
		  System.out.println("Holy S**t, it actually inserted!");
			
	  } finally {
		  DBUtility.closeConnections(connection, insertStatement);
	  }
		
  }

}
