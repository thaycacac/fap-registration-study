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
public class AcademicDAO {

    public void insertStudent(String rollNumber, String memberCode,
            String mode, Date enrollDate, int studentId) {
        Connection con = null;
        DBContext db = new DBContext();
        try {
            con = db.getConnection();
            String sql = Query.INSERT_ACADEMIC_STUDENT;
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, rollNumber);
            stmt.setString(2, memberCode);
            stmt.setString(3, mode);
            stmt.setDate(4, enrollDate);
            stmt.setInt(5, studentId);
            stmt.executeUpdate();
            stmt.close();
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

}
