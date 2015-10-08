package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;
import first.sample.model.TbBoardVO;

@Repository("sampleDAO")
public class SampleDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) {
		return (List< Map<String, Object> >)selectList("sample.selectBoardList", map);
	}

	public void insertBoard(Map<String, Object> map) {
		insert("sample.insertBoard", map);
	}
	
	public TbBoardVO selectBoardDetail(TbBoardVO vo){
		return (TbBoardVO) selectOne("sample.selectBoardDetail", vo);
	}

}
