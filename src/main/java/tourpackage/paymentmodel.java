package tourpackage;

public class paymentmodel implements Payment {

    // Private fields to encapsulate data
    private int id;
    private String cardno;
    private String cardholder;
    private String month;
    private String year;
    private String cvv;
    private String fullname;
    private String nic;
    private String mobileno;
    private String email;
    private String address;
    private String postalcode;
    private String district;
    private String country;

    //constructer
    public paymentmodel(int id, String cardno, String cardholder, String month, String year, 
                        String cvv, String fullname, String nic, String mobileno, 
                        String email, String address, String postalcode, 
                        String district, String country) {
        this.id = id;
        this.cardno = cardno;
        this.cardholder = cardholder;
        this.month = month;
        this.year = year;
        this.cvv = cvv;
        this.fullname = fullname;
        this.nic = nic;
        this.mobileno = mobileno;
        this.email = email;
        this.address = address;
        this.postalcode = postalcode;
        this.district = district;
        this.country = country;
    }

    // Getter and Setter Implementations for all attributes

    @Override
    public int getId() {
        return id;
    }

    @Override
    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String getCardno() {
        return cardno;
    }

    @Override
    public void setCardno(String cardno) {
        this.cardno = cardno;
    }

    @Override
    public String getCardholder() {
        return cardholder;
    }

    @Override
    public void setCardholder(String cardholder) {
        this.cardholder = cardholder;
    }

    @Override
    public String getMonth() {
        return month;
    }

    @Override
    public void setMonth(String month) {
        this.month = month;
    }

    @Override
    public String getYear() {
        return year;
    }

    @Override
    public void setYear(String year) {
        this.year = year;
    }

    @Override
    public String getCvv() {
        return cvv;
    }

    @Override
    public void setCvv(String cvv) {
        this.cvv = cvv;
    }

    @Override
    public String getFullname() {
        return fullname;
    }

    @Override
    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    @Override
    public String getNic() {
        return nic;
    }

    @Override
    public void setNic(String nic) {
        this.nic = nic;
    }

    @Override
    public String getMobileno() {
        return mobileno;
    }

    @Override
    public void setMobileno(String mobileno) {
        this.mobileno = mobileno;
    }

    @Override
    public String getEmail() {
        return email;
    }

    @Override
    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String getAddress() {
        return address;
    }

    @Override
    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String getPostalcode() {
        return postalcode;
    }

    @Override
    public void setPostalcode(String postalcode) {
        this.postalcode = postalcode;
    }

    @Override
    public String getDistrict() {
        return district;
    }

    @Override
    public void setDistrict(String district) {
        this.district = district;
    }

    @Override
    public String getCountry() {
        return country;
    }

    @Override
    public void setCountry(String country) {
        this.country = country;
    }
}