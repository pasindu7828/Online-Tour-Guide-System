package booking;


public class BookModel implements Booking {

    // Private fields to ensure encapsulation
    private int id;
    private String name;
    private String email;
    private String mobile;
    private String nic;
    private String days;
    private String location;
    private String members;
    private String vehicle;
    private String from;
    private String to;
    private String comments;

   //constrctor
    public BookModel(int id, String name, String email, String mobile, String nic, String days, 
                     String location, String members, String vehicle, 
                     String from, String to, String comments) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.mobile = mobile;
        this.nic = nic;
        this.days = days;
        this.location = location;
        this.members = members;
        this.vehicle = vehicle;
        this.from = from;
        this.to = to;
        this.comments = comments;
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
    public String getName() {
        return name;
    }

    @Override
    public void setName(String name) {
        this.name = name;
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
    public String getMobile() {
        return mobile;
    }

    @Override
    public void setMobile(String mobile) {
        this.mobile = mobile;
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
    public String getDays() {
        return days;
    }

    @Override
    public void setDays(String days) {
        this.days = days;
    }

    @Override
    public String getLocation() {
        return location;
    }

    @Override
    public void setLocation(String location) {
        this.location = location;
    }

    @Override
    public String getMembers() {
        return members;
    }

    @Override
    public void setMembers(String members) {
        this.members = members;
    }

    @Override
    public String getVehicle() {
        return vehicle;
    }

    @Override
    public void setVehicle(String vehicle) {
        this.vehicle = vehicle;
    }

    @Override
    public String getFrom() {
        return from;
    }

    @Override
    public void setFrom(String from) {
        this.from = from;
    }

    @Override
    public String getTo() {
        return to;
    }

    @Override
    public void setTo(String to) {
        this.to = to;
    }

    @Override
    public String getComments() {
        return comments;
    }

    @Override
    public void setComments(String comments) {
        this.comments = comments;
    }
}