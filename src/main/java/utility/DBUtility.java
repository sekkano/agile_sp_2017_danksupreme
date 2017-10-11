/**
 * 
 */
package utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author klicker
 *
 */
public class DBUtility {
	
	public static final int TIMEOUT = 20;

	private static final String CONNECTION = "jdbc:mysql://localhost:3306/ChippewaValleyCarpool";
	private static final String DRIVER_NAME = "com.mysql.jdbc.Driver";
	
	final static String user = "root";
    final static String password = "dude";
	
	public static Connection createConnection() throws ClassNotFoundException, SQLException {
		
		System.out.println("We are trying to connect to the world...");
		
		Class.forName(DRIVER_NAME);
		
		return DriverManager.getConnection(CONNECTION, user, password);
	}

	public static void closeConnections(final Connection connection, final Statement statement) {
		System.out.println("Now we are trying to close the connection.");

		try {
			if (null != connection) {
				connection.close();
				System.out.println("Connection closed");
			}
			if (null != statement) {
				System.out.println("Statement closed");
				statement.close();
			}
		} catch (final SQLException e) {
			e.printStackTrace();
		}
		
	}
}
