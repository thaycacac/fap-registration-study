package dal;

import dataobj.Student;
import db.DBContext;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import query.Query;

/**
 *
 * @author Thaycacac
 */
public class StudentDAO {

    public void insertStudent(String firstName, String lastName, String DOB,
            int gender, String address, String telephone, String email,
            int specializedId, int campusId) {
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
            stmt.setInt(8, specializedId);
            stmt.setInt(9, campusId);
            stmt.executeUpdate();
            stmt.close();
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public ArrayList<Student> getListStudentRegister() {
        Connection con = null;
        DBContext db = new DBContext();
        ArrayList<Student> listStudent = new ArrayList<>();
        try {
            con = db.getConnection();
            Statement stmt = con.createStatement();
            String sql = Query.SELECT_LIST_STUDENT;
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt(1);
                String firstName = rs.getString(2);
                String lastName = rs.getString(3);
                Date DOB = rs.getDate(4);
                boolean gender = rs.getBoolean(5);
                int cardNo = rs.getInt(6);
                Date cardDate = rs.getDate(7);
                String cardPlace = rs.getString(8);
                String address = rs.getString(9);
                int telephone = rs.getInt(10);
                String email = rs.getString(11);
                int specializedId = rs.getInt(12);
                int campusId = rs.getInt(13);

                Student std = new Student(id, firstName, lastName, DOB, gender,
                        cardNo, cardDate, cardPlace, address, telephone, email,
                        specializedId, campusId, 0);
                listStudent.add(std);
            }
            rs.close();
            stmt.close();
            con.close();
            return listStudent;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public Student getStudentById(int id) {
        Connection con = null;
        DBContext db = new DBContext();
        ArrayList<Student> listStudent = new ArrayList<>();
        try {
            con = db.getConnection();
            Statement stmt = con.createStatement();
            String sql = "SELECT firstName, lastName, DOB, gender, cardNo, "
                    + "cardDate, cardPlace, address, telephone, email, "
                    + "specializedId, campusId FROM "
                    + "Student WHERE id = '" + id + "'";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                String firstName = rs.getString(1);
                String lastName = rs.getString(2);
                Date DOB = rs.getDate(3);
                boolean gender = rs.getBoolean(4);
                int cardNo = rs.getInt(5);
                Date cardDate = rs.getDate(6);
                String cardPlace = rs.getString(7);
                String address = rs.getString(8);
                int telephone = rs.getInt(9);
                String email = rs.getString(10);
                int specializedId = rs.getInt(11);
                int campusId = rs.getInt(12);

                Student std = new Student(id, firstName, lastName, DOB, gender,
                        cardNo, cardDate, cardPlace, address, telephone, email,
                        specializedId, campusId, 0);
                listStudent.add(std);
                return std;
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
