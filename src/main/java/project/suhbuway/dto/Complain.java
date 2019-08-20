package project.suhbuway.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Complain {
	
	private int complainId;
	private int groupNo;
	private String userId;
	private String title;
	private String content;
	private String date;
	private boolean state;
	private String fileName;
	private long fileSize;
	
	private MultipartFile file;

}
