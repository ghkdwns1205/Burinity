package bu.user;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.SecureRandom;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
public class LoginCtr {

//	private static final Integer cookieExpire = 60 * 60 * 24 * 30; // 1 month
	
	@Autowired
	private UserSvc userSvc;
	
	@Autowired
	private JoinSvc joinSvc;
	  
    @RequestMapping(value = "userLogin")
    public String memberLogin(HttpServletRequest req,ModelMap modelmap) throws UnsupportedEncodingException {                            //로그인 화면
//        String userid = get_cookie("sid", request);    
//
//        modelMap.addAttribute("userid", userid);

    	  String clientId = "2Wq7aK1tqidstWiEOk3e";// 애플리케이션 클라이언트 아이디값";
          String redirectURI = URLEncoder.encode("http://localhost:8080/callback", "UTF-8"); //http:localhost:3306/Myproject2/callback
          // http://localhost:8080/CinemaProject/user/login
          
          SecureRandom random = new SecureRandom();
          String state = new BigInteger(130, random).toString();
          String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
          apiURL += "&client_id=" + clientId;
          apiURL += "&redirect_uri=" + redirectURI;
          apiURL += "&state=" + state;
          HttpSession session=req.getSession();
          System.out.println("여까지 옴");
          session.setAttribute("state", state);
         modelmap.addAttribute("apiURL", apiURL);
    	
        return "login/login";
    }
	
    @RequestMapping(value="callback")
    public String Callback(HttpServletRequest req,ModelMap modelmap) throws UnsupportedEncodingException {
    	
    	System.out.println("콜백 여까지옴");
		String clientId = "2Wq7aK1tqidstWiEOk3e";// 애플리케이션 클라이언트 아이디값";
		String clientSecret = "n4BLFEt1uo";// 애플리케이션 클라이언트 시크릿값";
		String code = req.getParameter("code");
		String state = req.getParameter("state");
		String redirectURI = URLEncoder.encode("http://localhost:8080/callback", "UTF-8");
		String apiURL;

		apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";
		apiURL += "client_id=" + clientId;
		apiURL += "&client_secret=" + clientSecret;
		apiURL += "&redirect_uri=" + redirectURI;
		apiURL += "&code=" + code;
		apiURL += "&state=" + state;
		String access_token = "";
		String refresh_token = "";
		System.out.println("apiURL=" + apiURL);
		try {
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			
			int responseCode = con.getResponseCode();
			BufferedReader br;
			System.out.print("responseCode=" + responseCode);
			if (responseCode == 200) { // 정상 호출
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else { // 에러 발생
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}
			String inputLine;
			StringBuffer res = new StringBuffer();
			while ((inputLine = br.readLine()) != null) {
				res.append(inputLine);
			}
			br.close();
			if (responseCode == 200) {
				System.out.println(res.toString());
				JSONParser parsing = new JSONParser();
				Object obj = parsing.parse(res.toString());
				JSONObject jsonObj = (JSONObject) obj;

				access_token = (String) jsonObj.get("access_token");
				refresh_token = (String) jsonObj.get("refresh_token");

				System.out.println("acc_to: " + access_token);
				info(req,  access_token);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "main/index";
    }
    
    
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
    
    
    @RequestMapping(value = "UserLoginCheck")
    public String memberLoginChk(HttpServletRequest request,HttpServletResponse response, LoginVO loginInfo, ModelMap modelMap) {   //로그인 처리

        UserVO uv = userSvc.selectMemberLogin(loginInfo);
        
        if (uv  ==  null) {
            modelMap.addAttribute("msg", "로그인 할 수 없습니다.");
            return "alert/loginMsg";
        }
        
//        memberSvc.insertLogIn(mdo.getUserno());
        
        HttpSession session = request.getSession();
        
        session.setAttribute("authority", uv.getAuthority());
        session.setAttribute("userid", uv.getUserid());
        session.setAttribute("username", uv.getName());
        session.setAttribute("useremail",  uv.getEmail());
        session.setAttribute("usergender",  uv.getGender());
        
//        if ("Y".equals(loginInfo.getRemember())) {
//            set_cookie("sid", loginInfo.getUserid(), response);
//        } else { 
//            set_cookie("sid", "", response);       
//        }
        
        return "redirect:/index";
    }   
	
    @RequestMapping(value = "userLogout")
    public String memberLogout(HttpServletRequest request, ModelMap modelMap) {  // 로그아웃
        HttpSession session = request.getSession();
        
//        String userid = session.getAttribute("userid").toString();
        
//        userSvc.userLogOut(userid);
        
        session.removeAttribute("authority");
        session.removeAttribute("userid"); 
        session.removeAttribute("username");        
        session.removeAttribute("useremail");        
        session.removeAttribute("usergender");  
        
        modelMap.addAttribute("msg", "로그아웃 되었습니다.");
        
        return "alert/logoutMsg";  
    }
	
	
	
	
	
//    public static void set_cookie(String cid, String value, HttpServletResponse res) { //쿠키 저장
//
//        Cookie ck = new Cookie(cid, value);
//        ck.setPath("/");
//        ck.setMaxAge(cookieExpire);
//        res.addCookie(ck);        
//    }
//
//   
//    public static String get_cookie(String cid, HttpServletRequest request) { //쿠키 가져오기
//        String ret = "";
//
//        if (request == null) {
//            return ret;
//        }
//        
//        Cookie[] cookies = request.getCookies();
//        if (cookies == null) {
//            return ret;
//        }
//        
//      for (Cookie ck : cookies) {
//           if (ck.getName().equals(cid)) {
//                ret = ck.getValue();
//                
//               ck.setMaxAge(cookieExpire);
//                break; 
//            }
//          }
//        return ret; 
//    }
}
