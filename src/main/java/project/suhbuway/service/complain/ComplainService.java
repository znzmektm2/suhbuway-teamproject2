package project.suhbuway.service.complain;

import java.util.List;

import project.suhbuway.dto.Complain;

public interface ComplainService {
	
	/*
	 * 게시글 검색(자기가 쓴 글만 가능)
	 * */
	List<Complain> selectAll(String userId);
	
	/*
	 * 게시글 추가
	 * */
	int insert(Complain complain);
	
	/*
	 * 게시글 삭제
	 * */
	int delete(String userId);
	
	/*
	 * 게시글 수정
	 * */
	int update(String userId);
	
	/*
	 * 답글 달기(admin만 가능)
	 * */
	int insertAdmin(Complain complain, String adminId);

}
