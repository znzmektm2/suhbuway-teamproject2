package project.suhbuway.service.complain;

import java.util.List;

import org.springframework.stereotype.Service;

import project.suhbuway.dto.Complain;

@Service
public interface ComplainService {
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
	   int delete(String userId, int complainId);
	  
	   /**
	    * 모델번호에 해당하는 레코드 수정
	    * */
	   int update(Complain complain);
	
}
