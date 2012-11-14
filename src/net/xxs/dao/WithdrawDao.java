package net.xxs.dao;

import net.xxs.bean.Pager;
import net.xxs.entity.Member;
import net.xxs.entity.Withdraw;

/**
 * Dao接口 - 提现
 */

public interface WithdrawDao extends BaseDao<Withdraw, String> {
	
	/**
	 * 获取最后生成的提现编号
	 * 
	 * @return 提现编号
	 */
	public String getLastWithdrawSn();
	
	/**
	 * 根据Member、Pager获取提现记录分页对象
	 * 
	 * @param member
	 *            Member对象
	 *            
	 * @param pager
	 *            Pager对象
	 *            
	 * @return 提现记录分页对象
	 */
	public Pager getWithdeawPager(Member member, Pager pager);

	/**
	 * 获取未处理缺货登记数
	 *            
	 * @return 未处理缺货登记数
	 */
	public Long getUnprocessedWithdrawCount();
}