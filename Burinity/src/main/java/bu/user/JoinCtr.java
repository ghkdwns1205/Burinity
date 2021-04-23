package bu.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JoinCtr {

	@Autowired
	private JoinSvc joinSvc;
	
	 @RequestMapping(value = "userJoin")
	    public String memberLogin() {    //회원가입 화면

	        return "join/join";
	    }
	
	 @RequestMapping(value = "userJoin",method = RequestMethod.POST)
	 public String join(UserVO param, ModelMap modelmap) {      
		 
//		 System.out.println("아이디이이이이잉이이"+param.getUserid());
//		 System.out.println("비밀번호오오오오오이이이이잉이이"+param.getUserpass());
//		 System.out.println("이이이이잉이이르으으으으음"+param.getName());
//		 System.out.println("이메이이이이이이이이이일"+param.getEmail());
//		 System.out.println("성벼어어어어어어어어어어엉ㄹ"+param.getGender());
		 
		 if(param.getUserid()==null || param.getUserid().equals("")
				 ||param.getUserpass()==null||param.getUserpass().equals("")
				 ||param.getName()==null||param.getName().equals("")
				 ||param.getEmail()==null||param.getEmail().equals("")
				 ||param.getGender()==null||param.getGender().equals("")) {
			 
			 modelmap.addAttribute("msg","모든 정보를 입력해주세요");
			 return "alert/join";
		 }else {
			 joinSvc.insertNewMember(param);
			 modelmap.addAttribute("msg","회원가입이 완료되었습니다");
			 return "alert/joinsuccess";
		 }
		
	 }
	 
	 @RequestMapping(value = "idCheck")
	 public String IDCheck(UserVO param,ModelMap modelmap) {
		 
		 System.out.println("아이디 값받기@@@@@@@@@@@@@@@@@@@@@@@@@@@"+param.getUserid());
		 
		 int check = joinSvc.idCheck(param);
		 
		 System.out.println("check@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@: "+ check);
		 
		 modelmap.addAttribute("check",check);
		 
		 return "join/idcheck";
	 }
}
