<script src="${base}/template/xxs/js/jquery.simpleFAQ-0.7.min.js"></script> 
<script>
$(function(){
	$('#faq').simpleFAQ();
});
</script>
<div class="content_block">
 <!-- top_title -->
 <div class="top_title">
  <div class="wraper">
   <h2>FAQ<span>We collected the most frequently asked questions below, enjoy!!</span></h2>
   <ul>
    <li><a href="#">Home</a></li>
    <li><a href="#">Pages</a></li>
    <li>FAQ</li>
   </ul>
  </div>
 </div>
 <!-- /top_title -->
 <div class="wraper">
 <!-- /faq_list -->
 <div class="faq_list">
  <ul class="filter">
  		<@article_list article_category_id=articleCategory.id type="recommend" count=10; articleList>
				<#list articleList as article>
					<li><a href="${base}${article.htmlPath}" title="${article.title}">${substring(article.title, 10, "...")}</a>
								</li>
				</#list>
		</@article_list>
  </ul>
  <ul id="faq">
  
  <#list pager.result as article>
	<li class="all business">
	    <p class="question">${substring(article.title, 100, "...")}</p>
		<div class="answer">
		     <p>${substring(article.contentText, 100, "...")}</p>
		     <p>作者: <#if article.author == "">未知<#else>${article.author}</#if>, <span><a href="${base}${article.htmlPath}">[阅读全文]</a></span></p>
		</div>
   </li>					
   </#list>
  </ul>
 </div>
 <!-- /faq_list -->
 </div>
</div>
