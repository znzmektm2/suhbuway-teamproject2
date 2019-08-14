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
	public List<Complain> selectAll(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Complain complain) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertAdmin(Complain complain, String adminId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
