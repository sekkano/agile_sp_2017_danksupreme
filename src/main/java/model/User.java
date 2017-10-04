/**
 * 
 */
package model;

/**
 * @author klicker
 *
 */
public class User {
	
	private final int userID;
	private final String firstName;
	private final String lastName;
	private final String userName;
	private final String streetAddress;
	private final String city;
	private final String stateCode;
	private final String phoneNumber;
	private final String emailAddress;
	
	public User(int userID, String firstName, String lastName, String userName, String streetAddress, String city, String stateCode, String phoneNumber, String emailAddress) {
		this.userID = userID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.streetAddress = streetAddress;
		this.city = city;
		this.stateCode = stateCode;
		this.phoneNumber = phoneNumber;
		this.emailAddress = emailAddress;
	}

	
	
	public int getUserID() {
		return userID;
	}



	public String getFirstName() {
		return firstName;
	}



	public String getLastName() {
		return lastName;
	}



	public String getUserName() {
		return userName;
	}



	public String getStreetAddress() {
		return streetAddress;
	}



	public String getCity() {
		return city;
	}



	public String getStateCode() {
		return stateCode;
	}



	public String getPhoneNumber() {
		return phoneNumber;
	}



	public String getEmailAddress() {
		return emailAddress;
	}



	@Override
	public String toString() {
		return "User [userID=" + userID + ", firstName=" + firstName + ", lastName=" + lastName + ", userName="
				+ userName + ", streetAddress=" + streetAddress + ", city=" + city + ", stateCode=" + stateCode
				+ ", phoneNumber=" + phoneNumber + ", emailAddress=" + emailAddress + "]";
	}

}
