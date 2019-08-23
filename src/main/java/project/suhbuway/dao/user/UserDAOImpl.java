package project.suhbuway.dao.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.suhbuway.dto.User;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired  
	private SqlSession session;
	
	/**
	 * 전체검색
	 */
	public List<User> selectAll(){
		return null;
	}
	/**
	 *  회원가입
	 */
	@Override
	public int insertUser(User user) {
		return session.insert("userMapper.insertUser",user);
	}
	
	/**
	 *  전체검색, 부분검색
	 */
	@Override
	public User selectUserById(String id) {
		return session.selectOne("userMapper.selectUserById",id);
	}
	
	/**
	 * ID중복체크
	 */
	@Override
	public int idcheck(String id) {
		//System.out.println("userDAOImpl id: " + id );
		return session.selectOne("userMapper.idcheck",id);
	}
	
	/**
	 * SocialToken 변경될경우
	 */
	@Override
	public int updateBySocialToken(String id ,String socialToken) {
		Map<String, String> map = new HashMap<String, String>();
		//System.out.println("daoImp에서 socialToken: "+ socialToken ); 
		map.put("userId", id);
		map.put("socialToken",socialToken);
		return session.update("userMapper.updateBySocialToken",map);
	}
	
	/**
	 * 회원정보 수정
	 */
	@Override
	public int userUpdate(User user) {
		return session.update("userMapper.updateUser",user);
	}

}
