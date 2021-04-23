package bu.main;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IndexSvc {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void InsertBunyang(BunyangVO bvo) {
		
		sqlSession.insert("InsertBunyang",bvo);
	}

	public BunyangVO getAJiyuk(BunyangVO bvo) {

		return sqlSession.selectOne("getAJiyuk",bvo);
	}

	public List<?> getAJiyukList(BunyangVO bvo) {
		
		return sqlSession.selectList("getAJiyukList",bvo);
	}

	public List<?> getPartJiyuk1(BunyangVO bvo) {
		
		return sqlSession.selectList("getPartJiyuk1",bvo);
	}

	public List<?> getPartJiyuk2(BunyangVO bvo) {
		
	    return sqlSession.selectList("getPartJiyuk2",bvo);
	}

	public List<?> getPartJiyuk3(BunyangVO bvo) {
		
		 return sqlSession.selectList("getPartJiyuk3",bvo);
	}

	public BunyangVO getbunyangInfo(BunyangVO bvo) {
		
		return sqlSession.selectOne("getbunyangInfo",bvo);
	}

}
