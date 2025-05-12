package ManageUsers;

public class UserModel implements UserInterface{
	
	// Private fields (attributes)
    private int uid;
    private String name;
    private String email;
    private String password;
    private String phone;

    // Constructor to initialize the UserModel object
    public UserModel(int uid, String name, String email, String password, String phone) {
        this.uid = uid;
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;
    }

    // Overriding the methods from UserInterface
    @Override
    public int getUid() {
        return uid;
    }

    @Override
    public void setUid(int uid) {
        this.uid = uid;
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
    public String getPassword() {
        return password;
    }

    @Override
    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String getPhone() {
        return phone;
    }

    @Override
    public void setPhone(String phone) {
        this.phone = phone;
    }
	
	
}
