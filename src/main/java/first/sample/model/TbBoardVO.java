package first.sample.model;

public class TbBoardVO {
	private int idx;
	private int parentIdx;
	private String title;
	private String contents;
	private int hitCnt;
	private String delGB;
	private String creaDtm;
	private String creaId;
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	
	public int getParentIdx() {
		return parentIdx;
	}
	public void setParentIdx(int parentIdx) {
		this.parentIdx = parentIdx;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getHitCnt() {
		return hitCnt;
	}
	public void setHitCnt(int hitCnt) {
		this.hitCnt = hitCnt;
	}
	public String getDelGB() {
		return delGB;
	}
	public void setDelGB(String delGB) {
		this.delGB = delGB;
	}
	public String getCreaDtm() {
		return creaDtm;
	}
	public void setCreaDtm(String creaDtm) {
		this.creaDtm = creaDtm;
	}
	public String getCreaId() {
		return creaId;
	}
	public void setCreaId(String creaId) {
		this.creaId = creaId;
	}

}
