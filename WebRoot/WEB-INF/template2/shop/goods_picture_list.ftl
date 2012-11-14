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
 <div class="wraper">
   <!-- left_nav -->
  <div class="left_nav">
	<div id="tabs" class="c_after">
     <ul class="tab_select">
     
           <@goods_category_tree; goodsCategoryTree>
	           <#list goodsCategoryTree as firstGoodsCategory>
	            		<li>
							<a href="${base}${firstGoodsCategory.url}">${firstGoodsCategory.name}</a>
						</li>
	            </#list>
	     </@goods_category_tree>
     </ul>
     <div  id="">
      	<p class="wp_img"><img src="images/wp.png" alt="" /><span>Nemo enim ipsam volup tatem quia voluptas sitser. Neque porro quisquamer qui dolorem ipsum quia numquam eius modisert dolore magnam. </span></p>
	      <p>Lid est laborum et dolorum fugaerts. Etras harum quidem rerum facilis est etras expedita disnictio. Namsir uns  libero uns tempo re, cum soluta nobis est eligendi optio cumque nihil ims duod amets untra dolor amet sadipet. Fugiat dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermes ntum mas justo sitters amet risus. Cras mattis cosi sectetut amet fermens tum aecer nas faucib  Sed ut perspiciatis unde omnis iste natus error siters voluptatem accusantium dolorem que laudantium, totam remterip aperiam, eaque ipsa quae ab illo inventore veritatis etra quasi arch itecto beatae vitae dicta sunt explicabo. Nemo enim ipsam volu ptatem quia voluptas sit aspernatur aut odit aut fugit, sed quiaster consequuntur magni dolores eos qui ra volupt atem sequi nesciunt. Neque porro quisquam est, quis.</p>
	      <ul>
	       <li>Cras rutrum leo at odio volutpat id blandit fugiats ipsum ornare.</li>
	       <li>Donec fermentum porttitor nunc, sit amet gravida est porttitor vel.</li>
	       <li>Maecenas quis nisi in tortor luctus adipiscing sed vehicula tellus amet dolore.</li>
	       <li>Aenean faucibus sapien a odio varius aliquet voluptas sadips.</li>
	       <li>Suspendisse venenatis euismod ve vestibulum volutpat nibh imperdiets.</li>
	      </ul>
	     <p><a class="learn_more btn_m" href="#">Learn More</a></p>
     </div>
    </div>
  </div>
  <!-- /left_nav -->
</div>
<!-- END wrapper -->
	<#include "/WEB-INF/template/shop/footer.ftl">		
</body>
</html>