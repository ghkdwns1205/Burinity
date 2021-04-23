package bu.user;

import org.springframework.stereotype.Repository;

@Repository
public class UserVO {

	private int authority;
	private String userid;
	private String userpass;
	private String name;
	private String email;
	private String gender;
	private String regdate;
	private String category;
	private String flag;
	
	public UserVO() {
		
	}

	public UserVO(String userid, String userpass, String name, String email, String gender, String category) {
		this.userid = userid;
		this.userpass = userpass;
		this.name = name;
		this.email = email;
		this.gender = gender;
		this.category = category;
		
	}

	public int getAuthority() {
		return authority;
	}

	public void setAuthority(int authority) {
		this.authority = authority;
	}

	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpass() {
		return userpass;
	}
	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	
}
