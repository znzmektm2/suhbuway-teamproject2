package project.suhbuway.service.user;

import java.util.List;

import project.suhbuway.dto.User;

public interface UserService {
	
	/**
	 * 전체검색
	 */
	List<User> selectAll();

	/**
	 * 회원가입
	 * */
	int joinUser(User user);
	
	/**
	 *  전체검색, 부분검색
	 */
	User selectUserById(String id);
	
	/**
	 * id중복체크
	 */
	String idcheck(String id);
	
	/**
	 * SocialToken 변경될경우
	 */
	int updateBySocialToken(String id,String socialToken);
	
	/**
	 * 비밀번호 일치 확인
	 */
	boolean selectByUserPassword(String id,String passowrd);
	
	/**
	 * 회원정보 수정
	 */
	int userUpdate(User user);
	
	
	
	
}
