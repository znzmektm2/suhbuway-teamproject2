package project.suhbuway.dao.client;

import java.util.List;

import project.suhbuway.dto.Store;

public interface StoreDAO {

	/**
	 * 전체 매장 리스트 가져오기
	 */
	public List<Store> selectAllStore();

	/**
	 * id에 따른 매장정보 가져오기
	 */
	public Store selectStoreByStoreId(String storeId);
}
