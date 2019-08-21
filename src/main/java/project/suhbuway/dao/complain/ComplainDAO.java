package project.suhbuway.dao.complain;

import java.util.List;

import org.springframework.stereotype.Repository;

import project.suhbuway.dto.Complain;

@Repository
public interface ComplainDAO {
	/**
	  * ���ڵ� ��ü �˻�
	  * */
	  List<Complain> selectAll();
	  
	  /**
		  * �Խ��� ��ȣ�� �˻�
		  * */
	  Complain selectByCompainId(int complainId);
	  
	/**
	 * ���ڵ� ����
	 * */
	  int insert(Complain complain);
	  
	  /**
	   * ������ ������ư�� ������ �� ����
	   * */
	   int delete(int complainId);
	  
	   /**
	    * �𵨹�ȣ�� �ش��ϴ� ���ڵ� ����
	    * */
	   int update(Complain complain);
	   
	   /*
	    * 관리자 답변
	    * */
	   int replyUpdate(Complain complain);
}
