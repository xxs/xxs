<div class="wraper">
 <header class="header">
  <a class="logo" href="index.html">construct</a>
  <nav>
  <!-- top menu -->
   <ul>
      <@navigation_list position="middle"; navigationList>
		<#list navigationList as navigation>
			<li>
				<a  href="<@navigation.url?interpret />"
					<#if navigation.isBlankTarget> target="_blank"</#if>><b>${navigation.name}
				</a>
			</li>
		</#list>
	  </@navigation_list>
   </ul>
  <!-- /top menu -->
  </nav>
 </header>
</div> 
				