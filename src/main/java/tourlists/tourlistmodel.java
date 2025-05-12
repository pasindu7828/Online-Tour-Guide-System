package tourlists;


public class tourlistmodel implements TourList {

    // Private attributes for encapsulation
    private int tid;              // Tour ID (primary key)
    private String name;          // Name of the tour guide
    private String age;           // Age of the tour guide
    private String email;         // Email of the tour guide
    private String phoneno;       // Phone number of the tour guide
    private String language;      // Languages spoken by the tour guide
    private String duration;      // Duration of the tour
    private String price;         // Price of the tour
    private String description;   // Description of the tour

    // parameterize constructor
    public tourlistmodel(int tid, String name, String age, String email, String phoneno, 
                         String language, String duration, String price, String description) {
        this.tid = tid;
        this.name = name;
        this.age = age;
        this.email = email;
        this.phoneno = phoneno;
        this.language = language;
        this.duration = duration;
        this.price = price;
        this.description = description;
    }

    // Getter and Setter Methods

    @Override
    public int getTid() {
        return tid; // Return the tour ID
    }

    @Override
    public void setTid(int tid) {
        this.tid = tid; // Set the tour ID
    }

    @Override
    public String getName() {
        return name; // Return the name of the tour guide
    }

    @Override
    public void setName(String name) {
        this.name = name; // Set the name of the tour guide
    }

    @Override
    public String getAge() {
        return age; // Return the age of the tour guide
    }

    @Override
    public void setAge(String age) {
        this.age = age; // Set the age of the tour guide
    }

    @Override
    public String getEmail() {
        return email; // Return the email of the tour guide
    }

    @Override
    public void setEmail(String email) {
        this.email = email; // Set the email of the tour guide
    }

    @Override
    public String getPhoneno() {
        return phoneno; // Return the phone number of the tour guide
    }

    @Override
    public void setPhoneno(String phoneno) {
        this.phoneno = phoneno; // Set the phone number of the tour guide
    }

    @Override
    public String getLanguage() {
        return language; // Return the languages spoken by the tour guide
    }

    @Override
    public void setLanguage(String language) {
        this.language = language; // Set the languages spoken by the tour guide
    }

    @Override
    public String getDuration() {
        return duration; // Return the duration of the tour
    }

    @Override
    public void setDuration(String duration) {
        this.duration = duration; // Set the duration of the tour
    }

    @Override
    public String getPrice() {
        return price; // Return the price of the tour
    }

    @Override
    public void setPrice(String price) {
        this.price = price; // Set the price of the tour
    }

    @Override
    public String getDescription() {
        return description; // Return the tour description
    }

    @Override
    public void setDescription(String description) {
        this.description = description; // Set the tour description
    }
}
