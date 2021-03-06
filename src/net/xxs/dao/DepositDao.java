package net.xxs.dao;

import net.xxs.bean.Pager;
import net.xxs.entity.Deposit;
import net.xxs.entity.Member;

/**
 * Dao接口 - 预存款记录
 */

public interface DepositDao extends BaseDao<Deposit, String> {
	
	/**
	 * 根据Member、Pager获取充值记录分页对象
	 * 
	 * @param member
	 *            Member对象
	 *            
	 * @param pager
	 *            Pager对象
	 *            
	 * @return 充值记录分页对象
	 */
	public Pager getDepositPager(Member member, Pager pager);

}