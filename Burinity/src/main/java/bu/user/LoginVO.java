package bu.user;

import org.springframework.stereotype.Repository;

@Repository
public class LoginVO {

	 	private String userid;
	    private String userpass;
	    private String remember;
	    
		public String getRemember() {
			return remember;
		}
		public void setRemember(String remember) {
			this.remember = remember;
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
	    
}
