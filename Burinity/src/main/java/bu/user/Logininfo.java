package bu.user;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class Logininfo  {
	
	
	public void info(HttpServletRequest req, String access_token)
			throws ServletException, IOException, ParseException {

		
		System.out.println("로그인인포@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		String reqURL = "https://openapi.naver.com/v1/nid/me";

		try {
			URL url = new URL(reqURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("Authorization", "Bearer " + access_token);
			int responseCode = con.getResponseCode();
			BufferedReader br;
			System.out.print("responseCode=" + responseCode);
			if (responseCode == 200) {
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else {
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}
			String inputLine;
			StringBuffer res = new StringBuffer();
			while ((inputLine = br.readLine()) != null) {
				res.append(inputLine);
				System.out.println(inputLine);
			}
			br.close();

			String name = "";
			String email = "";
			String nickname = "";
			String gender = "";

			if (responseCode == 200) {
				System.out.println(res.toString());
				JSONParser parsing = new JSONParser();
				Object obj = parsing.parse(res.toString());

				JSONObject jsonObj = (JSONObject) obj;

				JSONObject response = (JSONObject) obj;
				response = (JSONObject) jsonObj.get("response");

				nickname = (String) response.get("id");
				name = (String) response.get("name");
				email = (String) response.get("email");
				gender = (String) response.get("gender");

				System.out.println("id : " + nickname);
				System.out.println("이름 : " + name);
				System.out.println("메일 : " + email);
				System.out.println("성별 : " + gender);
			}
			
			String userpass = "***";
			String category = "N";
			
			UserVO uv = new UserVO(nickname,userpass,name,email,gender,category);
			
			
			System.out.println("아이디는 : "+uv.getUserid());
			
			JoinSvc joinSvc = new JoinSvc();		
			Integer check = joinSvc.idCheck(uv);
			
			System.out.println("인트체크@@@@@@@@@@@ : "+check);
			
			if(check==0) {
				joinSvc.insertNaverMember(uv);
				System.out.println("회원가입@@@@@@@@@@@@@@@");
			}else {
				System.out.println("이미 회원이십니다");
			}

		} catch (Exception e) {
			System.out.println(e);
		}
	}
}