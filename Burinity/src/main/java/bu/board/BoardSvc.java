package bu.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import bu.comment.CommentVO;
import bu.common.FileVO;

@Service
public class BoardSvc {

	@Autowired
	private DataSourceTransactionManager dtm;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public List<?> FreeBoardList(BoardSearchVO param) {
		
		return sqlSession.selectList("FreeBoardList",param);
	}
	
	public Integer BoardListCount(BoardSearchVO param) {
		
		return sqlSession.selectOne("BoardListCount",param);
	}

	public BoardVO fBoardRead(BoardVO param) {
		
		return sqlSession.selectOne("fBoardRead",param);
	}

	public List<?> fBoardComment(BoardVO param) {
		
		return sqlSession.selectList("fBoardComment",param);
	}

	public Integer interestCheck(BoardVO param) {
		
		return sqlSession.selectOne("interestCheck",param);
	}

	public void interestInsert(BoardVO param) {
		
		sqlSession.update("interestInsert",param);
	}

	public void interestUpdate(BoardVO param) {
		
		sqlSession.update("interestUpdate",param);
	}

	public void insertContent(BoardVO param, List<FileVO> fl, String[] fileno) {
		
		DefaultTransactionDefinition dtd = new DefaultTransactionDefinition();
		TransactionStatus ts = dtm.getTransaction(dtd);
		
		sqlSession.insert("insertContent",param);
		
		for(FileVO f : fl) {
			f.setParentPK(Integer.toString(param.getNumber()));
			sqlSession.insert("insertFile",f);
		}
	}

	public void fboardHits(BoardVO param) {
		
		sqlSession.update("fboardHits",param);
	}

	public void FBoardWriteEnd(BoardVO param) {
		
		sqlSession.update("FBoardWriteEnd",param);
	}

}
