package project.suhbuway.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
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
	 * 전체검색
	 */
	@Override
	public List<User> selectAll() {
		return userDAO.selectAll();
	}
	
	/**
	 * 회원가입
	 */
	@Transactional 
	@Override	     
	public int joinUser(User user) {
		
		// encode(): 패스워드(평문) -> 암호화해서 저장
		if( user.getUserPassword() != null ) {
			String pwd = passwordEncoder.encode( user.getUserPassword() );
			user.setUserPassword(pwd);
		}
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
		//System.out.println("서비스 id체크: " + id );
		int count=userDAO.idcheck(id);
		return (count==0) ? "ok"  : "fail"; 	
	}

	/**
	 * id로 검색
	 */
	@Override
	public User selectUserById(String id) {
		return userDAO.selectUserById(id);
	}

	/**
	 * SocialToken 변경될경우
	 */
	@Override
	public int updateBySocialToken(String id,String socialToken) {
		return userDAO.updateBySocialToken(id,socialToken);
	}

	/**
	 * 비밀번호 일치 확인
	 */
	@Override
	public boolean selectByUserPassword(String id, String passowrd) {
		
		// 입력된 비번 복호화
		
		// DB 비번
		User dbuser = this.selectUserById(id);
		dbuser.getUserPassword();
		
		// 비밀번호 비교	     // 암호안된거 암호된거
		boolean result = passwordEncoder.matches(passowrd, dbuser.getUserPassword() );
		System.out.println(" 서비스 result: " + result );
		
		return result;
	}
	/**
	 * 회원정보 수정
	 */
	@Override
	public int userUpdate(User user) {
		
		// encode(): 패스워드(평문) -> 암호화해서 저장
		if( user.getUserPassword() != null ) {
			String pwd = passwordEncoder.encode( user.getUserPassword() );
			user.setUserPassword(pwd);
		}
		
		return userDAO.userUpdate(user);
	}

}
