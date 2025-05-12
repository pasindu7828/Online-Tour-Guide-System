package tourpackage;

public interface Payment {

	int getId(); 
    void setId(int id);

    String getCardno();
    void setCardno(String cardno);

    String getCardholder();
    void setCardholder(String cardholder);

    String getMonth();
    void setMonth(String month);

    String getYear();
    void setYear(String year);

    String getCvv();
    void setCvv(String cvv);

    String getFullname();
    void setFullname(String fullname);

    String getNic();
    void setNic(String nic);

    String getMobileno();
    void setMobileno(String mobileno);

    String getEmail();
    void setEmail(String email);

    String getAddress();
    void setAddress(String address);

    String getPostalcode();
    void setPostalcode(String postalcode);

    String getDistrict();
    void setDistrict(String district);

    String getCountry();
    void setCountry(String country);
	
}
