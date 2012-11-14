package net.xxs.bean;


/**
 * Bean类 - 邮件模板配置
 */

public class MailTemplateConfig {
	
	public static final String SMTP_TEST = "smtpTest";// SMTP邮箱配置测试
	public static final String PASSWORD_RECOVER = "passwordRecover";// 密码找回
	public static final String GOODS_NOTIFY = "goodsNotify";// 到货通知
	
	private String name;// 配置名称
	private String description;// 描述
	private String subject;// 主题
	private String templatePath;// Freemarker模板文件路径

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTemplatePath() {
		return templatePath;
	}

	public void setTemplatePath(String templatePath) {
		this.templatePath = templatePath;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

}