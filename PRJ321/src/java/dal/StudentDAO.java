package dal;

import db.DBContext;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import query.Query;

/**
 *
 * @author Thaycacac
 */
public class StudentDAO {

    public void insertStudent(String firstName, String lastName, String DOB,
            int gender, String address, String telephone, String email) {
        Connection con = null;
        DBContext db = new DBContext();
        try {
            con = db.getConnection();
            String sql = Query.INSERT_STUDENT;
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, firstName);
            stmt.setString(2, lastName);
            stmt.setString(3, DOB);
            stmt.setInt(4, gender);
            stmt.setString(5, address);
            stmt.setString(6, telephone);
            stmt.setString(7, email);
            stmt.executeUpdate();
            stmt.close();
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
