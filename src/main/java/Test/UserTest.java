/**
 * 
 */
package Test;
import model.User;
import static org.junit.Assert.*;

import org.junit.Test;

import static org.hamcrest.CoreMatchers.is;
/**
 * @author klicker
 *
 */
public class UserTest {
	
	@Test
	public void userCreateTest() {
		User user = new User(6, "John", "Doe", "JDoe", "1803 8th Street", "Eau Claire", "WI", "7153130393", "aklick_33@hotmail.com");
		assertThat(user.getUserID(), is(6));
		assertThat(user.getFirstName(), is("John"));
		assertThat(user.getLastName(), is("Doe"));
		assertThat(user.getUserName(), is("JDoe"));
		assertThat(user.getStreetAddress(), is("1803 8th Street"));
		assertThat(user.getCity(), is("Eau Claire"));
		assertThat(user.getStateCode(), is("WI"));
		assertThat(user.getPhoneNumber(), is("7153130393"));
		assertThat(user.getEmailAddress(), is("aklick_33@hotmail.com"));
		
	}

	

}
