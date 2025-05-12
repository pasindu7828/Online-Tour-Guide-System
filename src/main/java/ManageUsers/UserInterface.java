package ManageUsers;

public interface UserInterface {

	// Method signatures only (no logic inside)

    int getUid();
    void setUid(int uid);

    String getName();
    void setName(String name);

    String getEmail();
    void setEmail(String email);

    String getPassword();
    void setPassword(String password);

    String getPhone();
    void setPhone(String phone);
    
}
