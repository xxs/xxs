package net.xxs.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.ForeignKey;

/***
 * 会员提现申请
 * 
 * @author xxs
 */
@Entity
public class Withdraw extends BaseEntity {

	private static final long serialVersionUID = -6846771597684028683L;

	// 提现状态（申请中、通过、作废）
	public enum WithdrawStatus {
		apply, success, lose
	};

	private String withdrawSn; 	//单据号
	private Double money;		//金额
	private Double lossrate;	//手续费率
	private Double totalMoney;	//实际提现金额
	private String message;		//备注
	private String memo;		//留言
	private String rememo;		//回复
	private WithdrawStatus withdrawStatus; // 提现状态

	private Member member;// 会员

	@Enumerated
	@Column(nullable = false)
	public WithdrawStatus getWithdrawStatus() {
		return withdrawStatus;
	}

	public void setWithdrawStatus(WithdrawStatus withdrawStatus) {
		this.withdrawStatus = withdrawStatus;
	}

	@Column(nullable = false, updatable = false, unique = true)
	public String getWithdrawSn() {
		return withdrawSn;
	}

	public void setWithdrawSn(String withdrawSn) {
		this.withdrawSn = withdrawSn;
	}

	@Column(nullable = false)
	public Double getMoney() {
		return money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	@Column(nullable = false)
	public Double getLossrate() {
		return lossrate;
	}

	public void setLossrate(Double lossrate) {
		this.lossrate = lossrate;
	}

	@Column(nullable = false)
	public Double getTotalMoney() {
		return totalMoney;
	}

	public void setTotalMoney(Double totalMoney) {
		this.totalMoney = totalMoney;
	}

	@Column(length = 3000)
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Column(length = 3000)
	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	@Column(length = 3000)
	public String getRememo() {
		return rememo;
	}

	public void setRememo(String rememo) {
		this.rememo = rememo;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@ForeignKey(name = "fk_withdraw_member")
	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

}
