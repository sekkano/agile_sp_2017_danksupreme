/**
 * 
 */
package views;

/**
 * @author klicker
 *
 */
public class ErrorView {
	
	public static String buildHTML(final String errorMessage) {
		
		final StringBuilder out = new StringBuilder();
		
		out.append("<!Doctype html\n<html>\n<head>\n\t<title>Error Page</title>\n</head>\n<body>");
		out.append("<h1>Error Page</h1>\n");
		
		out.append("<%@ include file='includes/navigation.jsp' %>\n");
		
		out.append("\n\t<p>The file " + errorMessage + " does not exist.</p>");
		
		out.append("\n<%@ include file='includes/footer.jsp' %>\n</body>\n</html>");
		
		return out.toString();
	}

}
