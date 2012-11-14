<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>${(setting.shopName)!}<#if setting.isShowPoweredInfo> - 名臣福利</#if></title>
<meta name="Author" content="" />
<meta name="Copyright" content="" />
<#if (setting.metaKeywords)! != ""><meta name="keywords" content="${setting.metaKeywords}" /></#if>
<#if (setting.metaDescription)! != ""><meta name="description" content="${setting.metaDescription}" /></#if>


	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<link rel="stylesheet" href="${base}/template/card/css/style.css" />

	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<link rel="shortcut icon" href="${base}/template/card/images/favicon.ico" />
	<link rel="apple-touch-icon" href="${base}/template/card/images/apple-touch-icon.png" />
	<link rel="apple-touch-icon" sizes="72x72" href="${base}/template/card/images/apple-touch-icon-72x72.png" />
	<link rel="apple-touch-icon" sizes="114x114" href="${base}/template/card/images/apple-touch-icon-114x114.png" />
	
	<script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
	<script src="${base}/template/card/js/superfish.js"></script>
	<script src="${base}/template/card/js/jquery.flexslider.js"></script>
	<script src="${base}/template/card/js/jquery.tweet.js"></script>
	<script src="${base}/template/card/js/selectnav.js"></script>
	<script src="${base}/template/card/js/jquery.fancybox.js"></script>
	<script src="${base}/template/card/js/functions.js"></script>
	<script>
		$(document).ready(function() {
			$(".slider .flexslider").flexslider({
				animation: "slide"
			});
		});
	</script>
<!--[if lte IE 6]>
	<script type="text/javascript" src="${base}/template/common/js/belatedPNG.js"></script>
	<script type="text/javascript">
		// 解决IE6透明PNG图片BUG
		DD_belatedPNG.fix(".belatedPNG");
	</script>
<![endif]-->
</head>
<body class="index">
		<div class="main">
		<div class="container">
	<#include "/WEB-INF/template/shop/header.ftl">
						<div class="comments twelve columns row alpha">
						<div class="divider2"></div>
						<h4>留言列表</h4>
						
						
						
				<#list pager.result as leaveMessage>
				
				<div class="comment twelve columns alpha">
							<div class="pic two columns alpha">
								
							</div>
							<div class="text ten columns alpha omega">
								<div class="the_comment">
									<div class="user"><span>${(leaveMessage.username)!"游客"}</span> ${leaveMessage.createDate?string("yyyy-MM-dd HH: mm")}:</div>
									<p>${leaveMessage.content}</p>
								</div>
							</div>
							<#list leaveMessage.replyLeaveMessageSet as replyLeaveMessage>
							
							<div class="text ten columns alpha omega">
								<div class="the_comment">
									<div class="user"><span>管理员</span> ${replyLeaveMessage.createDate?string("yyyy-MM-dd HH: mm")}:</div>
									<p>${replyLeaveMessage.content}</p>
								</div>
							</div>
							</#list>
				</div>
				</#list>
				<#if (pager.result?size > 0)>
					<div class="blank"></div>
					<@pagination pager=pager baseUrl="/shop/leave_message.htm">
         				<#include "/WEB-INF/template/shop/pager.ftl">
         			</@pagination>
				<#else>
					<div class="comment twelve columns alpha">
							暂无留言！
						</div>
				</#if>
				
				<div class="blog_content twelve columns row">
					<div class="reply twelve columns alpha">
						<div class="divider2"></div>
						<h4>Leave a Reply</h4>
						<br />
						<form id="leaveMessageForm" method="post" action="${base}/shop/leave_message!ajaxSave.action">
							姓名:<br />
							<input type="text" id="name_field" name="leaveMessage.title" />
							
							联系方式:<br />
							<input type="text" id="email_field" name="email" />
							
							留言内容:<br />
							<textarea id="message_field" name="leaveMessage.content" rows="6"></textarea>
							
							验证码:<br />
								<input type="text" id="leaveMessageCaptcha" name="j_captcha" class="formText captcha" />
			                   	<img id="leaveMessageCaptchaImage" class="captchaImage" src="${base}/captcha.jpeg" alt="换一张" />
							
							<input type="submit" class="button green" value="提  交" />
						</form>
					</div>
				</div>
				
</body>
</html>