package bu.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserSvc {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public UserVO selectMemberLogin(LoginVO userinfo) {
		
		return sqlSession.selectOne("selectMemberLogin",userinfo);
	}

	
//	 public void userLogOut(String userid) {    //로그아웃 처리
//	        sqlSession.insert("userLogOut", userid);
//	    }
}
