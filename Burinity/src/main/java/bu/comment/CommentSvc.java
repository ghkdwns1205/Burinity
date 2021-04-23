package bu.comment;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bu.board.BoardVO;

@Service
public class CommentSvc {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public void insertcomment(CommentVO param) {
	
		sqlSession.insert("insertcomment",param);
	}
	
	
}
