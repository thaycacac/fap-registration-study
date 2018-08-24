package dataobj;

/**
 *
 * @author Thaycacac
 */
public class Specialized {

    private String nameSpecialized;
    private String code;

    public Specialized() {
    }

    public Specialized(String nameSpecialized, String code) {
        this.nameSpecialized = nameSpecialized;
        this.code = code;
    }

    public String getNameSpecialized() {
        return nameSpecialized;
    }

    public void setNameSpecialized(String nameSpecialized) {
        this.nameSpecialized = nameSpecialized;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

}
