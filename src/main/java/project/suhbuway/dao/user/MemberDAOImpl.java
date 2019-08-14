package project.suhbuway.dao.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.suhbuway.dto.Member;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired // web.xml에서 처리끝남( mybatis-트랜젝션 설정.xml에서 생성 )
	private SqlSession session;
	
	@Override
	public int insertMember(Member member) {
		return session.insert("memberMapper.insertMember",member );
	}

	@Override
	public Member selectMemberById(String id) {
		return session.selectOne("memberMapper.selectMemberById", id );
	}

}
