package tourlists;

public interface TourList {

	int getTid(); // Get tour ID
    void setTid(int tid); // Set tour ID

    String getName(); // Get name of the tour guide
    void setName(String name); // Set name of the tour guide

    String getAge(); // Get age of the tour guide
    void setAge(String age); // Set age of the tour guide

    String getEmail(); // Get email of the tour guide
    void setEmail(String email); // Set email of the tour guide

    String getPhoneno(); // Get phone number of the tour guide
    void setPhoneno(String phoneno); // Set phone number of the tour guide

    String getLanguage(); // Get languages spoken by the tour guide
    void setLanguage(String language); // Set languages spoken by the tour guide

    String getDuration(); // Get duration of the tour
    void setDuration(String duration); // Set duration of the tour

    String getPrice(); // Get price of the tour
    void setPrice(String price); // Set price of the tour

    String getDescription(); // Get tour description
    void setDescription(String description); // Set tour description
	
}
