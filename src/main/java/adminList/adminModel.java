package adminList;

public class adminModel {
	private int aid;
	private String name;
	private String gmail;
	private String password;
	private String phone;
	
	public adminModel(int aid, String name, String gmail, String password, String phone) {
		super();
		this.aid = aid;
		this.name = name;
		this.gmail = gmail;
		this.password = password;
		this.phone = phone;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGmail() {
		return gmail;
	}

	public void setGmail(String gmail) {
		this.gmail = gmail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
}
