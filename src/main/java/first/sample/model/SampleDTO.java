package first.sample.model;

import java.util.HashMap;

public class SampleDTO {
	private HashMap<String,Object> map;
	private TbBoardVO tbBoardVO;
	

	public void setMap(HashMap<String,Object> map){
		this.map = map;
	}
	public HashMap<String,Object> getMap(){
		return map;
	}
	public TbBoardVO getTbBoardVO() {
		return tbBoardVO;
	}
	public void setTbBoardVO(TbBoardVO tbBoardVO) {
		this.tbBoardVO = tbBoardVO;
	}
	
	

}
