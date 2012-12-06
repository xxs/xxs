package net.xxs.entity;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Transient;

import org.apache.commons.lang.StringUtils;
import org.hibernate.annotations.ForeignKey;

/**
 * 实体类 - 品牌
 */

@Entity
public class Brand extends BaseEntity {

	private static final long serialVersionUID = -6109590619136943215L;

	private String name;// 名称
	private String logoPath;// LOGO路径
	private String url;// 网址
	private String introduction;// 介绍
	private Integer orderList;// 排序
	
	private Set<PaymentDiscount> paymentDiscountSet = new HashSet<PaymentDiscount>();// 费率设置
	private Set<Goods> goodsSet = new HashSet<Goods>();// 商品
	private Set<GoodsType> goodsTypeSet = new HashSet<GoodsType>();// 商品类型

	@Column(nullable = false)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLogoPath() {
		return logoPath;
	}

	public void setLogoPath(String logoPath) {
		this.logoPath = logoPath;
	}
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	@Column(length = 3000)
	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	
	public Integer getOrderList() {
		return orderList;
	}

	public void setOrderList(Integer orderList) {
		this.orderList = orderList;
	}

	@OneToMany(mappedBy = "brand", fetch = FetchType.LAZY)
	public Set<Goods> getGoodsSet() {
		return goodsSet;
	}

	public void setGoodsSet(Set<Goods> goodsSet) {
		this.goodsSet = goodsSet;
	}

	@ManyToMany(mappedBy = "brandSet", fetch = FetchType.LAZY)
	@ForeignKey(name = "fk_brand_goods_type_set")
	public Set<GoodsType> getGoodsTypeSet() {
		return goodsTypeSet;
	}

	public void setGoodsTypeSet(Set<GoodsType> goodsTypeSet) {
		this.goodsTypeSet = goodsTypeSet;
	}
	
	// 保存处理
	@Override
	@Transient
	public void onSave() {
		if (StringUtils.isEmpty(logoPath)) {
			logoPath = null;
		}
		if (orderList == null || orderList < 0) {
			orderList = 0;
		}
	}
	
	// 更新处理
	@Override
	@Transient
	public void onUpdate() {
		if (StringUtils.isEmpty(logoPath)) {
			logoPath = null;
		}
		if (orderList == null || orderList < 0) {
			orderList = 0;
		}
	}
	@OneToMany(mappedBy = "paymentConfig", fetch = FetchType.LAZY, cascade = {CascadeType.REMOVE})
	@OrderBy("createDate asc")
	public Set<PaymentDiscount> getPaymentDiscountSet() {
		return paymentDiscountSet;
	}

	public void setPaymentDiscountSet(Set<PaymentDiscount> paymentDiscountSet) {
		this.paymentDiscountSet = paymentDiscountSet;
	}
}