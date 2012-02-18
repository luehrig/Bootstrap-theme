<ul class="breadcrumb">
	<li>{$lblYouAreHere|ucfirst}:</li>
	{iteration:breadcrumb}
	<li>
		{option:breadcrumb.url}<a href="{$breadcrumb.url}" title="{$breadcrumb.title}">{/option:breadcrumb.url}{$breadcrumb.title}{option:breadcrumb.url}</a>{/option:breadcrumb.url}
		{option:!breadcrumb.last} › {/option:!breadcrumb.last}
	</li>
	{/iteration:breadcrumb}
</ul>