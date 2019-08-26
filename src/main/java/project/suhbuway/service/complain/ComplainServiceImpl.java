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
		} else {
			System.out.println("본인이 작성한 글이 아닙니다.");
		}
		return result;
	}

	@Override
	public int update(Complain complain) {
		int result = 0;
		Complain dto = dao.selectByCompainId(complain.getComplainId());
		System.out.println(dto.getUserId());
		System.out.println(complain.getUserId());
		if(dto.getUserId().equals(complain.getUserId())) {
			result = dao.update(complain);
		} else {
			System.out.println("본인이 작성한 글이 아닙니다.");
		}
		return result;
	}

	@Override
	public int replyUpdate(Complain complain) {
		return dao.replyUpdate(complain);
	}

	
	/**
	 * 유저에 따른 게시판
	 */
	@Override
	public List<Complain> selectByUserId(String userId) {
		return dao.selectByUserId(userId);
	}

	

}
