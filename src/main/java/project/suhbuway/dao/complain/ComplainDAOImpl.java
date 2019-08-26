package project.suhbuway.dao.complain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.suhbuway.dto.Complain;

@Repository
public class ComplainDAOImpl implements ComplainDAO {
	@Autowired
	private SqlSession session;

	@Override
	public List<Complain> selectAll() {
		return session.selectList("complainMapper.selectAll");
	}

	@Override
	public Complain selectByCompainId(int complainId) {
		return session.selectOne("complainMapper.selectByCompainId", complainId);
	}

	@Override
	public int insert(Complain complain) {
		return session.insert("complainMapper.insert", complain);
	}

	@Override
	public int delete(int complainId) {
		return session.delete("complainMapper.delete", complainId);
	}

	@Override
	public int update(Complain complain) {
		return session.update("complainMapper.update", complain);
	}

	@Override
	public int replyUpdate(Complain complain) {
		return session.update("complainMapper.replyUpdate", complain);
	}

	/**
	 * 유저에 따른 게시판
	 */
	@Override
	public List<Complain> selectByUserId(String userId) {
		return session.selectList("complainMapper.selectByUserId",userId);
	}
}
