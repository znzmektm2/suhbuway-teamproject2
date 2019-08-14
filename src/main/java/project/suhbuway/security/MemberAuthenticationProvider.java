package project.suhbuway.security;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import project.suhbuway.dao.user.AuthoritiesDAO;
import project.suhbuway.dao.user.MemberDAO;
import project.suhbuway.dto.Authority;
import project.suhbuway.dto.Member;


/**  인증처리 객체 - 입력값 DB와 비교
  */
@Component // id="memberAuthenticationProvider"
public class MemberAuthenticationProvider implements AuthenticationProvider {
	
	@Autowired // MemberDAO: DB에 저장된 정보
	private MemberDAO memberDAO;	
	@Autowired // PasswordEncoder : 암호화된건 평문이랑 비교 못해서 필요 ( sercurity.xml에서 생성 )
	private PasswordEncoder passwordEncoder;
	@Autowired // AuthoritiesDAO: DB와 입력값 비교 성공시, 권한을 꺼내오는 DAO
	private AuthoritiesDAO authoritiesDAO;

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		
		if( !supports(authentication.getClass()) ) {
			return null;
		}
		
		// 아이디 비교
		Member member = memberDAO.selectMemberById( authentication.getName() );// id
		System.out.println("mm id="+member);
		if(member==null) throw new UsernameNotFoundException("아이디 또는 비밀번호가 틀렸습니다");
		
		// 비밀번호 비교
		String pass = authentication.getCredentials().toString(); //  getCredentials(): 평문비교, Object여서 String으로 바꿈
		if( !passwordEncoder.matches( pass, member.getPassword() ) ) { // matches(): 암호문을 복호화해서 비교 
			throw new UsernameNotFoundException("id 또는 비밀번호가 틀렸습니다.");
		}
		// 인증성공: 권한 가져와서 저장 ( Authority은 DTO )
		List<Authority> list = authoritiesDAO.selectAuthorityByUserName( authentication.getName() );
		
		// 타입변환: Authority -> GrantedAuthority ( 권한이 1개 이상일 경우가 있으니까 콜렉션 형태임 )
		List<SimpleGrantedAuthority> grantedList = new ArrayList<>();
		for( Authority au : list ) {
			grantedList.add( new SimpleGrantedAuthority(au.getRole()) );
		}	
																		// 아디		비번	권한( 콜렉션<GrantedAuthority> )
		return new UsernamePasswordAuthenticationToken( member , null , grantedList );
	}
	
	@Override
	public boolean supports(Class<?> authentication) {
		return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication); // 검증
	}

}
