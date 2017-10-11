/**
 * 
 */
package utility;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

import model.User;

/**
 * @author klicker
 *
 */
public class WorkbookUtility {
	
public static final String INPUT_FILE = "/assets/spreadsheets/Users.xlsx";
	
	public static List<User> retrieveUsersFromWorkbook(final File inputFile) throws InvalidFormatException, IOException {
		final List<User> users = new ArrayList<>();
		
		final Workbook workbook = WorkbookFactory.create(inputFile);
		
		final Sheet sheet = workbook.getSheetAt(0);
		
		for (final Row row : sheet) {
			
			final Cell firstNameCell = row.getCell(0);
			final Cell lastNameCell = row.getCell(1);
			final Cell emailAddressCell = row.getCell(2);
			final Cell passwordCell = row.getCell(3);
			
			final User user = new User(
					firstNameCell.getStringCellValue().trim(),
					lastNameCell.getStringCellValue().trim(),
					emailAddressCell.getStringCellValue().trim(),
					passwordCell.getStringCellValue().trim());
			
			users.add(user);
					
		}
		
		return users;
	}
	
}

