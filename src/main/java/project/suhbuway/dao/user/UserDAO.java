package project.suhbuway.dao.user;

import project.suhbuway.dto.User;

public interface UserDAO {
	  /**
	   *  회원가입
	   * */
		int insertUser(User user);
		
		/**
		 * ID에 해당하는 회원정보 검색
		 * */
		User selectUserById(String id);
	}
