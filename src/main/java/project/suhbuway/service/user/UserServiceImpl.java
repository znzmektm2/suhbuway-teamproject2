package project.suhbuway.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import project.suhbuway.dao.user.AuthoritiesDAO;
import project.suhbuway.dao.user.UserDAO;
import project.suhbuway.dto.User;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDAO userDAO;
	@Autowired
	AuthoritiesDAO authoritiesDAO;
	@Autowired  
	PasswordEncoder passwordEncoder;
	
	/**
	 * 회원가입
	 */
	@Transactional 
	@Override	     
	public int joinUser(User user) {
		
		// encode(): 패스워드(평문) -> 암호화해서 저장
		String pwd = passwordEncoder.encode( user.getUserPassword() );
		user.setUserPassword(pwd);
		
		// 회원가입
		int result = userDAO.insertUser(user);
		if( result==0 ) throw new RuntimeException("가입되지 않았습니다.");
		
		// 가입 성공하면 권한 부여(추가)
		//result = authoritiesDAO.insertAuthority( new Authority( member.getId(), RoleConstant.ROLE_MEMBER ) );
		//if( result ==0 ) throw new RuntimeException("권한 부여에 오류가 발생하여 Rollback 되었습니다.--1");
		
		// UserType null여부 체크 ( 프론트단에서 처리하는게 더 올바름 )
//		if( member.getUserType()==null ) {
//			throw new RuntimeException("UserType이 없으므로 오류가 발생합니다.");
//		}
		// 관리자 여부
//		if( member.getUserType().equals("1") ) {
//			result = authoritiesDAO.insertAuthority( new Authority( member.getId(), RoleConstant.ROLE_ADMIN ) );
//			if( result ==0 ) throw new RuntimeException("권한 부여에 오류가 발생하여 Rollback 되었습니다.--2");
//		}
		return 0;
	}
	/**
	 * ID중복체크
	 */
	@Override
	public String idcheck(String id) {
		System.out.println("서비스 id체크: " + id );
		int count=userDAO.idcheck(id);
		System.out.println("dao결과: " + count );
		return (count==0) ? "ok"  : "fail"; 	
	}

}
