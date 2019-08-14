package project.suhbuway.dao.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.suhbuway.dto.User;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired // web.xml에서 처리끝남( mybatis-트랜젝션 설정.xml에서 생성 )
	private SqlSession session;
	
	// 회원가입
	@Override
	public int insertUser(User user) {
		return session.insert("UserMapper.insertUser",user);
	}
	
	// 전체검색, 부분검색
	@Override
	public User selectUserById(String id) {
		return session.selectOne("UserMapper.selectUserById",id);
	}

}
