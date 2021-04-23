package bu.board;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

@Repository
public class BoardVO {

	private int number;
	private String nickname;
	private String title;
    private String content;
    private Date regdate; 
    private int hits;
    private int likes;
    private String flag;
	private String table;
	 
//    public BoardVO() {
//    	
//    }
//    
//    public BoardVO(int number, String nickname, String title, String content, Date regdate, int hits, int likes,
//			String flag) {
//		this.number = number;
//		this.nickname = nickname;
//		this.title = title;
//		this.content = content;
//		this.regdate = regdate;
//		this.hits = hits;
//		this.likes = likes;
//		this.flag = flag;
//	}

    public String getTable() {
		return table;
	}
	public void setTable(String table) {
		this.table = table;
	}

	private List<MultipartFile> uploadfile;
    
    public List<MultipartFile> getUploadfile(){
    	return uploadfile;
    }
    public void setUploadfile(List<MultipartFile> uploadfile){
    	this.uploadfile = uploadfile ;
    }
    
    
    
	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

}
