package exceptions;
 /**
 * @author klicker
 *
 */
public class CarPoolUserException extends Exception{

	private static final long serialVersionUID = -9016536599967409345L;

	public CarPoolUserException (final String message) {
		super(message);
	}
	
}
