package booking;

public interface Booking {

	int getId();
    void setId(int id);

    String getName();
    void setName(String name);

    String getEmail();
    void setEmail(String email);

    String getMobile();
    void setMobile(String mobile);

    String getNic();
    void setNic(String nic);

    String getDays();
    void setDays(String days);

    String getLocation();
    void setLocation(String location);

    String getMembers();
    void setMembers(String members);

    String getVehicle();
    void setVehicle(String vehicle);

    String getFrom();
    void setFrom(String from);

    String getTo();
    void setTo(String to);

    String getComments();
    void setComments(String comments);
	
}
