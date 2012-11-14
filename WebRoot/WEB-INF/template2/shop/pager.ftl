<#if (pageCount > 1)>
	<div class="pagination sixteen columns row alpha">
		<a class="next">共 ${pageCount} 页</a>
		<#if (pageNumber > 1)>
				<a class="text" href="${base}${firstPageUrl}">首页</a>
		<#else>
			<li class="firstPage">
				<a class="next">首页</a>
			</li>
		</#if>
		<#if (pageNumber > 1)>
				<a class="next" href="${base}${prePageUrl}">上页</a>
		<#else>
				<a class="next">上页</a>
		</#if>
		
		<#list (pageItem?keys)! as key>
			<#if (key_index == 0 && key?number > 1)>
				<a class="next">...</a>
			</#if>
			<#if pageNumber != key?number>
					<a href="${base}${pageItem[key]}">${key}</a>
			<#else>
					<a>${key}</a>
			</#if>
			<#if (!key_has_next && key?number < pageCount)>
				<a >...</a>
			</#if>
		</#list>
		
		<#if (pageNumber < pageCount)>
				<a class="next" href="${base}${nextPageUrl}">下页</a>
		<#else>
			<a class="next">下页</a>
		</#if>
		
		<#if (pageNumber < pageCount)>
				<a class="next" href="${base}${lastPageUrl}">末页</a>
		<#else>
			<a class="next">末页</a>
		</#if>
	</div>
</#if>
