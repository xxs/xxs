package net.xxs.service;

import java.util.List;

import net.xxs.entity.FriendLink;

/**
 * Service接口 - 友情链接
 */

public interface FriendLinkService extends BaseService<FriendLink, String> {

	/**
	 * 获取图片友情链接集合
	 * 
	 * @param type
	 *            文章类型,null表示无限制
	 * 
	 * @param maxResults
	 *            最大结果数,null表示无限制
	 * 
	 * @return 图片友情链接集合
	 * 
	 */
	public List<FriendLink> getFriendLinkList(String type, Integer maxResults);

}