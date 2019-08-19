package project.suhbuway.dao.complain;

import java.util.List;

import org.springframework.stereotype.Repository;

import project.suhbuway.dto.Complain;

@Repository
public interface ComplainDAO {
	/**
	  * 레코드 전체 검색
	  * */
	  List<Complain> selectAll();
	  
	  /**
		  * 게시판 번호로 검색
		  * */
	  Complain selectByCompainId(int complainId);
	  
	/**
	 * 레코드 삽입
	 * */
	  int insert(Complain complain);
	  
	  /**
	   * 유저가 삭제버튼을 눌럿을 때 삭제
	   * */
	   int delete(int complainId);
	  
	   /**
	    * 모델번호에 해당하는 레코드 수정
	    * */
	   int update(Complain complain);
}
