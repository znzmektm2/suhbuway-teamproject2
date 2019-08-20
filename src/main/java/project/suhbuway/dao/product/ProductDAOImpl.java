package project.suhbuway.dao.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.suhbuway.dto.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SqlSession session;

	@Override
	public List<Product> selectProductsByCategory(String category) {
		List<Product> list = session.selectList("productMapper.selectProductsByCategory", category);
		for (Product pro : list)
			System.out.println(pro);
		return list;
	}

	@Override
	public Product selectProductById(int id) {
		Product result = session.selectOne("productMapper.selectProductByIdForMenu", id);
		return result;
	}

	@Override
	public List<String> selectMenuListByMenu(String menu) {
		List<String> result = session.selectList("productMapper.selectMenuListByMenu", menu);
		return result;
	}

	@Override
	public String selectMenuPrice(String name, String category) {
		Map<String, String> map = new HashMap<String, String>(); // MAP을 이용해 담기
		map.put("name", name);
		map.put("category", category);
		String price = session.selectOne("productMapper.selectMenuPrice", map);
		return price;
	}  

}
