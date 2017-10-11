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
		User user = new User("aklick_33@hotmail.com", "John", "Doe", "Hunter1");
		assertThat(user.getEmailAddress(), is("aklick_33@hotmail.com"));
		assertThat(user.getFirstName(), is("John"));
		assertThat(user.getLastName(), is("Doe"));
		assertThat(user.getPassword(), is("Hunter1"));
	}

	

}
