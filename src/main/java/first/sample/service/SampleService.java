package first.sample.service;

import java.util.List;
import java.util.Map;

import first.sample.model.TbBoardVO;

public interface SampleService {

	List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception;
	
	void insertBoard(Map<String, Object> map) throws Exception;

	TbBoardVO selectBoardDetail(TbBoardVO vo) throws Exception;

}
