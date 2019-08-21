package project.suhbuway.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
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
	private String storeId;
	private String storeTitle;
	private String storeContent;
	
	private MultipartFile file;

}
