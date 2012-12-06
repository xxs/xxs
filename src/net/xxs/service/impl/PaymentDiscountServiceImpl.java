package net.xxs.service.impl;

import javax.annotation.Resource;

import net.xxs.dao.PaymentDiscountDao;
import net.xxs.entity.PaymentDiscount;
import net.xxs.service.PaymentDiscountService;

import org.springframework.stereotype.Service;

/**
 * Service实现类 - 支付方式配置
 */

@Service("paymentDiscountServiceImpl")
public class PaymentDiscountServiceImpl extends BaseServiceImpl<PaymentDiscount, String> implements PaymentDiscountService {
	
	@Resource(name = "paymentDiscountDaoImpl")
	public void setBaseDao(PaymentDiscountDao paymentDiscountDao) {
		super.setBaseDao(paymentDiscountDao);
	}

}