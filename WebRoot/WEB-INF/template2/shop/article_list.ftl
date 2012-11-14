<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>${(setting.shopName)!}<#if setting.isShowPoweredInfo> - 名臣福利</#if></title>
	<meta name="description" content="" />
	<meta name="author" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<#if (setting.metaKeywords)! != ""><meta name="keywords" content="${setting.metaKeywords}" /></#if>
	<#if (setting.metaDescription)! != ""><meta name="description" content="${setting.metaDescription}" /></#if>
	<#include "/WEB-INF/template/shop/head.ftl">
</head>
<body>
	<#include "/WEB-INF/template/shop/header.ftl">
	<#include "/WEB-INF/template/shop/faq.ftl">
	<#include "/WEB-INF/template/shop/footer.ftl">
</body>
</html>