package project.suhbuway.dao.user;

import java.util.List;

import project.suhbuway.dto.User;

public interface UserDAO {


	/**
	 * 전체검색
	 */
	List<User> selectAll();
	/**
	 *  회원가입
	 * */
	int insertUser(User user);

	/**
	 * ID에 해당하는 회원정보 검색
	 * */
	User selectUserById(String id);

	/**
	 * ID중복체크
	 */
	int idcheck(String id);
	
	/**
	 * SocialToken 변경될경우
	 */
	int updateBySocialToken(String id, String socialToken);
}
