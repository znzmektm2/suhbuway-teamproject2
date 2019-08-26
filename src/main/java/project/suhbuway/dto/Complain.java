package project.suhbuway.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
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
