package project.suhbuway.service.complain;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.suhbuway.dao.complain.ComplainDAO;
import project.suhbuway.dto.Complain;

@Service
public class ComplainServiceImpl implements ComplainService {
	@Autowired
	ComplainDAO dao;

	@Override
	public List<Complain> selectAll() {
		return dao.selectAll();
	}

	@Override
	public Complain selectByCompainId(int complainId) {
		return dao.selectByCompainId(complainId);
	}

	@Override
	public int insert(Complain complain) {
		return dao.insert(complain);
	}

	@Override
	public int delete(String userId, int complainId) {
		int result = 0;
		Complain complain = dao.selectByCompainId(complainId);
		if(complain.getUserId().equals(userId)) {
			result = dao.delete(complainId);
			if(result==0) System.out.println("아이디가 일치하지 않습니다.");
		}
		return result;
	}

	@Override
	public int update(Complain complain) {
		// TODO Auto-generated method stub
		return 0;
	}

	

}
