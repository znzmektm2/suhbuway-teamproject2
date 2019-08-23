package project.suhbuway.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class User {
  
	// 컬럼 속성들
	private String userId; 
	private String userName;
	private String userPassword;
	private String userPhone;
	private String userEmail;
	private String userProfileImg;// 이미지
	private String socialType; // kakao
	private String socialToken; // kakao
	private String regDate; 
	private int mileage; // 마일리지
	private String rating; // 등급
	private long userProfileSize;
  
	private MultipartFile file; // 파일 업로드했을때 받는 객체
}
