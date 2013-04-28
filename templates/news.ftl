<#include "header.ftl">
	<#include "menu.ftl">

	<hr>

      <div class="row-fluid marketing">
        <div class="span9">
          <h4>News</h4>
          <ul>
          	<#list posts as post>
          		<#if (post.status == "published") && (post.category??) && (post.category == "news")>
          			<p><a href="${post.uri}">${post.title}</a></p>
          		</#if>
          	</#list>
          </ul>
        </div>        
      </div>

      <hr>

<#include "footer.ftl">