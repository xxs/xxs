<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>${goods.name}<#if setting.isShowPoweredInfo> - XXS</#if></title>
<meta name="Author" content="XXS-DW" />
<meta name="Copyright" content="XXS" />
<#if (goods.metaKeywords)! != ""><meta name="keywords" content="${goods.metaKeywords}" /></#if>
<#if (goods.metaDescription)! != ""><meta name="description" content="${goods.metaDescription}" /></#if>
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link href="${base}/template/common/css/jquery.zoomimage.css" rel="stylesheet" type="text/css" />
<link href="${base}/template/shop/css/base.css" rel="stylesheet" type="text/css" />
<link href="${base}/template/shop/css/shop.css" rel="stylesheet" type="text/css" />
<!--[if lte IE 6]>
	<script type="text/javascript" src="${base}/template/common/js/belatedPNG.js"></script>
	<script type="text/javascript">
		DD_belatedPNG.fix(".belatedPNG");
	</script>
<![endif]-->
<#include "/WEB-INF/template/shop/head.ftl">
</head>
<body id="goodsContent" class="goodsContent">
	<#include "/WEB-INF/template/shop/header.ftl">
	<!-- START small_banner -->
      <section class="small_banner">
         <div class="center-wrap">
            <p class="page-banner-heading">会员中心首页</p>
            <p class="page-banner-description">This area is super easy to customize. It can include a search bar, custom text or absolutely nothing at all.</p>
            
            <div class="breadcrumbs">
            
            <a href="${base}/" class="shop"><span class="icon">&nbsp;</span>首页</a> &gt;
						<#list pathList as path>
							<a href="${base}${path.url}">${path.name}</a> &gt;
						</#list>
            </div>
            <!-- END breadcrumbs -->
         </div>
         <!-- END center-wrap -->
         
         <div class="shadow top"></div>
         <div class="shadow bottom"></div>
         <div class="tt-overlay"></div>
      </section>
      
	<section id="content-container" class="clearfix">
         <div id="main-wrap" class="clearfix">
            <aside class="subnav_cont sidebar">
               <div class="subnav">
                  <ul>
                     <@goods_list type="hot" count=10; goodsList>
									<#if (goodsList?size > 0)>
										<#list goodsList as goods>
											<li><a href="${base}${goods.htmlPath}"><span>${substring(goods.name, 24, "...")}   &rarr;   点击卖卡</span></a></li>		
										</#list>
									</#if>
								</@goods_list>
                  </ul>
               </div>
               <!-- END subnav -->
            </aside>
            <div class="page_content_right sub-content">
               <h4>${substring(goods.name, 50, "...")} <a href="/shop/order!saveCard.action?productId=${goods.id}">点击提交</a> </h4>
               <p>商品编号: ${goods.goodsSn}</p>
               <div class="hr hr-dotted-double">&nbsp;</div>
            <div class="page_content_right sub-content">
                 <!-- START tabs_type_2 --> 
		         <dl class="tabs_type_2">
		            <dt class="current">单张支付</dt>
		            <dd class="current">
		            <form method="post" action="">
		            	<input type="text" name="" value="" />
		            	<input type="text" name="" value="" />
		            	<input type="text" name="" value="" />
		               <p>
		               <#if goods.isSpecificationEnabled>
						<#assign specificationValueSet = goods.specificationValueSet>
			               <#list goods.specificationSet as specification>
									<#if specification.specificationType == "text">
										${specification.name}:
													<#list specification.specificationValueList as specificationValue>
														<#if specificationValueSet.contains(specificationValue)>
															<input type="radio" name="1"/>${specificationValue.name}
														</#if>
													</#list>
									</#if>
								</#list>
						</#if>
		               	</p>
		               	<p>
		               		支付通道：
		               		   <@paymentDiscount_list brandId="${goods.brand.id}"; paymentDiscountList>
								<#list paymentDiscountList as paymentDiscount>
									<input type="radio" name="paymentConfig.id" value="${paymentDiscount.paymentConfig.id}"/>通道${paymentDiscount_index+1} (折扣率：${paymentDiscount.discount})
								</#list>
							   </@paymentDiscount_list>
		               	</p>
		               <p>账号：<input type="text" name="cardNum"/></p>
		               <p>密码：<input type="text" name="cardPwd"/></p>
		               <p>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" class="small green button" target="_self"> 确认提交 </a> <input type="submit" value="提交" />
		               <a href="#" class="small white button" target="_self"> 重新填写 </a>	
		               </p>
		               </form>
		            </dd>
		            
		            
		            <dt>多张同面额</dt>
		            <dd>
		            		               <p>
		               <#list goods.specificationSet as specification>
								<#if specification.specificationType == "text">
									${specification.name}:
												<#list specification.specificationValueList as specificationValue>
															<input type="radio" name="1"/>${specificationValue.name}
															<#if (specificationValue_index+1)%5 == 0>
																<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															</#if>
												</#list>
								</#if>
							</#list>
		               	</p>
		               	<p>
		               		支付通道：
		               		   <@paymentDiscount_list brandId="${goods.brand.id}"; paymentDiscountList>
								<#list paymentDiscountList as paymentDiscount>
									<input type="radio" name="2"/>通道${paymentDiscount_index+1} (折扣率：${paymentDiscount.discount})
								</#list>
							   </@paymentDiscount_list>
		               	</p>
		               <p>每行卡信息支持格式为：“卡号,密码,金额” 或者 “卡号 密码 金额”</p>
		               <p>例如：11925110103023132,111387516814561221 或者 11925110103023132 111387516814561221</p>
		               <p><textarea name="comments" cols="40" rows="3" id="comments"></textarea></p>
		               <p>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" class="small green button" target="_self"> 确认提交 </a>
		               <a href="#" class="small white button" target="_self"> 重新填写 </a>	
		               </p>
		            </dd>
		            
		            <dt>多张不同面额</dt>
		            <dd>
		            		               <p>
		               <#list goods.specificationSet as specification>
								<#if specification.specificationType == "text">
									${specification.name}:
												<#list specification.specificationValueList as specificationValue>
															<input type="radio" name="1"/>${specificationValue.name}
															<#if (specificationValue_index+1)%5 == 0>
																<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															</#if>
												</#list>
								</#if>
							</#list>
		               	</p>
		               	<p>
		               		支付通道：
		               		   <@paymentDiscount_list brandId="${goods.brand.id}"; paymentDiscountList>
								<#list paymentDiscountList as paymentDiscount>
									<input type="radio" name="2"/>通道${paymentDiscount_index+1} (折扣率：${paymentDiscount.discount})
								</#list>
							   </@paymentDiscount_list>
		               	</p>
		               <p>每行卡信息支持格式为：“卡号,密码,金额” 或者 “卡号 密码 金额”</p>
		               <p>例如：11925110103023132,111387516814561221,10 或者 11925110103023132 111387516814561221 10</p>
		               <p><textarea name="comments" cols="40" rows="3" id="comments"></textarea></p>
		               <p>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" class="small green button" target="_self"> 确认提交 </a>
		               <a href="#" class="small white button" target="_self"> 重新填写 </a>	
		               </p>
		            </dd>
		            
		         </dl>
		         <!-- END tabs_type_2 --> 
            </div>
            <!-- END of page_content-->
         </div>
         <!-- END main-wrap -->
      </section>
      <!-- END content-container -->
	<#include "/WEB-INF/template/shop/footer.ftl">
	<script type="text/javascript" src="${base}/template/common/js/jquery.js"></script>
	<script type="text/javascript" src="${base}/template/common/js/jquery.tools.js"></script>
	<script type="text/javascript" src="${base}/template/common/js/jquery.zoomimage.js"></script>
	<script type="text/javascript" src="${base}/template/shop/js/base.js"></script>
	<script type="text/javascript" src="${base}/template/shop/js/shop.js"></script>
	
	
	 <script type="text/javascript" src="${base}/template/xxs/js/custom-main.js"></script>
      <script type="text/javascript" src="${base}/template/xxs/js/jquery.prettyPhoto.js"></script>
      <script type="text/javascript" src="${base}/template/xxs/js/jquery.cycle.all.min.js"></script>
      <script type="text/javascript" src="${base}/template/xxs/js/jquery.easing.1.3.js"></script>
</body>
</html>