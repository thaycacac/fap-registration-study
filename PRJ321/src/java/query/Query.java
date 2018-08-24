package query;

/**
 *
 * @author Thaycacac
 */
public class Query {

    public static String INSERT_STUDENT = "INSERT INTO Student(firstName, lastName, DOB, gender, address, telephone, email) VALUES (?, ?, ?, ?, ?, ?, ?)";
    public static String SELECT_LIST_STUDENT = "SELECT firstName, lastName, DOB, gender, cardNo, cardDate, cardPlace, address, telephone, email FROM Student";
}
