package dataobj;

import java.sql.Date;

/**
 *
 * @author Thaycacac
 */
public class Student {

    private int id;
    private String firstName;
    private String lastName;
    private Date DOB;
    private boolean gender;
    private int cardNo;
    private Date cardDate;
    private String cardPlace;
    private String address;
    private int telephone;
    private String email;
    private int specializedId;
    private int campusId;
    private int parentId;

    public Student() {
    }

    public Student(int id, String firstName, String lastName, Date DOB, 
            boolean gender, int cardNo, Date cardDate, String cardPlace, 
            String address, int telephone, String email, int specializedId, 
            int campusId, int parentId) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.DOB = DOB;
        this.gender = gender;
        this.cardNo = cardNo;
        this.cardDate = cardDate;
        this.cardPlace = cardPlace;
        this.address = address;
        this.telephone = telephone;
        this.email = email;
        this.specializedId = specializedId;
        this.campusId = campusId;
        this.parentId = parentId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Date getDOB() {
        return DOB;
    }

    public void setDOB(Date DOB) {
        this.DOB = DOB;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public int getCardNo() {
        return cardNo;
    }

    public void setCardNo(int cardNo) {
        this.cardNo = cardNo;
    }

    public Date getCardDate() {
        return cardDate;
    }

    public void setCardDate(Date cardDate) {
        this.cardDate = cardDate;
    }

    public String getCardPlace() {
        return cardPlace;
    }

    public void setCardPlace(String cardPlace) {
        this.cardPlace = cardPlace;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getTelephone() {
        return telephone;
    }

    public void setTelephone(int telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getSpecializedId() {
        return specializedId;
    }

    public void setSpecializedId(int specializedId) {
        this.specializedId = specializedId;
    }

    public int getCampusId() {
        return campusId;
    }

    public void setCampusId(int campusId) {
        this.campusId = campusId;
    }

    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }

}
