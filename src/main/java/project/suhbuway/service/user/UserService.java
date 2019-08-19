package project.suhbuway.service.user;

import project.suhbuway.dto.User;

public interface UserService {

	/**
	 * 회원가입
	 * */
	int joinUser(User user);
	
	/**
	 * id중복체크
	 */
	String idcheck(String id);
}
