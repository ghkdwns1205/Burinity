package bu.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import bu.comment.CommentVO;
import bu.common.FileUtil;
import bu.common.FileVO;



@Controller
public class BoardCtr {

	@Autowired
	private BoardSvc boardSvc;
	
	@RequestMapping(value="freeboard")
	public String FreeBoard(HttpServletRequest request, ModelMap modelmap, BoardSearchVO param) {
		
		HttpSession session = request.getSession();
//		String userid = session.getAttribute("userid").toString();
		System.out.println("왓냐아아아@@@@@@@@@@@@@@@@");
		
		param.pageCalculate(boardSvc.BoardListCount(param));
		List<?> list = boardSvc.FreeBoardList(param);
			
		modelmap.addAttribute("bo",param);
		modelmap.addAttribute("list",list);
		
		return "board/freeboard";
	}
	
	@RequestMapping(value="freeboarddetail")
	public String FreeBoarddetail(HttpServletRequest request, ModelMap modelmap, BoardVO param) {
		
		HttpSession session = request.getSession();
//		String userid = session.getAttribute("userid").toString();
		
		boardSvc.fboardHits(param);
		BoardVO bo = boardSvc.fBoardRead(param);
		List<?> clist = boardSvc.fBoardComment(param); 
		
		
		modelmap.addAttribute("list",bo);
		modelmap.addAttribute("clist",clist);
		
		return "board/freeboarddetail";
	}

	@RequestMapping(value="interest")
	public String Interest(HttpServletRequest request, ModelMap modelmap, BoardVO param) {
		
		HttpSession session = request.getSession();
		param.setNickname(session.getAttribute("userid").toString());
		
		int interCheck = boardSvc.interestCheck(param);
		
		if(interCheck == 1 ) {
			
			modelmap.addAttribute("msg","이미 좋아요한 글입니다");
			return "alert/interCheck";
			
		}else {
			boardSvc.interestInsert(param);
			boardSvc.interestUpdate(param);

			modelmap.addAttribute("msg","❤");
			return "alert/interestUpdate";
		}
		
//		return "redirect:/freeboarddetail?number="+param.getNumber();
	}
	
	@RequestMapping(value="write")
	public String BoardWrite() {
		
		System.out.println("보드 글쓰기 컨트롤러 들어왔는가?");
		
		return "board/write";
	}
	
	@RequestMapping(value="writeEnd")
	public String BoardWriteEnd(BoardVO param) {
		
		boardSvc.FBoardWriteEnd(param);
		
		
		return "redirect:/freeboard";
	}
	
	@RequestMapping(value="boardSave")
	public String BoardSave(HttpServletRequest request, BoardVO param) {
		
		String userid = request.getSession().getAttribute("userid").toString();
		param.setNickname(userid);
		
		String fileno[] = request.getParameterValues("fileno");
		FileUtil fs = new FileUtil();
		List<FileVO> fl = fs.saveAllFiles(param.getUploadfile());
		
//		for(int i=0; i<=fileno.length; i++) {
//			System.out.println("fileno : " + fileno[i]);
//		}
		
		
		boardSvc.insertContent(param,fl,fileno);
		
		return "board/boardList";
	}
	
}
