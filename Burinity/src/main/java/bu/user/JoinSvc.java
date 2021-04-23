package bu.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class JoinSvc {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public void insertNewMember(UserVO param) {
		System.out.println("여기로 오는게 사실인가?");
		sqlSession.update("insertNewMember",param);
	}
	
	public void test() {
		
		System.out.println("왜 안되는거야!!!!!");
	}

	public Integer idCheck(UserVO param) {
		System.out.println("result : " +(sqlSession.selectOne("idCheck",param)));
		return sqlSession.selectOne("idCheck",param);
	}

	public void insertNaverMember(UserVO param) {
		
		sqlSession.update("insertNaverMember",param);
	}
	
	
}
