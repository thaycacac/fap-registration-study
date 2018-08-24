package dataobj;

import java.sql.Date;

/**
 *
 * @author Thaycacac
 */
public class AcademicStudent {

    private int studentId;
    private String rollNumber;
    private String oldRollNumber;
    private String memberCode;
    private Date enrollDate;
    private String mode;

    public AcademicStudent() {
    }

    public AcademicStudent(int studentId, String rollNumber, String oldRollNumber, String memberCode, Date enrollDate, String mode) {
        this.studentId = studentId;
        this.rollNumber = rollNumber;
        this.oldRollNumber = oldRollNumber;
        this.memberCode = memberCode;
        this.enrollDate = enrollDate;
        this.mode = mode;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public String getRollNumber() {
        return rollNumber;
    }

    public void setRollNumber(String rollNumber) {
        this.rollNumber = rollNumber;
    }

    public String getOldRollNumber() {
        return oldRollNumber;
    }

    public void setOldRollNumber(String oldRollNumber) {
        this.oldRollNumber = oldRollNumber;
    }

    public String getMemberCode() {
        return memberCode;
    }

    public void setMemberCode(String memberCode) {
        this.memberCode = memberCode;
    }

    public Date getEnrollDate() {
        return enrollDate;
    }

    public void setEnrollDate(Date enrollDate) {
        this.enrollDate = enrollDate;
    }

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

}
