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
	<script type="text/javascript">
			$().ready(function() {
			
				var $loginForm = $("#loginForm");
				var $loginRedirectUrl = $("#loginRedirectUrl");
				var $memberUsername = $("#memberUsername");
				var $memberPassword = $("#memberPassword");
				var $captcha = $("#captcha");
				var $captchaImage = $("#captchaImage");
				var $submitButton = $("#submitButton");
				
				$loginRedirectUrl.val(getParameter("loginRedirectUrl"));
				
				// 刷新验证码图片
				$captchaImage.click( function() {
					$captchaImage.attr("src", xxs.base + "/captcha.jpeg?timestamp" + (new Date()).valueOf());
				});
			
				// 表单验证
				$loginForm.submit( function() {
					if ($.trim($memberUsername.val()) == "") {
						$.dialog({type: "warn", content: "请输入用户名!", modal: true, autoCloseTime: 3000});
						return false;
					}
					if ($.trim($memberPassword.val()) == "") {
						$.dialog({type: "warn", content: "请输入密码!", modal: true, autoCloseTime: 3000});
						return false;
					}
					if ($.trim($captcha.val()) == "") {
						$.dialog({type: "warn", content: "请输入验证码!", modal: true, autoCloseTime: 3000});
						return false;
					}
				});
				
				// 获取参数
				function getParameter(name) {
					var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)","i");
					var r = window.location.search.substr(1).match(reg);
					if (r != null) {
						return decodeURIComponent(r[2]);
					} else {
						return null;
					}
				}
			
			})
		</script>
</head>
<body>
	<#include "/WEB-INF/template/shop/header.ftl">
	<#include "/WEB-INF/template/shop/index_slider.ftl">
 <div class="wraper">
	 <!-- process -->
	  <div class="process">
	   <h4>关于名臣福利</h4>
	   <ul>
	    <li>
	     <h3><span>Case 1</span> 您的福利</h3>
	     <p>&nbsp;&nbsp;&nbsp;&nbsp;名臣福利致力于帮您把多余的手机充值卡通过在线支付系统变成现金。</p>
	    </li>
	    <li>
	     <h3><span>Case 2</span> 您的福利</h3>
	     <p>&nbsp;&nbsp;&nbsp;&nbsp;名臣福利会把收取的手续费的一部分捐助给公益事业从而实现更多人的福利。</p>
	    </li>
	    <li>
	     <h3><span>Case 3</span> 您的福利</h3>
	     <p>&nbsp;&nbsp;&nbsp;&nbsp;通过在线支付系统即时完成充值卡回购客服确认后即时给您打款。</p>
	    </li>
	    <li>
	     <h3><span>Case 4</span> 您的福利</h3>
	     <p>Lid est laborum et dolorum fugaste. Etras harum quidem rerum facilis est etras expedita distinctio. Namsir uns libero uns tempo re, cum soluta nobis est eligendi optio cumque nihil impit qd amets untra dolor amet sadipet.</p>
	    </li>
	   </ul>
	  </div>
	  <!-- /process --> 
 
	<!-- services option -->
  <div class="features2_block services_option">
   <h4>Services Option #1</h4>
   <div id="h_tabs" class="c_after">
   <ul class="tab_select left_list">
    <li class="design">
     <a class="tlink" href="#htab-1">&nbsp;</a>
     <a class="circle_link">&nbsp;</a>
     <h4>Great Design</h4>
     <p><span>Subhead Goes HEre</span></p>
    </li>
    <li class="flexible">
     <a class="tlink" href="#htab-2">&nbsp;</a>
     <a class="circle_link">&nbsp;</a>
     <h4>Very Flexible</h4>
     <p><span>Subhead Goes HEre</span></p>
    </li>
    <li class="fonts">
     <a class="tlink" href="#htab-3">&nbsp;</a>
     <a class="circle_link">&nbsp;</a>
     <h4>500+ Fonts</h4>
     <p><span>Subhead Goes HEre</span></p>
    </li>
    <li class="ultra">
     <a class="tlink" href="#htab-4">&nbsp;</a>
     <a class="circle_link">&nbsp;</a>
     <h4>Ultra Responsive</h4>
     <p><span>Subhead Goes HEre</span></p>
    </li>
    <li class="support">
     <a class="tlink" href="#htab-5">&nbsp;</a>
     <a class="circle_link">&nbsp;</a>
     <h4>Superb Support</h4>
     <p><span>Subhead Goes HEre</span></p>
    </li>
    <li class="easy">
     <a class="tlink" href="#htab-6">&nbsp;</a>
     <a class="circle_link">&nbsp;</a>
     <h4>Easy To Customize</h4>
     <p><span>Subhead Goes HEre</span></p>
    </li>
    <li class="color">
     <a class="tlink" href="#htab-7">&nbsp;</a>
     <a class="circle_link">&nbsp;</a>
     <h4>Choose Your Color</h4>
     <p><span>Subhead Goes HEre</span></p>
    </li>
    <li class="updates">
     <a class="tlink" href="#htab-8">&nbsp;</a>
     <a class="circle_link">&nbsp;</a>
     <h4>Constant Updates</h4>
     <p><span>Subhead Goes HEre</span></p>
    </li>
   </ul>
   <div id="htab-1" class="right_desc">
    <p><em><strong>Lid est laborum dolores rumes fugats untras. Etras sit harums sertes quidem sit sadips atemsi accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae. sadips uns.</strong></em></p>
    <p>Ciatis unde omnis iste natus error sit voluptatese accusantium doloremque sitsers lauda ntium sit totam rem aperiam, eaque ipsa quae ab illo inventoreres veritatis etras quasi set architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam volupt atemas voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni </p>
    <p class="bwWrapper"><img src="images/services_process/services_8.png" width="202" height="120" alt="" /></p>
    <ul>
     <li>Cras rutrum leo at odio volutpat ids.</li>
     <li>Donec fermentum porttitor nuncs.</li>
     <li>Maecenas quis nisi in tortor luctus.</li>
     <li>Aenean faucibus sapien odio varius. </li>
    </ul>
   </div>
   <div id="htab-2" class="right_desc">
    <p><em><strong>Very Flexible Lid est laborum dolores rumes fugats untras. Etras sit harums sertes quidem sit sadips atemsi accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae. sadips uns.</strong></em></p>
    <p>Ciatis unde omnis iste natus error sit voluptatese accusantium doloremque sitsers lauda ntium sit totam rem aperiam, eaque ipsa quae ab illo inventoreres veritatis etras quasi set architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam volupt atemas voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni </p>
    <p class="bwWrapper"><img src="images/services_process/services_9.png" width="202" height="120" alt="" /></p>
    <ul>
     <li>Cras rutrum leo at odio volutpat ids.</li>
     <li>Donec fermentum porttitor nuncs.</li>
     <li>Maecenas quis nisi in tortor luctus.</li>
     <li>Aenean faucibus sapien odio varius. </li>
    </ul>
   </div>
   <div id="htab-3" class="right_desc">
    <p><em><strong>500+ Fonts Lid est laborum dolores rumes fugats untras. Etras sit harums sertes quidem sit sadips atemsi accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae. sadips uns.</strong></em></p>
    <p>Ciatis unde omnis iste natus error sit voluptatese accusantium doloremque sitsers lauda ntium sit totam rem aperiam, eaque ipsa quae ab illo inventoreres veritatis etras quasi set architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam volupt atemas voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni </p>
    <p class="bwWrapper"><img src="images/services_process/services_10.png" width="202" height="120" alt="" /></p>
    <ul>
     <li>Cras rutrum leo at odio volutpat ids.</li>
     <li>Donec fermentum porttitor nuncs.</li>
     <li>Maecenas quis nisi in tortor luctus.</li>
     <li>Aenean faucibus sapien odio varius. </li>
    </ul>
   </div>
   <div id="htab-4" class="right_desc">
    <p><em><strong>Ultra Responsive Very Flexible Lid est laborum dolores rumes fugats untras. Etras sit harums sertes quidem sit sadips atemsi accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae. sadips uns.</strong></em></p>
    <p>Ciatis unde omnis iste natus error sit voluptatese accusantium doloremque sitsers lauda ntium sit totam rem aperiam, eaque ipsa quae ab illo inventoreres veritatis etras quasi set architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam volupt atemas voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni </p>
    <p class="bwWrapper"><img src="images/services_process/services_11.png" width="202" height="120" alt="" /></p>
    <ul>
     <li>Cras rutrum leo at odio volutpat ids.</li>
     <li>Donec fermentum porttitor nuncs.</li>
     <li>Maecenas quis nisi in tortor luctus.</li>
     <li>Aenean faucibus sapien odio varius. </li>
    </ul>
   </div>
   <div id="htab-5" class="right_desc">
    <p><em><strong>Superb Support Very Flexible Lid est laborum dolores rumes fugats untras. Etras sit harums sertes quidem sit sadips atemsi accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae. sadips uns.</strong></em></p>
    <p>Ciatis unde omnis iste natus error sit voluptatese accusantium doloremque sitsers lauda ntium sit totam rem aperiam, eaque ipsa quae ab illo inventoreres veritatis etras quasi set architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam volupt atemas voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni </p>
    <p class="bwWrapper"><img src="images/services_process/services_12.png" width="202" height="120" alt="" /></p>
    <ul>
     <li>Cras rutrum leo at odio volutpat ids.</li>
     <li>Donec fermentum porttitor nuncs.</li>
     <li>Maecenas quis nisi in tortor luctus.</li>
     <li>Aenean faucibus sapien odio varius. </li>
    </ul>
   </div>
   <div id="htab-6" class="right_desc">
    <p><em><strong>Easy To Customize Very Flexible Lid est laborum dolores rumes fugats untras. Etras sit harums sertes quidem sit sadips atemsi accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae. sadips uns.</strong></em></p>
    <p>Ciatis unde omnis iste natus error sit voluptatese accusantium doloremque sitsers lauda ntium sit totam rem aperiam, eaque ipsa quae ab illo inventoreres veritatis etras quasi set architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam volupt atemas voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni </p>
    <p class="bwWrapper"><img src="images/services_process/services_13.png" width="202" height="120" alt="" /></p>
    <ul>
     <li>Cras rutrum leo at odio volutpat ids.</li>
     <li>Donec fermentum porttitor nuncs.</li>
     <li>Maecenas quis nisi in tortor luctus.</li>
     <li>Aenean faucibus sapien odio varius. </li>
    </ul>
   </div>
   <div id="htab-7" class="right_desc">
    <p><em><strong>Choose Your Color Very Flexible Lid est laborum dolores rumes fugats untras. Etras sit harums sertes quidem sit sadips atemsi accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae. sadips uns.</strong></em></p>
    <p>Ciatis unde omnis iste natus error sit voluptatese accusantium doloremque sitsers lauda ntium sit totam rem aperiam, eaque ipsa quae ab illo inventoreres veritatis etras quasi set architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam volupt atemas voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni </p>
    <p class="bwWrapper"><img src="images/services_process/services_14.png" width="202" height="120" alt="" /></p>
    <ul>
     <li>Cras rutrum leo at odio volutpat ids.</li>
     <li>Donec fermentum porttitor nuncs.</li>
     <li>Maecenas quis nisi in tortor luctus.</li>
     <li>Aenean faucibus sapien odio varius. </li>
    </ul>
   </div>
   <div id="htab-8" class="right_desc">
    <p><em><strong>Constant Updates Very Flexible Lid est laborum dolores rumes fugats untras. Etras sit harums sertes quidem sit sadips atemsi accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae. sadips uns.</strong></em></p>
    <p>Ciatis unde omnis iste natus error sit voluptatese accusantium doloremque sitsers lauda ntium sit totam rem aperiam, eaque ipsa quae ab illo inventoreres veritatis etras quasi set architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam volupt atemas voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni </p>
    <p class="bwWrapper"><img src="images/services_process/services_15.png" width="202" height="120" alt="" /></p>
    <ul>
     <li>Cras rutrum leo at odio volutpat ids.</li>
     <li>Donec fermentum porttitor nuncs.</li>
     <li>Maecenas quis nisi in tortor luctus.</li>
     <li>Aenean faucibus sapien odio varius. </li>
    </ul>
   </div>
   </div>
  </div>
  <!-- /services option -->
  
    <!-- why choose -->
  <div class="why_choose">
   <h4>Why Choose Construct?  We’ll Tell You!</h4>
   <ul>
    <li>Cras rutrum leo at odio volutpat id blandit fugiats ipsum ornare.</li>
    <li>Donec fermentum porttitor nunc, sit amet gravida est porttitor vel.</li>
    <li>Maecenas quis nisi i luctus adipiscing sed vehicula tellus amet dolore.</li>
    <li>Aenean faucibus sapien a odio varius aliquet voluptas sadips..</li>
    <li>Suspendisse venenatis euismod ve vestibulum volutpat nibh imperdiets.</li>
    <li>Quisque non leo molestie augue imperdiet sollicitudin eu nec urna.</li>
    <li>Donec pulvinar lectus quis felis laoreet vestibulum.</li>
   </ul>
  </div>
  <!-- /why choose -->
    <!-- features2_block -->
  <div class="features2_block features3_block">
   <ul>
    <li >
     <a class="circle_link" href="#">&nbsp;</a>
     <h4>Great Design</h4>
     <p><span>Subhead Goes HEre</span></p>
     <p>Lid est laborum dolos rumes fustsirs sit untras. Et harums ser quidem sit rerums facilis est dolores uni nemis sad untras voluptas uners sits amets.  </p>
    </li>
    <li >
     <a class="circle_link" href="#">&nbsp;</a>
     <h4>Very Flexible</h4>
     <p><span>Subhead Goes HEre</span></p>
     <p>Lid est laborum dolos rumes fustsirs sit untras. Et harums ser quidem sit rerums facilis est dolores uni nemis sad untras voluptas uners sits amets.  </p>
    </li>
    <li >
     <a class="circle_link" href="#">&nbsp;</a>
     <h4>Superb Support</h4>
     <p><span>Subhead Goes HEre</span></p>
     <p>Lid est laborum dolos rumes fustsirs sit untras. Et harums ser quidem sit rerums facilis est dolores uni nemis sad untras voluptas uners sits amets.  </p>
    </li>
    <li >
     <a class="circle_link" href="#">&nbsp;</a>
     <h4>Easy To Customize</h4>
     <p><span>Subhead Goes HEre</span></p>
     <p>Lid est laborum dolos rumes fustsirs sit untras. Et harums ser quidem sit rerums facilis est dolores uni nemis sad untras voluptas uners sits amets.  </p>
    </li>
   </ul>
  </div>
  <!-- /features2_block -->
 </div>
	<#include "/WEB-INF/template/shop/footer.ftl">		
</body>
</html>