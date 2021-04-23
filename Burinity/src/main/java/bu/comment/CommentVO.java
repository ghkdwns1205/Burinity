package bu.comment;

import java.util.Date;

import org.springframework.stereotype.Repository;

@Repository
public class CommentVO {

	private int seq;
	private int cnumber;
	private String comment;
	private Date regdate;
	private String nickname;
	private String delflag;
	
	
	public int getCnumber() {
		return cnumber;
	}
	public void setCnumber(int cid) {
		this.cnumber = cid;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int wid) {
		this.seq = wid;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getDelflag() {
		return delflag;
	}
	public void setDelflag(String delflag) {
		this.delflag = delflag;
	}
}
