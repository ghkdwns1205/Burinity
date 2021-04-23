package bu.comment;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bu.board.BoardVO;

@Controller
public class CommentCtr {

	@Autowired
	private CommentSvc commentSvc;

	@RequestMapping(value="insertfbcomment", method = RequestMethod.POST)
	public String InsertComment(HttpServletRequest request, ModelMap modelmap, CommentVO param) {
		
//		HttpSession session = request.getSession();
//		String userid = session.getAttribute("userid").toString();
	    String number = request.getParameter("cnumber");
		commentSvc.insertcomment(param);
		
		return "redirect:/freeboarddetail?number="+number;
	}
}
