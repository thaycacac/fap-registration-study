package dal;

import dataobj.AcademicStudent;
import db.DBContext;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Thaycacac
 */
public class AcademicStudentDAO {

    public AcademicStudent getAcademicStudent(int id) {
        Connection con = null;
        DBContext db = new DBContext();
        try {
            con = db.getConnection();
            Statement stmt = con.createStatement();
            String sql = "SELECT rollNumber, memberCode, enrollDate, mode FROM "
                    + "Academic_Student WHERE studentId = " + id;
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                String rollNumber = rs.getString(1);
                String memberCode = rs.getString(2);
                Date enrollDate = rs.getDate(3);
                String mode = rs.getString(4);
                AcademicStudent acds = new AcademicStudent(id, rollNumber, null,
                        memberCode, enrollDate, mode);
                return acds;
            }
            rs.close();
            stmt.close();
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

}
