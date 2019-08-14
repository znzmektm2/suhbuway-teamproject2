package project.suhbuway.service.complain;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.suhbuway.dao.complain.ComplainDAO;
import project.suhbuway.dto.Complain;

@Service
public class ComplainServiceImpl implements ComplainService {
	@Autowired
	private ComplainDAO dao;

	@Override
	public List<Complain> selectAll(String userId) {
		
		return null;
	}

	@Override
	public int insert(Complain complain) {
		
		return 0;
	}

	@Override
	public int delete(String userId) {
		
		return 0;
	}

	@Override
	public int update(String userId) {
		
		return 0;
	}

	@Override
	public int insertAdmin(Complain complain, String adminId) {
		
		return 0;
	}

}
