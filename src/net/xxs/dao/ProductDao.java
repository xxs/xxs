package net.xxs.dao;

import java.util.List;

import net.xxs.entity.Product;

/**
 * Dao接口 - 货品
 */

public interface ProductDao extends BaseDao<Product, String> {
	
	/**
	 * 根据货品编号判断此货品是否存在（不区分大小写）
	 * 
	 */
	public boolean isExistByProductSn(String productSn);
	
	/**
	 * 根据货品ID获取同属商品的货品
	 * 
	 */
	public List<Product> getSiblingsProductList(String productId);
	
	/**
	 * 获取货品库存报警数
	 *            
	 * @return 货品库存报警数
	 */
	public Long getStoreAlertCount();
	
}