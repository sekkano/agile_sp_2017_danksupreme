/**
 * 
 */
package dao;

import java.util.List;

import model.User;

/**
 * @author klicker
 *
 */
public interface UserDao {
	
	void submitUserData(String filePath) throws Exception;
	
	List<User> retrieveUser() throws Exception;
	
	void insertUser(User user) throws Exception;

}
