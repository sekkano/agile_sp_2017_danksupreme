/**
 * 
 */
package model;

/**
 * @author klicker
 *
 */
public class User {
	private final String emailAddress;
	private final String firstName;
	private final String lastName;
//	private final String userName;
//	private final String streetAddress;
//	private final String city;
//	private final String stateCode;
//	private final String phoneNumber;
	private final String password;
	
	public User(String firstName, String lastName, String emailAddress, String password) {
		this.emailAddress = emailAddress;
		this.firstName = firstName;
		this.lastName = lastName;
//		this.userName = userName;
//		this.streetAddress = streetAddress;
//		this.city = city;
//		this.stateCode = stateCode;
//		this.phoneNumber = phoneNumber;
		this.password = password;
	}

	public String getEmailAddress() {
		return emailAddress;
	}
	
	

	public String getFirstName() {
		return firstName;
	}



	public String getLastName() {
		return lastName;
	}



	public String getPassword() {
		return password;
	}
	
	

	@Override
	public String toString() {
		return "User [emailAddress=" + emailAddress + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", password=" + password + "]";
	}


}
