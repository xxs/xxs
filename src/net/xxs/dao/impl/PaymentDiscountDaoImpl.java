package net.xxs.dao.impl;

import net.xxs.dao.PaymentDiscountDao;
import net.xxs.entity.PaymentDiscount;

import org.springframework.stereotype.Repository;

/**
 * Dao实现类 - 支付通道设置
 */

@Repository("paymentDiscountDaoImpl")
public class PaymentDiscountDaoImpl extends BaseDaoImpl<PaymentDiscount, String> implements PaymentDiscountDao {

}